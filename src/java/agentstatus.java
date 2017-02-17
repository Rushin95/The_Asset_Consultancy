/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.AgentDetail;
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
public class agentstatus extends HttpServlet {

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
            SessionFactory sf=NewHibernateUtil.getSessionFactory();
            Session ss=sf.openSession();
            Transaction tr=ss.beginTransaction();
           
            int id=Integer.parseInt(request.getParameter("id"));
            
            int agentid=Integer.parseInt(request.getParameter("aid"));
            
            // Touroperator to = (Touroperator)se.get(Touroperator.class, spid);
             
             AgentDetail ad=(AgentDetail)ss.get(AgentDetail.class, agentid);
            
                    if(id==0)
            {
                //Accepted
                out.print(agentid+"accepted");
                AgentDetail ad2=new AgentDetail();
                ad2.setAAddress1(ad.getAAddress1());
                ad2.setAAddress2(ad.getAAddress2());
                ad2.setAArea(ad.getAArea());
                ad2.setACity(ad.getACity());
                ad2.setACompanyname(ad.getACompanyname());
                ad2.setADescription(ad.getADescription());
                ad2.setAEmail(ad.getAEmail());
                ad2.setAFname(ad.getAFname());
                ad2.setALname(ad.getALname());
                ad2.setAId(ad.getAId());
                ad2.setAImg(ad.getAImg());
                ad2.setANo(ad.getANo());
                ad2.setARating(ad.getARating());
                ad2.setAState(ad.getAState());
                ad2.setUId(ad.getUId());
                ad2.setAWorkx(ad.getAWorkx());
                ad2.setAStatus("Accepted");
                
                ss.evict(ad);
                ss.update(ad2);
                tr.commit();
                
            }
            else if(id==1)
            {
                //Denied
                out.print(agentid+"denied");
                ss.delete(ad);
                tr.commit();
                
            }
            
        
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
