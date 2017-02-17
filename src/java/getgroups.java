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
import model.GmemberDetail;
import model.GroupDetail;
import model.Login;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import sun.awt.X11.XConstants;
import util.NewHibernateUtil;

/**
 *
 * @author rushin
 */
public class getgroups extends HttpServlet {

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

            SessionFactory sf = NewHibernateUtil.getSessionFactory();
            Session ss = sf.openSession();
            Transaction tr = ss.beginTransaction();

            Login ln = (Login) hs.getAttribute("user");
            System.out.println(ln.getUName()+"is the user");
            int id=Integer.parseInt(request.getParameter("id"));
            
            
            Criteria cr = ss.createCriteria(GmemberDetail.class);
            cr.add(Restrictions.eq("uId", ln));
            ArrayList<GmemberDetail> gmdl = (ArrayList<GmemberDetail>) cr.list();
//            ArrayList<GroupDetail> gdl1 = new ArrayList<>();
//            for (GmemberDetail g : gmdl) {
//                
//                System.out.println(g.getGId());
//                Criteria cr1 = ss.createCriteria(GroupDetail.class);
//                cr1.add(Restrictions.eq("gId", g.getGId().getGId()));
//
//                GroupDetail gd = (GroupDetail) cr1.uniqueResult();
//                gdl1.add(gd);
//
//            }

            System.out.println("=====glist size=====" + gmdl.size());
            request.setAttribute("grouplist", gmdl);
            
            if(id==0)
            {
            RequestDispatcher rd = request.getRequestDispatcher("group_home.jsp");
            rd.forward(request, response);
            }
            else if(id==1)
                
            {
                
                int uid=Integer.parseInt(request.getParameter("uid"));
                request.setAttribute("uid", uid);
                    RequestDispatcher rd = request.getRequestDispatcher("groupsofuser.jsp");
            rd.forward(request, response);
            }
            
        

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
