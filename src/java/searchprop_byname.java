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
import model.PropDetail;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import util.NewHibernateUtil;

/**
 *
 * @author rushin
 */
public class searchprop_byname extends HttpServlet {

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

            String searchedprop = request.getParameter("propname");
            Criteria cr = ss.createCriteria(PropDetail.class);
            cr.add(Restrictions.like("pName", "%" + searchedprop + "%"));

            ArrayList<PropDetail> pd = (ArrayList<PropDetail>) cr.list();

            /*   for(PropDetail p: pd)
             {
             out.print(p.getPId()+" type:"+p.getPType()+" bhk:"+p.getPBhk());
             out.println(" ");
             }
             */
            if (pd.isEmpty()) {
                out.print("no such property");
                String msg = "Sorry, No results found.";
                request.setAttribute("error", msg);
            } else {
                request.setAttribute("proplist", pd);
            }
            RequestDispatcher rd = request.getRequestDispatcher("getstate?id=9");
            rd.forward(request, response);

        } catch (Exception e) {
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