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
import model.Login;
import model.AgentDetail;
import model.AreaMaster;
import model.CityMaster;
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
public class agent_update extends HttpServlet {

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
        
        try  {
           
            if(hs.getAttribute("user")!=null)
            {
            Login ln = (Login) hs.getAttribute("user");
            System.out.println(ln.getUId());
        
           String fn="";  
        String lastn="";
        String un="";  
        String state="";
        String city="";
        String area="";
        String e="";  
        String ad1="";
        String ad2="";
        String num="";
        String p="";
        String des="";
        String cmp="";
        String work="";
        String agentphoto="";
        String agentname="";
        int id = 0 ;
        
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
                   fn=fileItem.getString();
               }
               else if(fieldName.equals("id"))
               {
                   id= Integer.parseInt(fileItem.getString());
               }
               else if(fieldName.equals("lname"))
               {
                   lastn=fileItem.getString();
               }
               else if(fieldName.equals("uname"))
               {
                   un=fileItem.getString();
               }
               else if(fieldName.equals("state"))
               {
                   state=fileItem.getString();
               }
               else if(fieldName.equals("city"))
               {
                   city=fileItem.getString();
               }
               else if(fieldName.equals("area"))
               {
                   area=fileItem.getString();
               }
               else if(fieldName.equals("email"))
               {
                   e=fileItem.getString();
               }
               else if(fieldName.equals("address1"))
               {
                   ad1=fileItem.getString();
               }
               else if(fieldName.equals("address2"))
               {
                   ad2=fileItem.getString();
               }
               else if(fieldName.equals("number"))
               {
                   num=fileItem.getString();
                  
               }
               else if(fieldName.equals("pwd"))
               {
                   p=fileItem.getString();
               }
               
               else if(fieldName.equals("descrip"))
               {
                   des=fileItem.getString();
               }
               else if(fieldName.equals("compname"))
               {
                   cmp=fileItem.getString();
               }
               else if(fieldName.equals("workx"))
               {
                  work=fileItem.getString();
               }
                      
                        
                }
                else
                {
                    
                    
                    
                    
                    agentphoto = new File(fileItem.getName()).getName();

                    System.out.println(agentphoto);
                    try {
                        
                        
                        // FOR UBUNTU add GETRESOURCE  and GETPATH
                        
                        
                     String fp="/home/rushin/NetBeansProjects/The_Asset_Consultancy/web/images/profilepic/" ;  
//                    String filePath=  this.getServletContext().getResource("/images/profilepic").getPath()+"//";
                        System.out.println("===="+fp);
                    fileItem.write( new File(fp + agentphoto));
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
            AgentDetail agd2 = (AgentDetail)ss.get(AgentDetail.class, id);
       AgentDetail agd = new AgentDetail();
        
            agd.setUId(agd2.getUId());
            agd.setAId(agd2.getAId());
            agd.setACompanyname(cmp);
            agd.setADescription(des);
            agd.setAEmail(e);
            agd.setAFname(fn);
            agd.setAImg(agentphoto);
            agd.setALname(lastn);
            agd.setANo(num);
            agd.setAWorkx(work);
            agd.setACity(city);
            agd.setAArea(area);
            agd.setAState(state);
            agd.setAAddress1(ad1);
            agd.setAAddress2(ad2);
            agd.setAStatus(null);
            agd.setARating(null);
            agd.setAStatus("Accepted");
           // agd.getUId().setPwd(p);
           // agd.getUId().setUName(un);
            
            
            
            ss.evict(agd2);
            ss.update(agd);
            tr.commit();
//       }
            
            
            
                    RequestDispatcher rd=request.getRequestDispatcher("agentprofile.jsp");
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
