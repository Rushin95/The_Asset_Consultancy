/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import util.NewHibernateUtil;
import model.Login;
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
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Rushin
 */
public class login_serv extends HttpServlet {

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
        try{
        
//            Login li=new Login();
            
            SessionFactory sf=NewHibernateUtil.getSessionFactory();
            Session ss=sf.openSession();
            Transaction tr=ss.beginTransaction();
            
            Criteria cr=ss.createCriteria(Login.class);
            
            String uname=request.getParameter("username");
            String pass=request.getParameter("psswd");
            
            
            cr.add(Restrictions.eq("uName",uname));
                    cr.add(Restrictions.eq("pwd",pass));
            
                    ArrayList<Login> alli=(ArrayList<Login>)cr.list();
//            out.println("jgfghfgh");
            if(alli.isEmpty())
            {
               

                 String msg="Invalid Username or Password.";
                 request.setAttribute("error", msg);
                  RequestDispatcher rd=request.getRequestDispatcher("/login.jsp");
            
                  rd.forward(request, response);
            }
            
            else
            {   Login l = alli.get(0);
                
                HttpSession session=request.getSession();
                session.setAttribute("user", l);
                
                //request.setAttribute("usname",uname);
                switch (l.getURole()) {
                    case "customer":
                        {
                            RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
                            rd.include(request, response);
                            break;
                        }
                    case "agent":
                        {
                            
                            Criteria cr1 = ss.createCriteria(AgentDetail.class);
                            cr1.add(Restrictions.eq("uId", l));
                            ArrayList<AgentDetail> adl = (ArrayList<AgentDetail>) cr1.list();
                            AgentDetail ad = adl.get(0);
                            
                            if(ad.getAStatus().equals("Accepted"))
                            {
                            RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
                            rd.include(request, response);
                            }
                            
                            else if(ad.getAStatus().equals("Pending"))
                            {
                                String msg = "Your details are still being verified. Please try later.";
                                request.setAttribute("error", msg);
                                RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");

                                rd.forward(request, response);
                            }
                            break; 
                        }
                    case "admin":
                        {
                            RequestDispatcher rd=request.getRequestDispatcher("adminhome.jsp");
                            rd.include(request, response);
                            break; 
                        }
                    default:
                    {
                        RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
                            rd.include(request, response);
                            break; 
                    }
 
                }
                
                
                
            }
            
//            li=alli.get(0);
            tr.commit();
           
            
            
            
            
        }
        catch(Exception e)
        {
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
