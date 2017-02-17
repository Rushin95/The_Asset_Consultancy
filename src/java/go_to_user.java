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
import model.AgentDetail;
import model.AgentFeedback;
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
public class go_to_user extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        try {

            String id = request.getParameter("id");

            SessionFactory sf = NewHibernateUtil.getSessionFactory();
            Session ss = sf.openSession();
            Transaction tr = ss.beginTransaction();

            Login l = (Login) ss.get(Login.class, Integer.parseInt(id));
            System.out.println("uid is "+l.getUId());

            switch (l.getURole()) {
                case "customer": {
                    Criteria cr = ss.createCriteria(CustomerDetail.class);
                    cr.add(Restrictions.eq("uId", l));
                    CustomerDetail cd = (CustomerDetail) cr.uniqueResult();
                    
                    request.setAttribute("fname", cd.getCFname());
                    request.setAttribute("lname", cd.getCLname());
                    
                    request.setAttribute("email", cd.getCEmail());
                    request.setAttribute("mobile", cd.getCNum());

                    RequestDispatcher rd = request.getRequestDispatcher("contact_customer.jsp");
                    rd.forward(request, response);

                    break;
                }

                
                
                case "agent": {

                    Criteria cr = ss.createCriteria(AgentDetail.class);
                    cr.add(Restrictions.eq("uId", l));
                    AgentDetail ad = (AgentDetail) cr.uniqueResult();

                    Criteria cr1 = ss.createCriteria(AgentFeedback.class);
                    cr1.add(Restrictions.eq("aId", ad));
                    ArrayList<AgentFeedback> afl = (ArrayList<AgentFeedback>) cr1.list();

                    request.setAttribute("ad", ad);

                    if (!afl.isEmpty()) {
                        request.setAttribute("afl", afl);
                    }
                    RequestDispatcher rd = request.getRequestDispatcher("agentdescription.jsp");
                    rd.forward(request, response);

                    break;
                }
            }

        }
        
        
        catch (HibernateException he) {
            System.out.println(he.getMessage());
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
