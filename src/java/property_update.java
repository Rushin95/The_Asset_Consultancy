/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
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
public class property_update extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        HttpSession hs = request.getSession();
        try {
            if (hs.getAttribute("user") != null) {
                Login ln = (Login) hs.getAttribute("user");
                System.out.println(ln.getUId());

                String pradd1 = "";
                String pradd2 = "";
                String prage = "";

                String prbhk = "";
                String prdescrip = "";
                String prprice = "";

                String state = "";
                String city = "";
                String area = "";
                String prname = "";
                String prtype = "";
                String prphoto= "";
                String prphoto1 = "";
                String prphoto2 = "";
                String prphoto3 = "";
                String prfarea = "";
                int prid = 0;

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
                        } else if (fieldName.equals("pid")) {
                            prid = Integer.parseInt(fileItem.getString());

                        } else if (fieldName.equals("state")) {
                            state = fileItem.getString();
                        } else if (fieldName.equals("city")) {
                            city = fileItem.getString();
                        } else if (fieldName.equals("area")) {
                            area = fileItem.getString();
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
                        } else if (fieldName.equals("prid")) {
                            prid = Integer.parseInt(fileItem.getString());
                            System.out.println("prid is " + prid);
                        }

                    } else {

                       String fieldName=fileItem.getFieldName();
                       
                       
                       if(fieldName.equals("pic1"))
                       {
                                        //getting name of file
                    prphoto = new File(fileItem.getName()).getName();
                    //get the extension of file by diving name into substring
                 //  String extension=custphoto.substring(custphoto.indexOf(".")+1,custphoto.length());;
                    //rename file...concate name and extension
                   // custphoto=ln.getUId()+"."+extension;
                      try {
                    // FOR UBUNTU add GETRESOURCE  and GETPATH
                     
                    String fp="/home/rushin/NetBeansProjects/The_Asset_Consultancy/web/images/property/" ;      
                   // String filePath=  this.getServletContext().getResource("/images/profilepic").getPath()+"\\";
                    System.out.println("===="+fp);
                    fileItem.write( new File(fp+ prphoto));
                        } catch (Exception ex)
                          {
                         out.println(ex.toString());
                          }
                       }
                       
                       
                       if(fieldName.equals("pic2"))
                       {
                       
                                                prphoto1 = new File(fileItem.getName()).getName();

                         try {
                             
                             
                    String fp="/home/rushin/NetBeansProjects/The_Asset_Consultancy/web/images/property/" ;      
                   // String filePath=  this.getServletContext().getResource("/images/profilepic").getPath()+"\\";
                    System.out.println("===="+fp);
                    fileItem.write( new File(fp+ prphoto1));
                        } catch (Exception ex)
                          {
                         out.println(ex.toString());
                          }
                       }
                       
                       
                       
                       
                       if(fieldName.equals("pic3"))
                       {
                             
                                             prphoto2 = new File(fileItem.getName()).getName();

                         try {
                             
                             
                    String fp="/home/rushin/NetBeansProjects/The_Asset_Consultancy/web/images/property/" ;      
                   // String filePath=  this.getServletContext().getResource("/images/profilepic").getPath()+"\\";
                    System.out.println("===="+fp);
                    fileItem.write( new File(fp+ prphoto2));
                        } catch (Exception ex)
                          {
                         out.println(ex.toString());
                          }
                         
                       }
                       
                       
                       
                       if(fieldName.equals("pic4"))
                       {
                                             prphoto3 = new File(fileItem.getName()).getName();

                         try {
                             
                             
                    String fp="/home/rushin/NetBeansProjects/The_Asset_Consultancy/web/images/property/" ;      
                   // String filePath=  this.getServletContext().getResource("/images/profilepic").getPath()+"\\";
                    System.out.println("===="+fp);
                    fileItem.write( new File(fp+ prphoto3));
                        } catch (Exception ex)
                          {
                         out.println(ex.toString());
                          }    
                       } 
                         }
                    }

                

                SessionFactory sf = NewHibernateUtil.getSessionFactory();
                Session ss = sf.openSession();
                Transaction tr = ss.beginTransaction();

//           String state="";
//            Criteria cr = ss.createCriteria(StateMaster.class);
//            cr.add(Restrictions.eq("sId", Integer.parseInt(stateid)));
//            ArrayList<StateMaster> ar = (ArrayList<StateMaster>)cr.list();
//            System.out.println("----------"+ar.size());
//            if(ar.isEmpty()){
//                
//            }else{
//                state = ar.get(0).getSName();
//                System.out.println("-------"+ar.get(0));
//            }
//            
//            String city="";
//            Criteria cr2 = ss.createCriteria(CityMaster.class);
//            cr2.add(Restrictions.eq("cityId", Integer.parseInt(cityid)));
//            ArrayList<CityMaster> ar2 = (ArrayList<CityMaster>)cr2.list();
//            System.out.println("----------"+ar2.size());
//            if(ar2.isEmpty()){
//                
//            }else{
//                city = ar2.get(0).getCityName();
//                System.out.println("-------"+city);
//            }
//            
//            String area="";
//            Criteria cr3 = ss.createCriteria(AreaMaster.class);
//            cr3.add(Restrictions.eq("areaId", Integer.parseInt(areaid)));
//            ArrayList<AreaMaster> ar3 = (ArrayList<AreaMaster>)cr3.list();
//            System.out.println("----------"+ar3.size());
//            if(ar3.isEmpty()){
//                
//            }else{
//                area = ar3.get(0).getAreaName();
//                System.out.println("-------"+area);
//            }
//            
//       Criteria crr=ss.createCriteria(AgentDetail.class);
//       crr.add(Restrictions.eq("uId", ln.getUId()));
//       ArrayList<AgentDetail> arr=(ArrayList<AgentDetail>)crr.list();
//       if(arr.isEmpty())
//       {
//           out.print("array empty");
//       }
//       else
//       {
//           AgentDetail agd=arr.get(0);
                PropDetail prd = (PropDetail) ss.get(PropDetail.class, prid);
                System.out.println("old object id is " + prd.getPId());
                PropDetail prd1 = new PropDetail();

                prd1.setUId(prd.getUId());
                prd1.setPId(prd.getPId());
                prd1.setPDescription(prdescrip);
                prd1.setPImg1(prphoto1);
                prd1.setPImg2(prphoto2);
                prd1.setPImg3(prphoto3);
                prd1.setPImg4(prphoto);
                prd1.setPAdd1(pradd1);
                prd1.setPAdd2(pradd2);
                prd1.setPAge(Integer.parseInt(prage));
                prd1.setPBhk(prbhk);
                prd1.setPFloor(Integer.parseInt(prfarea));
                prd1.setPGmap(null);
                prd1.setPName(prname);
                prd1.setPPrice(Integer.parseInt(prprice));
                prd1.setPStatus(null);
                prd1.setPCity(city);
                prd1.setPArea(area);
                prd1.setPState(state);
                prd1.setPType(prtype);

                ss.evict(prd);
                ss.update(prd1);
                tr.commit();

                RequestDispatcher rd = request.getRequestDispatcher("getstate?id=9");
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
            Logger.getLogger(property_update.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(property_update.class.getName()).log(Level.SEVERE, null, ex);
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
