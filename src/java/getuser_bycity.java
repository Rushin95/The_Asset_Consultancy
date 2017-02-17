/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.AgentDetail;
import model.CustomerDetail;
import model.Login;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import util.NewHibernateUtil;

/**
 *
 * @author rushin
 */
public class getuser_bycity extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {

            SessionFactory sf = NewHibernateUtil.getSessionFactory();
            Session ss = sf.openSession();
            Transaction tr = ss.beginTransaction();

            String city = "";

            HttpSession hs = request.getSession();
            Login ln = (Login) hs.getAttribute("user");

            System.out.println(ln.getUName()+"is a "+ln.getURole());
            
            switch (ln.getURole()) {
                case "agent":
                    Criteria cr = ss.createCriteria(AgentDetail.class);
                    cr.add(Restrictions.eq("uId", ln));
//                   / cr.add(Restrictions.ne(city, ln))
                    ArrayList<AgentDetail> ad = (ArrayList<AgentDetail>)cr.list();
                    city = ad.get(0).getACity();
                    break;

                case "customer":
                    Criteria cr1 = ss.createCriteria(CustomerDetail.class);
                    cr1.add(Restrictions.eq("uId", ln));
                    ArrayList<CustomerDetail> cd = (ArrayList<CustomerDetail>)cr1.list();
                    city = cd.get(0).getCCity();
                    break;

                default:
                    System.out.println("No city");

            }

            System.out.println(city+ " is the city");
            
            Criteria cr = ss.createCriteria(AgentDetail.class);
            cr.add(Restrictions.eq("aCity", city));
            cr.add(Restrictions.ne("uId", ln));
            ArrayList<AgentDetail> adl = (ArrayList< AgentDetail>) cr.list();

            System.out.println("the size of agent aray is "+adl.size());
            
            Criteria cr1 = ss.createCriteria(CustomerDetail.class);
             cr1.add(Restrictions.ne("uId", ln));
            cr1.add(Restrictions.eq("cCity", city));
                    
 
            ArrayList<CustomerDetail> cdl = (ArrayList< CustomerDetail>) cr1.list();
            
            System.out.println("the size of cust aray is "+cdl.size());
            
            
            
            if (!adl.isEmpty() && !cdl.isEmpty()) {
                request.setAttribute("adl", adl);
                request.setAttribute("cdl", cdl);
                RequestDispatcher rd = request.getRequestDispatcher("creategroup.jsp");
                rd.forward(request, response);
            }
            else if(!adl.isEmpty())
            {
                 request.setAttribute("adl", adl);
                 RequestDispatcher rd = request.getRequestDispatcher("creategroup.jsp");
                rd.forward(request, response);
            }
            else if(!cdl.isEmpty())
            {
                 request.setAttribute("cdl", cdl);
                 RequestDispatcher rd = request.getRequestDispatcher("creategroup.jsp");
                rd.forward(request, response);
            }
            else
            {
                String msg="Sorry, there are no users from your city.";
                request.setAttribute("msg", msg);
                RequestDispatcher rd = request.getRequestDispatcher("creategroup.jsp");
                rd.forward(request, response);
            }
                

        } catch (HibernateException e) {
            out.print(e.getMessage());
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
