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
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.AgentDetail;
import model.AreaMaster;
import model.CityMaster;
import model.CustomerDetail;
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
public class reg_serv_cust extends HttpServlet {

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

            //out.println("1");
            String fn=request.getParameter("fname");  
        String ln=request.getParameter("lname");
        String un=request.getParameter("uname");  
        String stateid=request.getParameter("state");
        
      
        
        
        String cityid=request.getParameter("city");
        String areaid=request.getParameter("area");
        String e=request.getParameter("email");   
        String num=request.getParameter("number");
            String p = request.getParameter("pwd");

        //out.print("2");
          //  out.print("ijhdi");
            SessionFactory sf = NewHibernateUtil.getSessionFactory();
            Session ss = sf.openSession();
            Transaction tr = ss.beginTransaction();

            //out.print("111");
            Login li = new Login();
            li.setUName(un);
            li.setPwd(p);
            li.setURole("customer");

            //    out.print("22");
            ss.save(li);


            
           // out.println("3");
            
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
             
            
            
            CustomerDetail cd = new CustomerDetail();
            cd.setUId(li);
            cd.setCFname(fn);
            cd.setCLname(ln);

            cd.setCState(state);
            cd.setCCity(city);
            cd.setCArea(area);

            cd.setCNum(num);
            cd.setCEmail(e);
            

            ss.save(cd);
            
          //  out.println("Customer Registered");
            
           
        /*
            else if(r.equals(strg2))
            {
                
                AgentDetail ad=new AgentDetail();
                ad.setUId(li);
                ad.setAFname(fn);
                ad.setALname(ln);
                ad.setANo(null);
                ad.setARating(null);
                ad.setAAddress(null);
                ad.setAEmail(e);
                
                ss.save(ad);
                out.println("Agent Registered");
                             
                          
            }
          */
        
        
            tr.commit();
            
            HttpSession session = request.getSession();
            session.setAttribute("user", li);

            RequestDispatcher rd = request.getRequestDispatcher("agent_home.jsp");
            rd.include(request, response);
            
            
            
            
            
           // out.println("Registration Complete");
            
           
        }
          catch(Exception ex)
        {
            out.println(ex.getMessage());
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
