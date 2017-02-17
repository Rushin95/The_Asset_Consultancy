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
import model.AssetData;
import model.PropFeedback;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import util.NewHibernateUtil;
import functions.get_growth;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author rushin
 */
public class show_growthrate extends HttpServlet {

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

            double yeardiff = 0;
            double starty = 0;
            double finaly = 0;
            double startp = 0;
            double finalp = 0;
            double ratesum = 0;
            double agr = 0;

            get_growth g = new get_growth();
            SessionFactory sf = NewHibernateUtil.getSessionFactory();
            Session ss = sf.openSession();
            Transaction tr = ss.beginTransaction();

            Criteria cr = ss.createCriteria(AssetData.class);
            ArrayList<AssetData> list = (ArrayList<AssetData>) cr.list();
            System.out.println("list size" + list.size());
            double[] rate = new double[list.size()];
            AssetData[] adata = new AssetData[list.size()];

            for (int i = 0; i < list.size(); i++) {
                adata[i] = list.get(i);
                starty = Double.parseDouble(adata[i].getStartYear());
                System.out.println("start year:" + starty);

                finaly = Double.parseDouble(adata[i].getFinalYear());
                System.out.println("final year:" + finaly);
                yeardiff = finaly - starty;
                System.out.println("The year diff is" + yeardiff);

                startp = Double.parseDouble(adata[i].getStartPrice());
                System.out.println("The start price is" + startp);

                finalp = Double.parseDouble(adata[i].getFinalPrice());
                System.out.println("The end price is" + finalp);

                rate[i] = g.get_growthrate(startp, finalp, yeardiff);

                System.out.println("rate " + i + " is" + rate[i]);

                ratesum = ratesum + rate[i];

                System.out.println("The rate sum " + i + " is" + ratesum);

            }

            agr = ratesum / list.size();
            out.print("The average annual growth is " + agr + "%.");

            request.setAttribute("percent", agr);
            
            //recently done
            RequestDispatcher rd = request.getRequestDispatcher("percentage_js.jsp");
          //RequestDispatcher rd = request.getRequestDispatcher("analysis_search.jsp");
            
            rd.forward(request, response);

            tr.commit();
        } catch (HibernateException he) {
            System.out.println(he.getMessage());
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
