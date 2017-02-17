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
import model.GmemberDetail;
import model.GroupDetail;
import model.Login;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import util.NewHibernateUtil;

/**
 *
 * @author rushin
 */
public class creategroup_serv extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        try {

            SessionFactory sf = NewHibernateUtil.getSessionFactory();
            Session ss = sf.openSession();
            Transaction tr = ss.beginTransaction();

            HttpSession hs = request.getSession();
            Login lg2 = (Login)hs.getAttribute("user");
            ArrayList<Login> gpList = (ArrayList<Login>) hs.getAttribute("gpList");
            gpList.add(lg2);
            GroupDetail gd = new GroupDetail();
            
            gd.setGName(request.getParameter("gname"));
            gd.setUId(lg2);
            gd.setUName(lg2.getUName());
            
            ss.save(gd);
            
            for(Login l: gpList){
                GmemberDetail gmd = new GmemberDetail();
                gmd.setGId(gd);
                gmd.setUId(l);
                ss.save(gmd);
            }
            tr.commit();
            
            hs.removeAttribute("gpList");
            out.println("Group Created");
            RequestDispatcher rd = request.getRequestDispatcher("getgroups?id=0");
            rd.forward(request, response);

        } catch (HibernateException he) {
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
