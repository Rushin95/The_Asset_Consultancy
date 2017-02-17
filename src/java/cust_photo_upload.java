/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import model.Login;


import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.output.*;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;


/**
 *
 * @author rushin
 */
public class cust_photo_upload extends HttpServlet {

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
        
        
        
           
                        HttpSession hs = request.getSession();
             
        
        try (PrintWriter out = response.getWriter()) {
       

              
           Login ln = (Login)hs.getAttribute("user");
            
            String pname=ln.getUName();
            String p="";
            
                   
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
//             
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
                    
                }
                else
                {
                    
                    String extension;
                    String fieldName=fileItem.getFieldName();
                    
                    if(fieldName.equals("photo"));
                    
                    {
                    //getting name of file
                    p = new File(fileItem.getName()).getName();
                    //get the extension of file by diving name into substring
                    extension=p.substring(p.indexOf(".")+1,p.length());;
                    //rename file...concate name and extension
                    p=pname+"."+extension;
                    
                    try {
                    String filePath=  this.getServletContext().getRealPath("/images")+"\\";
                    fileItem.write( new File(filePath + p));
                        } catch (Exception ex)
                          {
                         out.println(ex.toString());
                          }
                    }
                }
                

            }
             
     //        hs.setAttribute("photo", photo);
     //        SessionFactory sf=NewHibernateUtil.getSessionFactory();
     //        Session s=sf.openSession();
     //        Transaction t=s.beginTransaction();
     //       Imagedata im=new Imagedata();
     //       im.setIname(pname);
     //       im.setIurl(photo);
     //        s.save(im);
     //        t.commit();
//          
            RequestDispatcher rd=request.getRequestDispatcher("viewserv");
            rd.forward(request, response);
//            response.sendRedirect("viewserv");
            
        }catch(Exception ex){
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
