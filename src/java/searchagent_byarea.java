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
public class searchagent_byarea extends HttpServlet {

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
        try  {
         
           SessionFactory sf= NewHibernateUtil.getSessionFactory();
            Session ss=sf.openSession();
           Transaction tr=ss.beginTransaction();
            
            
            String stateid=request.getParameter("state");
            String cityid=request.getParameter("city");
            String areaid=request.getParameter("area");
            String aname = request.getParameter("aname");
                    
            
            String state="";
            Criteria cr = ss.createCriteria(StateMaster.class);
            cr.add(Restrictions.eq("sId", Integer.parseInt(stateid)));
            ArrayList<StateMaster> ar = (ArrayList<StateMaster>)cr.list();
            System.out.println("----------"+ar.size());
            if(ar.isEmpty()){
                
            }else{
                state = ar.get(0).getSName();
                System.out.println("-------"+state);
            }
            
            String city="";
            Criteria cr2 = ss.createCriteria(CityMaster.class);
            cr2.add(Restrictions.eq("cityId", Integer.parseInt(cityid)));
            ArrayList<CityMaster> ar2 = (ArrayList<CityMaster>)cr2.list();
            System.out.println("----------"+ar2.size());
            if(ar2.isEmpty()){
                
            }else{
                city = ar2.get(0).getCityName();
                System.out.println("-------"+city);
            }
            
            String area="";
            Criteria cr3 = ss.createCriteria(AreaMaster.class);
            cr3.add(Restrictions.eq("areaId", Integer.parseInt(areaid)));
            ArrayList<AreaMaster> ar3 = (ArrayList<AreaMaster>)cr3.list();
            System.out.println("----------"+ar3.size());
            if(ar3.isEmpty()){
                
            }else{
                area = ar3.get(0).getAreaName();
                System.out.println("-------"+area);
            }
            
            
            Criteria cr4=ss.createCriteria(AgentDetail.class);
            cr4.add(Restrictions.eq("aState",state));
            cr4.add(Restrictions.eq("aCity",city));        
            cr4.add(Restrictions.eq("aArea",area));
            
            ArrayList<AgentDetail> ar4 = (ArrayList<AgentDetail>)cr4.list();
            System.out.println("-------AgentList Size---"+ar4.size());
            if(ar4.isEmpty())
            {
                out.print("no such agent");
                  String msg = "Sorry, No results found.";
                                request.setAttribute("error", msg);
            }
            else
            {
                request.setAttribute("agent_array", ar4);
        
            }
            
                     RequestDispatcher rd=request.getRequestDispatcher("getstate?id=4");
            rd.forward(request, response);
            tr.commit();
            
            
            
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
