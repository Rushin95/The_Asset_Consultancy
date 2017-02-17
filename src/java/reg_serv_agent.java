/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import util.NewHibernateUtil;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.AgentDetail;
import model.AreaMaster;
import model.CityMaster;
import model.Login;
import model.StateMaster;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Rushin
 */
@WebServlet(urlPatterns = {"/reg_serv_agent"})
public class reg_serv_agent extends HttpServlet {

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
            
            
            String fn=request.getParameter("fname");  
        String ln=request.getParameter("lname");
        String un=request.getParameter("uname");  
        String e=request.getParameter("email");   
        String stateid=request.getParameter("state");
        System.out.println("-------"+stateid);
        String cityid=request.getParameter("city");
         System.out.println("-------"+cityid);
        String r=request.getParameter("role");
        String p=request.getParameter("pwd");
        String areaid=request.getParameter("area");
         System.out.println("-------"+areaid);    
         String no=request.getParameter("num");
        
         String adrs1=request.getParameter("addrss");
         String adrs2=request.getParameter("addrss2");
         
        
        
        
          Login li = new Login();
        
            li.setUName(un);
            li.setPwd(p);
            li.setURole("agent");
            
        
            SessionFactory sf=NewHibernateUtil.getSessionFactory();
            Session ss=sf.openSession();
            Transaction tr=ss.beginTransaction();
            
            ss.save(li);
            
            
            String state="";
            Criteria cr = ss.createCriteria(StateMaster.class);
            cr.add(Restrictions.eq("sId", Integer.parseInt(stateid)));
            ArrayList<StateMaster> ar = (ArrayList<StateMaster>)cr.list();
            System.out.println("----------"+ar.size());
            if(ar.isEmpty()){
                
            }else{
                state = ar.get(0).getSName();
                System.out.println("-------"+ar.get(0));
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
            
            AgentDetail ad=new AgentDetail();
                ad.setUId(li);
                ad.setAFname(fn);
                ad.setALname(ln);
                ad.setAAddress1(adrs1);
                ad.setAAddress2(adrs2);
                ad.setARating(0);
                
                ad.setAEmail(e);
                ad.setAState(state);
                ad.setACity(city);
                ad.setAArea(area);
                ad.setAStatus("Pending");
                ad.setANo(no);
                
                ss.save(ad);
               // out.println("Agent Registered");
            
                
                tr.commit();
            HttpSession session = request.getSession();
            session.setAttribute("user", li);

            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.include(request, response);

                
                
                
        }
        
        
        
        catch(Exception e)
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
