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
import model.AreaMaster;
import model.CityMaster;
import model.PropDetail;
import model.StateMaster;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import util.NewHibernateUtil;

/**
 *
 * @author rushin
 */
public class search_prop extends HttpServlet {

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
            String[] bhkGroup = request.getParameterValues("bhkgroup");
            String[] typeGroup = request.getParameterValues("typegroup");

            System.out.println("the types are:" + typeGroup[0]);
            System.out.println("the bhks are:" + bhkGroup[0]);

            String stateid = request.getParameter("state");
            String cityid = request.getParameter("city");
            String areaid = request.getParameter("area");
//            String minp = request.getParameter("minprice");
//            String maxp = request.getParameter("maxprice");
//            String minsq = request.getParameter("minsqfeet");
//            String maxsq = request.getParameter("maxsqfeet");
//            

            //Edited
            int minp = Integer.parseInt(request.getParameter("minprice"));
            int maxp = Integer.parseInt(request.getParameter("maxprice"));
            int minsq = Integer.parseInt(request.getParameter("minsqfeet"));
            int maxsq = Integer.parseInt(request.getParameter("maxsqfeet"));

            String state = "";
            Criteria cr1 = ss.createCriteria(StateMaster.class);
            cr1.add(Restrictions.eq("sId", Integer.parseInt(stateid)));
            ArrayList<StateMaster> ar = (ArrayList<StateMaster>) cr1.list();
            System.out.println("----------" + ar.size());
            if (ar.isEmpty()) {

            } else {
                state = ar.get(0).getSName();
                System.out.println("-------" + state);
            }

            String city = "";
            Criteria cr2 = ss.createCriteria(CityMaster.class);
            cr2.add(Restrictions.eq("cityId", Integer.parseInt(cityid)));
            ArrayList<CityMaster> ar2 = (ArrayList<CityMaster>) cr2.list();
            System.out.println("----------" + ar2.size());
            if (ar2.isEmpty()) {

            } else {
                city = ar2.get(0).getCityName();
                System.out.println("-------" + city);
            }

            String area = "";
            Criteria cr3 = ss.createCriteria(AreaMaster.class);
            cr3.add(Restrictions.eq("areaId", Integer.parseInt(areaid)));
            ArrayList<AreaMaster> ar3 = (ArrayList<AreaMaster>) cr3.list();
            System.out.println("----------" + ar3.size());
            if (ar3.isEmpty()) {

            } else {
                area = ar3.get(0).getAreaName();
                System.out.println("-------" + area);
            }

            System.out.println(minp + " " + maxp + " " + minsq + " " + maxsq);

            Criteria cr = ss.createCriteria(PropDetail.class);
            cr.add(Restrictions.in("pBhk", bhkGroup));
            cr.add(Restrictions.in("pType", typeGroup));
            cr.add(Restrictions.eq("pState", state));
            cr.add(Restrictions.eq("pCity", city));
            cr.add(Restrictions.eq("pArea", area));
            cr.add(Restrictions.between("pPrice", minp, maxp));
            cr.add(Restrictions.between("pFloor", minsq, maxsq));

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

        } catch (HibernateException e) {
            out.println("There was some error with the taken action.");
            System.out.print(e.getMessage());
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
