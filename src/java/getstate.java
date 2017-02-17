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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.AgentDetail;
import model.PropDetail;
import model.StateMaster;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Rushin
 */
public class getstate extends HttpServlet {

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
            SessionFactory sf= NewHibernateUtil.getSessionFactory();
            Session ss=sf.openSession();
//            Transaction tr=ss.beginTransaction();
            
            Criteria cr=ss.createCriteria(StateMaster.class);
            ArrayList<StateMaster> stlist=(ArrayList<StateMaster>)cr.list();
            System.out.println("Size of State"+stlist.size());
            request.setAttribute("state",stlist);
            
            String id=request.getParameter("id");
            int i=Integer.parseInt(id);
                    
          
            
            if(i==1)
            {
            RequestDispatcher rd=request.getRequestDispatcher("customerregistration.jsp");
            rd.forward(request, response);
            }
            else if(i==2)
            {
                
            RequestDispatcher rd=request.getRequestDispatcher("agentregistration.jsp");
            rd.forward(request, response);
            }
                
            else if(i==3)
            {
                RequestDispatcher rd=request.getRequestDispatcher("property_add.jsp");
                rd.forward(request, response);
            }
            
            else if(i==4)
            {
                
                Criteria cr2 = ss.createCriteria(AgentDetail.class);

                ArrayList<AgentDetail> adl = (ArrayList< AgentDetail>) cr2.list();

                if (!adl.isEmpty()) {
                    request.setAttribute("adl", adl);

                }
                RequestDispatcher rd = request.getRequestDispatcher("agents.jsp");
                rd.forward(request, response);
            }
            else if(i==5)
            {
                  RequestDispatcher rd=request.getRequestDispatcher("customerprofile.jsp");
                rd.forward(request, response);
            }
             else if(i==6)
            {
                  RequestDispatcher rd=request.getRequestDispatcher("agentprofile.jsp");
                rd.forward(request, response);
            }
             else if(i==7)
             {
                  RequestDispatcher rd=request.getRequestDispatcher("trial_area.jsp");
                rd.forward(request, response);
            
             }
             else if(i==8)
             {
                        RequestDispatcher rd=request.getRequestDispatcher("analysis_search.jsp");
                rd.forward(request, response);
             }
             else if(i==9)
             {
                        Criteria cr3=ss.createCriteria(PropDetail.class);
            
        ArrayList<PropDetail> pdl=(ArrayList < PropDetail>)cr3.list();
        
        if(!pdl.isEmpty())
        {
            request.setAttribute("pdl", pdl);
         
        }
                 
                 RequestDispatcher rd=request.getRequestDispatcher("property_search_1.jsp");
                rd.forward(request, response);
             }
            else if(i==10)
             {
                 int pid=Integer.parseInt(request.getParameter("pid"));
            PropDetail pd = (PropDetail)ss.get(PropDetail.class, pid);
            request.setAttribute("pd", pd);
                 RequestDispatcher rd=request.getRequestDispatcher("prop_update.jsp");
                rd.forward(request, response);
             }
        }
            
        catch(Exception e)
        {
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
