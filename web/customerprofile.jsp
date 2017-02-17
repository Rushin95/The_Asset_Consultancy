<%@page import="model.AreaMaster"%>
<%@page import="util.NewHibernateUtil"%>
<%@page import="model.CustomerDetail"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="model.AgentDetail"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="model.Login"%>
<%@page import="model.CityMaster"%>
<%@page import="model.StateMaster"%>
<%@page import="java.util.ArrayList"%>
<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
    <head>
        <title>The Asset Consultancy A Real Estate Flat Bootstarp Resposive Website Template | Register :: w3layouts</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.min.js"></script>
        <!-- Custom Theme files -->
        <!--menu-->
        <script src="js/scripts.js"></script>
        <link href="css/styles.css" rel="stylesheet">
        <!--//menu-->
        <!--theme-style-->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
        <!--//theme-style-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="The Asset Consultancy  Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

        <script type="text/javascript">
            function getcities()
            {
                var sid = document.getElementById("stateid").value;
                var url = "getcity?state=" + sid;
                var xmlReq = new XMLHttpRequest();
                xmlReq.onreadystatechange = function ()
                {
                    if (xmlReq.readyState == 4)
                    {
                        document.getElementById("cityid").innerHTML = xmlReq.responseText;
                    }
                }
                xmlReq.open("get", url, true);
                xmlReq.send();
            }
            
             function getareas()
            {
               var cid = document.getElementById("cityid").value;
                var url = "getarea?city=" + cid;
                var xmlReq = new XMLHttpRequest();
                xmlReq.onreadystatechange=function()
                {
                    if(xmlReq.readyState==4)
                    {
                        document.getElementById("areaid").innerHTML = xmlReq.responseText;
                        //alert(xmlReq.responseText);
                    }
                }
                xmlReq.open("get",url,true);
                xmlReq.send()
            }
        </script>


    </head>
    <body>
        <!--header-->
        <jsp:include page="header1.jsp"></jsp:include>

            <!--//-->	
            <div class=" banner-buying">
                <div class=" container">
                    <h3><span>Prof</span>ile</h3> 
                    <!---->
                    <div class="clearfix"> </div>
                    <!--initiate accordion-->
                    <script type="text/javascript">
                        $(function () {
                            var menu_ul = $('.menu > li > ul'),
                                    menu_a = $('.menu > li > a');
                            menu_ul.hide();
                            menu_a.click(function (e) {
                                e.preventDefault();
                                if (!$(this).hasClass('active')) {
                                    menu_a.removeClass('active');
                                    menu_ul.filter(':visible').slideUp('normal');
                                    $(this).addClass('active').next().stop(true, true).slideDown('normal');
                                } else {
                                    $(this).removeClass('active');
                                    $(this).next().stop(true, true).slideUp('normal');
                                }
                            });

                        });
                    </script>

                </div>
            </div>
            <!--//header-->
   
            <!--contact-->
            

 <%

                    HttpSession hs = request.getSession();
                        if (hs.getAttribute("user") != null) {
                            Login ln = (Login) hs.getAttribute("user");
                            
                            switch (ln.getURole()) {
                    case "customer":
                        {
                            %>
                            <jsp:include page="customer_panel.jsp"></jsp:include>
                             <%       
                            break;
                        }
                    case "agent":
                        {
                            %>
                            <jsp:include page="agent_panel.jsp"></jsp:include>
                            <%
                            break; 
                        }
                    default:
                    {
                        out.print("Not Signed in ");
                        break;
                    }
                        
                }
                        }
        %>
        



<br>
       <%

                       //HttpSession hs = request.getSession();
                        if (hs.getAttribute("user") != null) {
                            Login ln = (Login) hs.getAttribute("user");

                            SessionFactory sff = NewHibernateUtil.getSessionFactory();
                            Session ss = sff.openSession();
                            Transaction tr = ss.beginTransaction();

                            Criteria cr = ss.createCriteria(CustomerDetail.class);

                            cr.add(Restrictions.eq("uId", ln));

                            ArrayList<CustomerDetail> alli = (ArrayList<CustomerDetail>) cr.list();

                            CustomerDetail cd = alli.get(0);


                    %> 




            <div class="login-right">
                <div class="container">

                    <div style="vertical-align:middle; text-align:center;">



                        <img src="images/profilepic/<%=cd.getCImg() %> " style="margin: auto;display: block;height: 200px;width: 200px;border-radius: 50%;">






                    </div>



                    <h3><%=cd.getCFname()+" "+cd.getCLname() %> </h3>
                    <div class="login-top">





             


                    <div class="form-info">
                        <form name="custprofilefrom" action="cust_update" method="POST"  enctype="multipart/form-data">
                           
                            
                            <input type="hidden" name="id" value="<%=cd.getCId() %>" />
                            
                            
                            
                            <input name="fname" type="text"   placeholder="First Name" required="" value="<% out.println(cd.getCFname());%>" >
                            <input name="lname" type="text" placeholder="Last name" required="" value="<% out.println(cd.getCLname());%>" >
                            <input readonly="" name="uname" type="text" placeholder="User Name" required="" value="<% out.println(ln.getUName()); %>">



                <!--                       
                                        State : <select class="in-drop" name="state" id="stateid" onchange="getcities();">
                                                    <option><% out.println(cd.getCState()); %></option>
                <%
                    if(request.getAttribute("state")!=null)
                    {
                        ArrayList<StateMaster> stlist = (ArrayList<StateMaster>)request.getAttribute("state");
                        for(int i=0;i<stlist.size();i++)
                        {
                            StateMaster smaster = stlist.get(i);
                            String sname = smaster.getSName();
                            String sid = smaster.getSId().toString();
                            %>
                            <option value="<%=sid%>"><%=sname%></option>
                            <%
                        }
                    }
                %>
            </select></br>
            <br>
            
                        City : <select class="in-drop" name="city" id="cityid" onchange="getareas();">
                            <option><% out.print(cd.getCCity()); %></option>
                            
                            
                            
                            <% 
                            if(request.getAttribute("city")!=null)
                            {
                              ArrayList<CityMaster> ctlist = (ArrayList<CityMaster>)request.getAttribute("city");
                        for(int i=0;i<ctlist.size();i++)
                        {
                            CityMaster cmaster = ctlist.get(i);
                            String cname = cmaster.getCityName();
                            String cid=cmaster.getCityId().toString();
                            %>
                            <option value="<%=cid%>"><%=cname%></option>
                            <%
                        }  
                            }
                            
                            %>
            </select><br>
                                                
                   Area:  <select class="in-drop" name="area" id="areaid">
                       <option><%  out.print(cd.getCArea()); %></option>
                       
                       
                       <% 
                            if(request.getAttribute("city")!=null)
                            {
                              ArrayList<AreaMaster> atlist = (ArrayList<AreaMaster>)request.getAttribute("area");
                        for(int i=0;i<atlist.size();i++)
                        {
                            AreaMaster amaster = atlist.get(i);
                            String aname = amaster.getAreaName();
                            String aid=amaster.getAreaId().toString();
                            %>
                            <option value="<%=aid%>"><%=aname%></option>
                            <%
                        }  
                            }
                            
                            %>
                       
                       
                   </select><br><br>  
-->


                            State: <input name="state" type="text"   placeholder="State"  readonly="" required="" value="<% out.println(cd.getCState()); %>" >
                        City: <input name="city" type="text"   placeholder="City"  readonly="" required="" value="<% out.println(cd.getCCity()); %>" >
                        Area: <input name="area" type="text"   placeholder="Area"  readonly="" required="" value="<% out.println(cd.getCArea()); %>" >
                        
                            <input name="email" type="text"   placeholder="Email Address" required="" value="<% out.println(cd.getCEmail()); %>">
                            
                            <input name="number" type="text" placeholder="Contact Number" required="" value="<% out.println(cd.getCNum()); %>">
                            <input readonly="" name="pwd" type="text"  placeholder="Password " required="" value="<% out.println(ln.getPwd()); %>">
                             Select file: <input type="file" multiple="" name="photo">
                               
  <br>

                            <label class="hvr-sweep-to-right">
                              
                                <input type="submit" value="Save Changes">
                            </label>
                        </form>
                        <%}%>
                            



                    </div>

                </div>















            </div>
                        <br>
            <!--//contact-->
            <!--footer-->
            <jsp:include page="footer1.jsp"></jsp:include>

            <!--//footer-->
    </body>
</html>