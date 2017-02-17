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
import model.AgentFeedback;
import model.PropDetail;
import model.PropFeedback;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author rushin
 */
public class fetch_propfeedback extends HttpServlet {

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
        HttpSession hs=request.getSession();
        try {
          
           PropDetail pd=(PropDetail)hs.getAttribute("propobj"); 
            
            SessionFactory sf = util.NewHibernateUtil.getSessionFactory();
            Session ss = sf.openSession();

            
            
            Criteria cr1 = ss.createCriteria(PropFeedback.class);
            cr1.add(Restrictions.eq("pId", pd));
            ArrayList<PropFeedback> pfl = (ArrayList<PropFeedback>) cr1.list();

            
                if (!pfl.isEmpty()) {

                    // HttpSession hs1=request.getSession();
                    System.out.println(pfl.size());
                    System.out.println("inside the servlet else");
                    System.out.println("inside the servlet else11");

                    hs.setAttribute("pfl", pfl);
                    System.out.println("inside the servlet else222");

                }
                
                else
                {
                    System.out.println("no property feedback found");;
                }
            
            RequestDispatcher rd = request.getRequestDispatcher("single.jsp");
            System.out.println("forwarding");
            rd.forward(request, response);

            
            
            
        }
        catch(HibernateException e)
        {
            out.println(e.getMessage());
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
