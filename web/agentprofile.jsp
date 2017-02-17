<%-- <%@page import="org.apache.jasper.runtime.JspRuntimeLibrary.include(ServletRequest, ServletResponse, String, JspWriter, boolean)"%>--%>
<%@page import="model.AreaMaster"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="model.AgentDetail"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="util.NewHibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
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
                xmlReq.onreadystatechange = function ()
                {
                    if (xmlReq.readyState == 4)
                    {
                        document.getElementById("areaid").innerHTML = xmlReq.responseText;
                        //alert(xmlReq.responseText);
                    }
                }
                xmlReq.open("get", url, true);
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
                   
                    <!--
                    <div class="menu-right">
                        <ul class="menu">
                            <li class="item1"><a href="#"> Menu<i class="glyphicon glyphicon-menu-down"> </i> </a>
                                <ul class="cute">
                                    <li class="subitem1"><a href="property_search_3.jsp">Buy </a></li>
                                    <li class="subitem2"><a href="property_search_3.jsp">Rent </a></li>
                                    <li class="subitem3"><a href="property_search_3.jsp">Hostels </a></li>
                                    <li class="subitem1"><a href="property_search_3.jsp">Resale </a></li>
                                    <li class="subitem2"><a href="loan.jsp">Home Loan</a></li>
                                    <li class="subitem3"><a href="property_search_3.jsp">Apartment </a></li>
                                    <li class="subitem3"><a href="agents.jsp">Dealer</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    
                    
                    -->
                    
                    
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


        <jsp:include page="agent_panel.jsp"></jsp:include>


        <%

            HttpSession hs = request.getSession();
            if (hs.getAttribute("user") != null) {

                Login ln = (Login) hs.getAttribute("user");
                SessionFactory sff = NewHibernateUtil.getSessionFactory();
                Session ss = sff.openSession();
                Transaction tr = ss.beginTransaction();
                Criteria cr = ss.createCriteria(AgentDetail.class);
                cr.add(Restrictions.eq("uId", ln));

                ArrayList<AgentDetail> alli = (ArrayList<AgentDetail>) cr.list();

                AgentDetail ad = alli.get(0);


        %> 

        <br>

        <div class="login-right">
            <!--<div style="width: 100%; float: left; text-align:center;">-->

                <!--<div style="width: 50%; margin: 0 auto;">-->
<!--                    <li style="background-image:url(images/profilepic/<%=ad.getAImg() %>);background-position: 50% 50%;    width: 250px;
    height: 250px;list-style-type: none;margin-left: 190px;" class="n1" ></li> -->
                    
              
                <!--</div>-->

  <div style="vertical-align:middle; text-align:center;">
  <img src="images/profilepic/<%=ad.getAImg() %> " style="margin: auto;display: block;width: 200px;height: 200px;border-radius: 50%;">

  </div>
            <!--</div>-->



            <h3><%=ad.getAFname() + " " + ad.getALname()%> </h3>
            <div class="login-top">

                <div class="feedback-top">
                    <form name="agentprofileform" action="agent_update" method="POST"  enctype="multipart/form-data">
                        First Name:<input name="fname" type="text"   placeholder="First Name" required="" value="<% out.println(ad.getAFname()); %>" >
                        Last Name:<input name="lname" type="text" placeholder="Last name" required="" value="<% out.println(ad.getALname()); %>">
                        Username:<input name="uname" readonly=""    type="text" placeholder="User Name" required="" value="<% out.println(ln.getUName()); %>">
                        <input type="hidden" name="id" value="<%=ad.getAId()%>" />


<!--
                        State : <select class="in-drop" name="state" id="stateid" onchange="getcities();">
                            <option><% out.println(ad.getAState()); %></option>
                            <%
                                if (request.getAttribute("state") != null) {
                                    ArrayList<StateMaster> stlist = (ArrayList<StateMaster>) request.getAttribute("state");
                                    for (int i = 0; i < stlist.size(); i++) {
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
                            <option><% out.print(ad.getACity()); %></option>



                            <%
                                if (request.getAttribute("city") != null) {
                                    ArrayList<CityMaster> ctlist = (ArrayList<CityMaster>) request.getAttribute("city");
                                    for (int i = 0; i < ctlist.size(); i++) {
                                        CityMaster cmaster = ctlist.get(i);
                                        String cname = cmaster.getCityName();
                                        String cid = cmaster.getCityId().toString();
                            %>
                            <option value="<%=cid%>"><%=cname%></option>
                            <%
                                    }
                                }

                            %>
                        </select><br>

                        Area:  <select class="in-drop" name="area" id="areaid">
                            <option><%  out.print(ad.getAArea()); %></option>


                            <%
                                if (request.getAttribute("city") != null) {
                                    ArrayList<AreaMaster> atlist = (ArrayList<AreaMaster>) request.getAttribute("area");
                                    for (int i = 0; i < atlist.size(); i++) {
                                        AreaMaster amaster = atlist.get(i);
                                        String aname = amaster.getAreaName();
                                        String aid = amaster.getAreaId().toString();
                            %>
                            <option value="<%=aid%>"><%=aname%></option>
                            <%
                                    }
                                }

                            %>


                        </select>

-->
                        State: <input name="state" type="text"   placeholder="State"  readonly="" required="" value="<% out.println(ad.getAState()); %>" >
                        City: <input name="city" type="text"   placeholder="City"  readonly="" required="" value="<% out.println(ad.getACity()); %>" >
                        Area: <input name="area" type="text"   placeholder="Area"  readonly="" required="" value="<% out.println(ad.getAArea()); %>" >
                        Email: <input name="email" type="text"   placeholder="Email Address" required="" value="<% out.println(ad.getAEmail()); %>" >
                        Address Line 1:<input  name="address1" type="text" placeholder="Address" value="<% out.println(ad.getAAddress1()); %>" > <br>
                        Address Line 2:<input  name="address2" type="text" placeholder="Address" value="<% out.println(ad.getAAddress2()); %>" > <br>
                        Number:<input name="number" type="text" placeholder="Contact Number" required="" value="<% out.println(ad.getANo()); %>" >
                        Password: <input name="pwd" readonly=""type="text"  placeholder="Password" required="" value="<% out.println(ln.getPwd()); %>">

                        Description: <textarea name="descrip" placeholder="Description"><% out.println(ad.getADescription()); %></textarea>
                        <br>
                        

                        Company Name:<input name="compname" type="text" placeholder="Company Name" required="" value="<% out.println(ad.getACompanyname()); %>">
                        Work Experience in Years: <input name="workx" type="text" placeholder="Work Experirence in Years" required="" value="<% out.println(ad.getAWorkx()); %>">
                        Profile Image:<input type="file" name="pic" value="<%=ad.getAImg() %>">
                        <br>

                        <label class="hvr-sweep-to-right">
                            <input type="submit" value="Save Changes">
                            
                        </label>
                        <br>
                        <br>
                    </form>
                        <br>

                    <%}%>
                </div>

            </div>
        </div>
        <!--//contact-->
        <!--footer-->
        <jsp:include page="footer1.jsp"></jsp:include>
        <!--//footer-->
    </body>
</html>