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
import model.Login;
import model.PropDetail;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author rushin
 */
public class GetAgentDetailServ extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            SessionFactory sf = util.NewHibernateUtil.getSessionFactory();
            Session ss = sf.openSession();
   
            
            int aid = Integer.parseInt(request.getParameter("aid"));
            
            Criteria cr = ss.createCriteria(AgentDetail.class);
            cr.add(Restrictions.eq("aId", aid));
            AgentDetail ad = (AgentDetail)cr.uniqueResult();
            
            Criteria cr1 = ss.createCriteria(AgentFeedback.class);
            cr1.add(Restrictions.eq("aId", ad));
            ArrayList<AgentFeedback> afl = (ArrayList<AgentFeedback>) cr1.list();
            
            request.setAttribute("ad", ad);
            
            if(!afl.isEmpty())
                    {
            request.setAttribute("afl", afl);
                    }
            
            
            
            System.out.println("the aid is "+ad.getAId());
            System.out.println("the uid is "+ad.getUId().getUId());
                    
            Criteria cr2=ss.createCriteria(PropDetail.class);
            cr2.add(Restrictions.eq("uId",ad.getUId()));
            ArrayList<PropDetail> pdl = (ArrayList<PropDetail>) cr2.list();
            
            
            if(!pdl.isEmpty())
            {
            request.setAttribute("pdl", pdl);
            }
            System.out.println("the size of proplist is "+pdl.size());
            
            RequestDispatcher rd = request.getRequestDispatcher("agentdescription.jsp");
            rd.forward(request, response);
            
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
