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
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.AgentDetail;
import model.AgentFeedback;
import model.Login;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Dell
 */
@WebServlet(urlPatterns = {"/ViewAgentFeedback"})
public class ViewAgentFeedback extends HttpServlet {

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
        HttpSession hs = request.getSession();
        try {
            Login ln = (Login) hs.getAttribute("user");
            System.out.println("uid is -------" + ln);

            SessionFactory sf = util.NewHibernateUtil.getSessionFactory();
            Session ss = sf.openSession();

            Criteria cr1 = ss.createCriteria(AgentDetail.class);
            cr1.add(Restrictions.eq("uId", ln));
            ArrayList<AgentDetail> adl = (ArrayList<AgentDetail>) cr1.list();

            if (!adl.isEmpty()) {
                AgentDetail ad = adl.get(0);
                System.out.print("adl not empty and the aid is :"+ad.getAId());
                
                Criteria cr = ss.createCriteria(AgentFeedback.class);
                cr.add(Restrictions.eq("aId", ad));
                ArrayList<AgentFeedback> afL = (ArrayList<AgentFeedback>) cr.list();

                if (!afL.isEmpty()) {

                    // HttpSession hs1=request.getSession();
                    System.out.println("adl size:"+adl.size() +"afl size:"+ afL.size());
                    System.out.println("inside the servlet else");
                    System.out.println("inside the servlet else11");

                    request.setAttribute("afL", afL);
                    System.out.println("inside the servlet else222");

                }
            }
            RequestDispatcher rd = request.getRequestDispatcher("myfeedback_sample.jsp");
            System.out.println("forwarding");
            rd.forward(request, response);

        } catch (HibernateException e) {
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
