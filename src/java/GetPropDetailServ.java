/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.AgentDetail;
import model.AgentFeedback;
import model.AssetRecords;
import model.PropDetail;
import model.PropFeedback;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author rushin
 */
public class GetPropDetailServ extends HttpServlet {

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
            
            SessionFactory sf = util.NewHibernateUtil.getSessionFactory();
            Session ss = sf.openSession();
            
            int pid = Integer.parseInt(request.getParameter("pid"));
            
            
            ArrayList<AssetRecords> a=new ArrayList<>();
            String s="SELECT sum(Price),Year FROM the_asset_consultancy.AssetRecords where Assetid="+pid+" group by Price,Year ;";
            
            SQLQuery query=ss.createSQLQuery(s);
            
            List<Object[]> lt=query.list();
            
            for(Object[] op:lt)
            {
                AssetRecords ar=new AssetRecords();
                ar.setPrice(op[0].toString());
                ar.setYear(op[1].toString());
                a.add(ar);
                
                out.println(a);
                
            }
            System.out.println("Size of array:"+a.size());
            request.setAttribute("al", a);
            
            
Collections.sort(a, new Comparator<AssetRecords>(){

  @Override
  public int compare(AssetRecords o1, AssetRecords o2)
  {
     return o1.getYear().compareTo(o2.getYear());
  }
});
            
            
            
            
            Criteria cr = ss.createCriteria(PropDetail.class);
            cr.add(Restrictions.eq("pId", pid));
            PropDetail pd = (PropDetail)cr.uniqueResult();
            
            
            System.out.println("property found:"+pd.getPId());
            
            Criteria cr1 = ss.createCriteria(PropFeedback.class);
            cr1.add(Restrictions.eq("pId", pd));
            
            ArrayList<PropFeedback> pfl = (ArrayList<PropFeedback>) cr1.list();
            
            
            request.setAttribute("pd", pd);
            
            if(!pfl.isEmpty())
                    {
            request.setAttribute("pfl", pfl);
                    }
            else{
                System.out.println("No property feedback available");
            }
            
            
            //for the random agent display
            
            Criteria cr2=ss.createCriteria(AgentDetail.class);
            
        ArrayList<AgentDetail> adl=(ArrayList < AgentDetail>)cr2.list();
        
        if(!adl.isEmpty())
        {
            request.setAttribute("adl", adl);
          
        }
        else
        {
            System.out.println("random agent list empty");
        }
           
            
            
            RequestDispatcher rd = request.getRequestDispatcher("single.jsp");
            rd.forward(request, response);
            
            
            
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
