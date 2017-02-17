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
import model.AreaMaster;
import model.CityMaster;
import model.StateMaster;
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
public class getarea extends HttpServlet {

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
            
            
            int cityid=Integer.parseInt(request.getParameter("city"));
            //out.print(cityid);
            
            CityMaster cm=new CityMaster();
            cm.setCityId(cityid);
            
            
            Criteria cr=ss.createCriteria(AreaMaster.class);
            cr.add(Restrictions.eq("cityId", cm));
           // cr.add(Restrictions.eq("sId",sm));
            
            ArrayList<AreaMaster> ctlist=(ArrayList<AreaMaster>)cr.list();
            
            
            for(int i=0;i<ctlist.size();i++)
            {
                AreaMaster am=ctlist.get(i);
                String arname=am.getAreaName();
                System.out.println("-------------getarea"+arname);
                System.out.println("------------- "+am.getAreaId());
                out.print("<option value="+am.getAreaId()+">"+arname+"</option>");
            }
            
            tr.commit();
            
            ;
        }
        catch(HibernateException e)
        {
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
