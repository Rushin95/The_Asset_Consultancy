<%@page import="model.Login"%>
<%@page import="functions.get_random"%>
<%@page import="model.AgentDetail"%>
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
        <title>The Asset Consultancy</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.min.js"></script>
        <!-- Custom Theme files se-->
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
                    <h3><span>Agen</span>ts</h3> 
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




        <%

            HttpSession hs = request.getSession();
            if (hs.getAttribute("user") != null) {
                Login ln = (Login) hs.getAttribute("user");

                switch (ln.getURole()) {
                    case "customer": {
        %>
        <jsp:include page="customer_panel.jsp"></jsp:include>
        <%
                break;
            }
            case "agent": {
        %>
        <jsp:include page="agent_panel.jsp"></jsp:include>
        <%
                        break;
                    }
                    default: {
                        out.print("Not Signed in ");
                        break;
                    }

                }
            }
        %>





        <!--Dealers-->
        <div class="dealers"    style="    padding-top: 14px;">
            <div class="container">
                <h3>Find The Right Agents</h3>




                <!--price-->
                <div class="price" style="    margin-top: 35px;">

                    <form name="searchagent" action="searchagent_byarea">
                        <div class="price-grid">
                            <div class="col-sm-4 price-top">




                                <h4>State</h4>
                                <select class="in-drop" name="state" id="stateid" onchange="getcities();">
                                    <option>Select State</option>
                                    <%
                                        if (request.getAttribute("state") != null) {
                                            ArrayList<StateMaster> stlist = (ArrayList<StateMaster>) request.getAttribute("state");
                                            for (int i = 0; i < stlist.size(); i++) {
                                                StateMaster smaster = stlist.get(i);
                                                String sname = smaster.getSName();
                                                String sid = smaster.getSId().toString();
                                    %>
                                    <option value="<%=sid%>"> <%=sname%> </option>
                                    <%
                                            }
                                        }
                                    %>
                                </select>


                            </div>
                            <div class="col-sm-4 price-top">
                                <h4>City</h4>
                                <select class="in-drop" name="city" id="cityid" onchange="getareas();">
                                    <option>Select City</option>
                                </select>

                            </div>

                            <div class="col-sm-4 price-top">
                                <h4>Area</h4>
                                <select class="in-drop" name="area" id="areaid">
                                    <option>Select Area</option>
                                </select>
                            </div>


                            <div class="clearfix"> </div>
                        </div>

                        <div class="price-grid">


                            <div class="col-sm-4 price-top">
                                <input type="submit" value="Search">

                            </div>



                        </div>


                    </form>           







                    <form name="searchagent" action="searchagent_byname">         

                        <div class="price-grid">


                            <div class="col-sm-4 price-top">
                                <h4>Name</h4>

                                <input name="agentname" type="text" required="" placeholder="Type Name">


                            </div>



                        </div>


                        <div class="price-grid">


                            <div class="col-sm-4 price-top">
                                <input type="submit" value="Search">

                            </div>



                        </div>







                    </form>


                </div>

























                <div class="dealer-top">

                    <div class="deal-top-top">


                        <%
                            if ((request.getAttribute("agent_array")) != null) {
                                ArrayList<AgentDetail> aa = (ArrayList<AgentDetail>) request.getAttribute("agent_array");
                                for (int i = 0; i < aa.size(); i++) {
                                    AgentDetail ad1 = aa.get(i);
                        %>  
                        <div class="col-md-3 top-deal-top">


                            <div class=" top-deal">
                                <a href="" class="mask"><img src="images/profilepic/<%=ad1.getAImg() %> " style="    height: 200px;
    width: 100%;" class="img-responsive zoom-img" alt=""></a>
                                <div class="deal-bottom">
                                    <div class="top-deal1">
                                        <h5><a href="">



                                                <%    out.print(ad1.getAFname() + " " + ad1.getALname());


                                                %> 



                                            </a></h5>
                                        <p>Rating: <% out.print(ad1.getARating());%></p>
                                        <p>Work ex: <%=ad1.getAWorkx() %></p>
                                    </div>
                                    <div class="top-deal2">
                                        <a href="GetAgentDetailServ?aid=<%= ad1.getAId()%>" class="hvr-sweep-to-right more">More</a>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                        </div>
                        <%
                            }

                        } else {
                                
                                
                                 String msg = (String) request.getAttribute("error");
                                        if (msg != null) {
                                            out.println("<font color=red size=4px>" +msg + "</font>");
                                        }
                                        
                        %>



                            <%
                                
                                
          if(request.getAttribute("adl")!=null&&request.getAttribute("error")==null)
          {
          
              ArrayList<AgentDetail> al=(ArrayList<AgentDetail>)request.getAttribute("adl");
                                
      //                          get_random g = new get_random();
                                AgentDetail ad = al.get(5);

                                hs.setAttribute("agentobj", ad);

                            %>
                        <div class="col-md-3 top-deal-top">

                            <div class=" top-deal">
                                <a href="agentdescription.jsp" class="mask"><img src="images/profilepic/<%=ad.getAImg() %> " style="  width: 100%;  height: 200px;"class="img-responsive zoom-img" alt=""></a>
                                <div class="deal-bottom">
                                    <div class="top-deal1">
                                        <h5><a href="agentdescription.jsp">



                                                <%    out.print(ad.getAFname() + " " + ad.getALname());


                                                %> 



                                            </a></h5>
                                        <p>Rating: <% out.print(ad.getARating());%></p>
                                        <p>Work ex: <%=ad.getAWorkx() %> Years</p>
                                    </div>
                                    <div class="top-deal2">
                                        <a href="GetAgentDetailServ?aid=<%= ad.getAId()%>" class="hvr-sweep-to-right more">More</a>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                        </div>

       <div class="col-md-3 top-deal-top">

                            <%
                              //  get_random g1 = new get_random();
                                AgentDetail ad1 =al.get(6);

                                hs.setAttribute("agentobj", ad1);

                            %>
                            <div class=" top-deal">
                                <a href="agentdescription.jsp" class="mask"><img src="images/profilepic/<%=ad1.getAImg() %> " style="  width: 100%;  height: 200px;"class="img-responsive zoom-img" alt=""></a>
                                <div class="deal-bottom">
                                    <div class="top-deal1">
                                        <h5><a href="agentdescription.jsp">



                                                <%    out.print(ad1.getAFname() + " " + ad1.getALname());


                                                %> 



                                            </a></h5>
                                        <p>Rating: <% out.print(ad1.getARating());%></p>
                                        <p>Work ex: <%=ad1.getAWorkx() %> Years</p>
                                    </div>
                                    <div class="top-deal2">
                                        <a href="GetAgentDetailServ?aid=<%= ad1.getAId()%>" class="hvr-sweep-to-right more">More</a>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                        </div>
                                    
                                    
                                           <div class="col-md-3 top-deal-top">

                            <%
                                //get_random g2 = new get_random();
                                AgentDetail ad2 = al.get(7);
                                hs.setAttribute("agentobj", ad2);

                            %>
                            <div class=" top-deal">
                                <a href="agentdescription.jsp" class="mask"><img src="images/profilepic/<%=ad2.getAImg() %> " style="  width: 100%;  height: 200px;"class="img-responsive zoom-img" alt=""></a>
                                <div class="deal-bottom">
                                    <div class="top-deal1">
                                        <h5><a href="agentdescription.jsp">



                                                <%    out.print(ad2.getAFname() + " " + ad2.getALname());


                                                %> 



                                            </a></h5>
                                        <p>Rating: <% out.print(ad2.getARating());%></p>
                                        <p>Work ex: <%=ad2.getAWorkx() %> Years</p>
                                    </div>
                                    <div class="top-deal2">
                                        <a href="GetAgentDetailServ?aid=<%= ad2.getAId()%>" class="hvr-sweep-to-right more">More</a>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                        </div>
                                    
                                    
                                           <div class="col-md-3 top-deal-top">

                            <%
                                //get_random g3 = new get_random();
                                AgentDetail ad3 = al.get(8);

                                hs.setAttribute("agentobj", ad3);

                            %>
                            <div class=" top-deal">
                                <a href="agentdescription.jsp" class="mask"><img src="images/profilepic/<%=ad3.getAImg() %> " style="  width: 100%;  height: 200px;"class="img-responsive zoom-img" alt=""></a>
                                <div class="deal-bottom">
                                    <div class="top-deal1">
                                        <h5><a href="agentdescription.jsp">



                                                <%    out.print(ad3.getAFname() + " " + ad3.getALname());


                                                %> 



                                            </a></h5>
                                        <p>Rating: <% out.print(ad3.getARating());%></p>
                                        <p>Work ex: <%=ad3.getAWorkx() %> Years</p>
                                    </div>
                                    <div class="top-deal2">
                                        <a href="GetAgentDetailServ?aid=<%= ad3.getAId()%>" class="hvr-sweep-to-right more">More</a>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                        </div>
                                           <div class="col-md-3 top-deal-top">

                            <%
                                //get_random g4 = new get_random();
                                AgentDetail ad4 = al.get(9);

                                hs.setAttribute("agentobj", ad4);

                            %>
                            <div class=" top-deal">
                                <a href="agentdescription.jsp" class="mask"><img src="images/profilepic/<%=ad4.getAImg() %> " style="  width: 100%;  height: 200px;"class="img-responsive zoom-img" alt=""></a>
                                <div class="deal-bottom">
                                    <div class="top-deal1">
                                        <h5><a href="agentdescription.jsp">



                                                <%    out.print(ad4.getAFname() + " " + ad4.getALname());


                                                %> 



                                            </a></h5>
                                        <p>Rating: <% out.print(ad4.getARating());%></p>
                                        <p>Work ex: <%=ad4.getAWorkx() %> Years</p>
                                    </div>
                                    <div class="top-deal2">
                                        <a href="GetAgentDetailServ?aid=<%= ad4.getAId()%>" class="hvr-sweep-to-right more">More</a>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                        </div>










                        <%
                            }
         
                            }
                        %>


                        <div class="clearfix"> </div>
                    </div>		


                </div>











                <br>
                <br>










            </div>
        </div>
        <!--footer-->
        <jsp:include page="footer1.jsp"></jsp:include>

        <!--//footer-->
    </body>
</html>