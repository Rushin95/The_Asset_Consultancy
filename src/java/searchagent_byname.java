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
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author rushin
 */
public class searchagent_byname extends HttpServlet {

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

            /*    
            
             String name=request.getParameter("name");
             Class.forName("com.mysql.jdbc.Driver");
             Connection con = DriverManager.getConnection
             ("jdbc:mysql://localhost:3306/the_asset_consultancy?zeroDateTimeBehavior=convertToNull","root","");
             Statement stmt = con.createStatement();
             String query[] ={"SELECT * FROM emp where id=1", 
             "select name from emp where name like 'ravi_'",
             "select name from emp where name like 'ravi%'"};
             for(String q : query){
             ResultSet rs = stmt.executeQuery(q);
             System.out.println("Names for query "+q+" are");
             while (rs.next()) {
             String name = rs.getString("name");
             System.out.print(name+"  ");
             }
             }
            
             */
            String searchedname = request.getParameter("agentname");
            SessionFactory sf = util.NewHibernateUtil.getSessionFactory();
            Session ss = sf.openSession();

            Criteria cr1 = ss.createCriteria(AgentDetail.class);
            cr1.add(Restrictions.like("aFname", "%" + searchedname + "%"));
            ArrayList<AgentDetail> ad = (ArrayList<AgentDetail>) cr1.list();

            //for (AgentDetail currentagent : ad) {

            //    out.println(currentagent.getAId() + " " + currentagent.getAFname() + currentagent.getALname());

            //}

            
            if(ad.isEmpty())
            {
                 out.print("no such agent");
                  String msg = "Sorry, No results found.";
                                request.setAttribute("error", msg);
            }
            else
            {
            request.setAttribute("agent_array", ad);
            }
            
            RequestDispatcher rd=request.getRequestDispatcher("getstate?id=4");
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
