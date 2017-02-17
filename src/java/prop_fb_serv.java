/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
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
import model.PropDetail;
import model.PropFeedback;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import util.NewHibernateUtil;

/**
 *
 * @author rushin
 */
@WebServlet(urlPatterns = {"/prop_fb_serv"})
public class prop_fb_serv extends HttpServlet {

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
        
        HttpSession hs=request.getSession();
        PrintWriter out = response.getWriter();
        try {
           
                
            if (hs.getAttribute("user") != null) 
            {
                PropDetail pd=(PropDetail)hs.getAttribute("propobj");
                Login ln = (Login) hs.getAttribute("user");
            String content=request.getParameter("content");
         
 
            
           
            
            
            
            SessionFactory sff=NewHibernateUtil.getSessionFactory();
            Session ss=sff.openSession();
            Transaction tr=ss.beginTransaction();
            
                PropFeedback pf=new PropFeedback();
                
                pf.setPId(pd);
                pf.setUId(ln);
                pf.setComment(content);
                
                pf.setTime(new Date(System.currentTimeMillis()));
                
                ss.save(pf);
                tr.commit();
              
             RequestDispatcher rd = request.getRequestDispatcher("getstate?id=9");
            rd.forward(request, response);
            
        }
        }
        
        catch(HibernateException he)
        {
            out.print(he.getMessage());
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
