/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.AreaMaster;
import model.CityMaster;
import model.Login;
import model.PropDetail;
import model.StateMaster;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
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
public class prop_add_serv extends HttpServlet {

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
            throws ServletException, IOException, FileUploadException {
        response.setContentType("text/html;charset=UTF-8");

        HttpSession hs = request.getSession();
        PrintWriter out = response.getWriter();
        try {

            if (hs.getAttribute("user") != null) {
                Login ln = (Login) hs.getAttribute("user");
                System.out.println(ln.getUId());
                String pradd1 = "";
                String pradd2 = "";
                String prage = "";
                String prarea = "";
                String prbhk = "";
                String prdescrip = "";
                String prprice = "";
                String prcity = "";
                String prstate = "";
                String prname = "";
                String prtype = "";

                String prfarea = "";
                String prphoto1 = "";
                String prphoto2 = "";
                String prphoto3 = "";
                String prphoto4 = "";

//             
                // creates FileItem instances which keep their content in a temporary file on disk
                FileItemFactory factory = new DiskFileItemFactory();
                // Create a new file upload handler
                ServletFileUpload upload = new ServletFileUpload(factory);

                //get the list of all fields from request
                List<FileItem> fields = upload.parseRequest(request);
                // iterates the object of list
                Iterator<FileItem> it = fields.iterator();
                //getting objects one by one
                while (it.hasNext()) {
                    //assigning coming object if list to object of FileItem
                    FileItem fileItem = it.next();
                    //check whether field is form field or not
                    boolean isFormField = fileItem.isFormField();

                    if (isFormField) {
                        //get the filed name 
                        String fieldName = fileItem.getFieldName();

                        if (fieldName.equals("pname")) {
                            //getting value of field
                            prname = fileItem.getString();
                            System.out.println(prname);
                        } else if (fieldName.equals("price")) {
                            //getting value of field
                            prprice = fileItem.getString();
                            System.out.println(prprice);
                        } else if (fieldName.equals("city")) {
                            prcity = fileItem.getString();
                            System.out.println(prcity);
                        } else if (fieldName.equals("state")) {
                            prstate = fileItem.getString();
                            System.out.println(prstate);
                        } else if (fieldName.equals("area")) {
                            prarea = fileItem.getString();
                            System.out.println(prarea);
                        } else if (fieldName.equals("pbhk")) {
                            prbhk = fileItem.getString();
                            System.out.println(prbhk);
                        } else if (fieldName.equals("pdescription")) {
                            prdescrip = fileItem.getString();
                            System.out.println(prdescrip);

                        } else if (fieldName.equals("ptype")) {
                            prtype = fileItem.getString();
                            System.out.println(prtype);

                        } else if (fieldName.equals("paddress1")) {
                            pradd1 = fileItem.getString();
                            System.out.println(pradd1);
                        } else if (fieldName.equals("paddress2")) {
                            pradd2 = fileItem.getString();
                            System.out.println(pradd2);
                        } else if (fieldName.equals("page")) {
                            prage = fileItem.getString();
                            System.out.println(prage);
                        } else if (fieldName.equals("pfarea")) {
                            prfarea = fileItem.getString();
                            System.out.println(prfarea);
                        }
                    } else {

                        String fieldName = fileItem.getFieldName();
                        
                        
                        if(fieldName.equals("photo1"))
                        {
                        
                        //getting name of file
                        prphoto1 = new File(fileItem.getName()).getName();
                        
                        //get the extension of file by diving name into substring
                        // String extension=prphoto.substring(prphoto.indexOf(".")+1,prphoto.length());;
                        //rename file...concate name and extension
                        //prphoto=prname+"."+extension;
                        //System.out.println(prphoto);
                        try {

                            String fp = "/home/rushin/NetBeansProjects/The_Asset_Consultancy/web/images/property/";
                        // FOR UBUNTU add GETRESOURCE  and GETPATH
                            // String filePath = this.getServletContext().getResource("/images").getPath() + "\\";
                            fileItem.write(new File(fp + prphoto1));
                        } catch (Exception ex) {
                            out.println(ex.toString());
                        }
                        }
                        
                        //PHOTO 2
                        
                        else if(fieldName.equals("photo2"))
                        {
                        prphoto2 = new File(fileItem.getName()).getName();
                        
                        try {

                            String fp = "/home/rushin/NetBeansProjects/The_Asset_Consultancy/web/images/property/";
                            fileItem.write(new File(fp + prphoto2));
                        } catch (Exception ex) {
                            out.println(ex.toString());
                        }
                        
                        
                        }
                        //PHOTO 3
                        else if(fieldName.equals("photo3"))
                        {
                        
                        prphoto3 = new File(fileItem.getName()).getName();
                        try {

                            String fp = "/home/rushin/NetBeansProjects/The_Asset_Consultancy/web/images/property/";
                            fileItem.write(new File(fp + prphoto3));
                        } catch (Exception ex) {
                            out.println(ex.toString());
                        }
                        }
                        
                        //PHOTO 4
                        else if(fieldName.equals("photo4"))
                        {
                        prphoto4 = new File(fileItem.getName()).getName();
                        try {

                            String fp = "/home/rushin/NetBeansProjects/The_Asset_Consultancy/web/images/property/";
                            fileItem.write(new File(fp + prphoto4));
                        } catch (Exception ex) {
                            out.println(ex.toString());
                        }
                        }
                    
                    }

                }

                SessionFactory sf = NewHibernateUtil.getSessionFactory();
                Session ss = sf.openSession();
                Transaction tr = ss.beginTransaction();

                String op = "";
                Criteria cr = ss.createCriteria(StateMaster.class);
                cr.add(Restrictions.eq("sId", Integer.parseInt(prstate)));
                ArrayList<StateMaster> ar = (ArrayList<StateMaster>) cr.list();
                if (ar.isEmpty()) {

                } else {
                    StateMaster sm = ar.get(0);
                    op = sm.getSName();

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

                PropDetail pd = new PropDetail();

                pd.setUId(ln);

                pd.setPAge(Integer.parseInt(prage));

                pd.setPBhk(prbhk);
                pd.setPDescription(prdescrip.trim());
                pd.setPAdd1(pradd1);
                pd.setPAdd2(pradd2);
                pd.setPPrice(Integer.parseInt(prprice));

                pd.setPCity(city);
                pd.setPState(op);
                pd.setPArea(area);

                pd.setPName(prname);
                pd.setPType(prtype);
                pd.setPImg1(prphoto1);
                System.out.println(prphoto1);
                System.out.println(prphoto2);
                pd.setPImg2(prphoto2);
 
                pd.setPImg3(prphoto3);
                pd.setPImg4(prphoto4);

                pd.setPFloor(Integer.parseInt(prfarea));

                ss.save(pd);

                tr.commit();

                RequestDispatcher rd = request.getRequestDispatcher("property_search_1.jsp");
                rd.forward(request, response);
            }
        } catch (HibernateException e) {
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
        try {
            processRequest(request, response);
        } catch (FileUploadException ex) {
            Logger.getLogger(prop_add_serv.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (FileUploadException ex) {
            Logger.getLogger(prop_add_serv.class.getName()).log(Level.SEVERE, null, ex);
        }
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
