/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.AreaMaster;
import model.CityMaster;
import model.Filtercriteria;

import model.StateMaster;
import org.apache.catalina.connector.Response;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import util.NewHibernateUtil;

/**
 *
 * @author rushin
 */
public class analysis_criteria extends HttpServlet {

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
            Transaction tr = ss.beginTransaction();

            String prstate = request.getParameter("state");
            String prcity = request.getParameter("city");
            String prarea = request.getParameter("area");
            String ptype = request.getParameter("type");
            String pbhk = request.getParameter("bhk");
            String przip = "";

            System.out.println("bhk is"+pbhk);
            System.out.println("type is"+ptype);
            
            
            String state = "";
            Criteria cr = ss.createCriteria(StateMaster.class);
            cr.add(Restrictions.eq("sId", Integer.parseInt(prstate)));
            ArrayList<StateMaster> ar = (ArrayList<StateMaster>) cr.list();
            if (ar.isEmpty()) {

            } else {
                StateMaster sm = ar.get(0);
                state = sm.getSName();

            }

            String city = "";
            Criteria cr2 = ss.createCriteria(CityMaster.class);
            cr2.add(Restrictions.eq("cityId", Integer.parseInt(prcity)));
            ArrayList<CityMaster> ar2 = (ArrayList<CityMaster>) cr2.list();
            System.out.println("----------" + ar2.size());
            if (ar2.isEmpty()) {

            } else {
                city = ar2.get(0).getCityName();
                System.out.println("-------" + city);
            }

            String area = "";
            Criteria cr3 = ss.createCriteria(AreaMaster.class);
            cr3.add(Restrictions.eq("areaId", Integer.parseInt(prarea)));
            ArrayList<AreaMaster> ar3 = (ArrayList<AreaMaster>) cr3.list();
            System.out.println("----------" + ar3.size());
            if (ar3.isEmpty()) {

            } else {
                area = ar3.get(0).getAreaName();
                System.out.println("-------" + area);
            }

            Criteria cr4 = ss.createCriteria(AreaMaster.class);
            cr4.add(Restrictions.eq("areaId", Integer.parseInt(prarea)));
            ArrayList<AreaMaster> ar4 = (ArrayList<AreaMaster>) cr4.list();
            System.out.println("----------" + ar4.size());
            if (ar4.isEmpty()) {

            } else {
                przip = ar4.get(0).getZip();
                System.out.println("-------" + przip);
            }

            out.print("after object 0");
            
            
            
//            
//            String s="select * from the_asset_consultancy.Filter_criteria;";
//            
//            SQLQuery query=ss.createSQLQuery(s);
//            List<Filtercriteria> l=query.list();
//          
            Criteria cr5 = ss.createCriteria(Filtercriteria.class);
            
            ArrayList<Filtercriteria> l = (ArrayList<Filtercriteria>) cr5.list();
            
            Filtercriteria old=l.get(0);
            System.out.println("this is old cr id:"+old.getCrId());
            
            Filtercriteria f = new Filtercriteria();
            
            f.setCrId(old.getCrId());
            
            f.setArea(area);

            out.print("after object 1");

            f.setBhk(pbhk);
            f.setType(ptype);
            f.setZip(przip);

            ss.evict(old);
            ss.update(f);
            
            
            
            out.print("after object 2");
            tr.commit();
            out.print("after object 3");
            
            

            out.print("after object 4");
            
            //for trial 
               HadoopProcessingClass.Do_Process();
            RequestDispatcher rd=request.getRequestDispatcher("show_growthrate");
            rd.forward(request, response);
            
            
            
            //Original code
//            RequestDispatcher rd = request.getRequestDispatcher("analysis_search.jsp");
//            rd.forward(request, response);

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
