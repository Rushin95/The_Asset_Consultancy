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
import model.AgentDetail;
import model.Login;
import model.CustomerDetail;
import model.StateMaster;



import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import static org.eclipse.persistence.expressions.ExpressionMath.ln;
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
public class cust_update extends HttpServlet {

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
            
        if(hs.getAttribute("user")!=null)
            {
            Login ln = (Login) hs.getAttribute("user");
          
            System.out.println(ln.getUId());
            String firstn="";
            String lastn="";
            String un="";
            String state="";
            String city="";
            int id=0;
            String e="";
            
            String num="";
            String p="";
            String custphoto="";
            String custname="";
                String area="";
           
             // creates FileItem instances which keep their content in a temporary file on disk
            FileItemFactory factory = new DiskFileItemFactory();
            // Create a new file upload handler
            ServletFileUpload upload = new ServletFileUpload(factory);

            //get the list of all fields from request
            List<FileItem> fields= upload.parseRequest(request);
            // iterates the object of list
            Iterator<FileItem> it = fields.iterator();
            //getting objects one by one
            while (it.hasNext())
            {
                //assigning coming object if list to object of FileItem
                FileItem fileItem = it.next();
                //check whether field is form field or not
                boolean isFormField = fileItem.isFormField();
                
                if (isFormField)
                {
                    //get the filed name 
                    String fieldName=fileItem.getFieldName();
                    
               if(fieldName.equals("fname"))
               {
                   firstn=fileItem.getString();
                   System.out.println(firstn);
               }
                else if(fieldName.equals("id"))
               {
                   id= Integer.parseInt(fileItem.getString());
               }
               else if(fieldName.equals("lname"))
               {
                   lastn=fileItem.getString();
                   System.out.println(lastn);
               }
               else if(fieldName.equals("uname"))
               {
                   un=fileItem.getString();
                   System.out.println(un);
               }
               else if(fieldName.equals("state"))
               {
                   state=fileItem.getString();
                   System.out.println(state);
               }
               else if(fieldName.equals("city"))
               {
                   city=fileItem.getString();
                   System.out.println(city);
               }
               else if(fieldName.equals("area"))
               {
                   area=fileItem.getString();
               }
               else if(fieldName.equals("email"))
               {
                   e=fileItem.getString();
                   System.out.println(e);
               }
              
               else if(fieldName.equals("number"))
               {
                   num=fileItem.getString();
                   System.out.println(num);
                  
               }
               else if(fieldName.equals("pwd"))
               {
                   p=fileItem.getString();
                   System.out.println(p);
               }
                      
                        
                }
                else
                {
                    
                    
                    
                    //getting name of file
                    custphoto = new File(fileItem.getName()).getName();
                    //get the extension of file by diving name into substring
                 //  String extension=custphoto.substring(custphoto.indexOf(".")+1,custphoto.length());;
                    //rename file...concate name and extension
                   // custphoto=ln.getUId()+"."+extension;
                    
                    
                    
                    System.out.println(custphoto);
                    try {
                        
                        
                        // FOR UBUNTU add GETRESOURCE  and GETPATH
                        
                        
                    String fp="/home/rushin/NetBeansProjects/The_Asset_Consultancy/web/images/profilepic/" ;      
                   // String filePath=  this.getServletContext().getResource("/images/profilepic").getPath()+"\\";
                    System.out.println("===="+fp);
                    fileItem.write( new File(fp+ custphoto));
                        } catch (Exception ex)
                          {
                         out.println(ex.toString());
                          }
                    
                }
                

            }
            
             SessionFactory sf=NewHibernateUtil.getSessionFactory();
            Session ss=sf.openSession();
            Transaction tr=ss.beginTransaction();
//            
//             String op="";
//                cr.add(Restrictions.eq("sId", Integer.parseInt(state)));
//            ArrayList<StateMaster> ar = (ArrayList<StateMaster>)cr.list();
//            if(ar.isEmpty()){
//                
//            }else{
//                StateMaster sm = ar.get(0);
//                op=sm.getSName();
//                
//            }

            
           
        
            CustomerDetail cd1=(CustomerDetail)ss.get(CustomerDetail.class, id);
                System.out.println("cid is "+cd1.getCId());
            CustomerDetail cd=new CustomerDetail();            
            
            cd.setUId(cd1.getUId());
            cd.setCId(cd1.getCId());
            cd.setCFname(firstn);
            cd.setCLname(lastn);
            cd.setCNum(num);
            cd.setCEmail(e);
            cd.setCState(state);
            cd.setCCity(city);
            cd.setCArea(area);
            cd.setCImg(custphoto);
           
            
            
            
            
            
            
            
            ss.evict(cd1);
            ss.update(cd);
  
            tr.commit();
            
            
                    RequestDispatcher rd=request.getRequestDispatcher("customerprofile.jsp");
                    rd.forward(request, response);

               }
                    
        
            }
        
            
            catch(HibernateException e)
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
        try {
            processRequest(request, response);
        } catch (FileUploadException ex) {
            Logger.getLogger(agent_update.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(agent_update.class.getName()).log(Level.SEVERE, null, ex);
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
    



