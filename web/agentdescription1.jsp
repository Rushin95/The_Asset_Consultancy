<%@page import="model.GmemberDetail"%>
<%@page import="model.AgentFeedback"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Login"%>
<%@page import="model.AgentDetail"%>
<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
    <head>
        <title>The Asset Consultancy A Real Estate Category Flat Bootstarp Resposive Website Template | Contact :: w3layouts</title>
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
        <meta name="keywords" content="The Asset Consultancy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    </head>
    <body>
        <!--header-->

        <jsp:include page="header1.jsp"></jsp:include>






            <!--//-->	
            <div class=" banner-buying">
                <div class=" container">
                    <h3><span>Get the best agents</span> so far..</h3> 
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



        <!--contact-->




        <%
            
            
            AgentDetail ad = (AgentDetail) request.getAttribute("ad");


        %>





        <div class="contact">
            <div class="container">
                <h3><% out.println(ad.getAFname() + " " + ad.getALname());%></h3>
                <div class="contact-top">
                    <div class="col-md-6 contact-top1">
                        <h4 > Agent Info</h4>

                        <img class="img-responsive" style="float: left;padding-right: 20px;height:130px;width:150px;" src="images/profilepic/<%=ad.getAImg() %> "></img>


                        <p class="text-contact" style="text-align: justify;"><%out.println(ad.getADescription()); %> </p>
                        <br><br><br><br>
                        <div class="contact-address">
                            <div class="col-md-6 contact-address1">
                                <h5>Address</h5>
                                <p><b><%out.println(ad.getACompanyname()); %></b></p>
                                <p><%out.println(ad.getAAddress1()); %></p>
                                <p><%out.println(ad.getAAddress2()+", "+ad.getAArea()); %></p>
                             

                                <p><%out.println(ad.getACity()+", "+ad.getAState()); %></p>
                             
                            </div>
                            <div class="col-md-6 contact-address1">
                                <h5>Email Address </h5>
                                <p>General :<a href="malito:mail@demolink.org"> <% out.println(ad.getAEmail());%></a></p>

                            </div>
                            <div class="clearfix"></div>
                        </div>






                        <div class="contact-address">
                            <div class="col-md-6 contact-address1">
                                <h5 >Phone </h5>
                                <p>Call at: <%=ad.getANo() %></p>
                                
                            </div>


                            <div class="col-md-6 contact-address1">
                                <h5 >Working Experience and Rating: </h5>
                                <p>Worked for <%=ad.getAWorkx() %> Years</p>
                                <p>Rated <% out.println(ad.getARating());%>s</p>
                            </div>





                            <div class="clearfix"></div>
                        </div>




                        <a href="feedback_agent.jsp?id=<%=ad.getAId()%>" class="hvr-sweep-to-right more" >Give Agent Feedback</a>
                      
            
                            <a href="getgroups?id=1&&uid=<%=ad.getUId().getUId() %>" class="hvr-sweep-to-right more">Add to Group</a>
                        
                       





                    </div>
                    <div class="col-md-6 contact-right">

                        <form>
                            <input type="text"  placeholder="Name" required="">
                            <input type="text" placeholder="Email" required="">
                            <input type="text" placeholder="Subject" required="">
                            <textarea  placeholder="Message" requried=""></textarea>
                            <label class="hvr-sweep-to-right">
                                <input type="submit" value="Submit">
                            </label>
                        </form>
                    </div>
                    <div class="clearfix"> </div>
                </div>


                <div class="dealer-top">
                    <h4>Assigned Properties</h4>
                    <div class="deal-top-top">
                        <div class="col-md-3 top-deal-top">
                            <div class=" top-deal">
                                <a href="single.jsp" class="mask"><img src="images/de.jpg" class="img-responsive zoom-img" alt=""></a>
                                <div class="deal-bottom">
                                    <div class="top-deal1">
                                        <h5><a href="single.jsp"> Property 1</a></h5>
                                        <p>Plot Area : 150 Sq.Yrds</p>
                                        <p>Price: $250000</p>
                                    </div>
                                    <div class="top-deal2">
                                        <a href="single.jsp" class="hvr-sweep-to-right more">More</a>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 top-deal-top">
                            <div class=" top-deal">
                                <a href="single.jsp" class="mask"><img src="images/de1.jpg" class="img-responsive zoom-img" alt=""></a>
                                <div class="deal-bottom">
                                    <div class="top-deal1">
                                        <h5><a href="single.jsp"> Property 2</a></h5>
                                        <p>Plot Area : 150 Sq.Yrds</p>
                                        <p>Price: $250000</p>
                                    </div>
                                    <div class="top-deal2">
                                        <a href="single.jsp" class="hvr-sweep-to-right more">More</a>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 top-deal-top">
                            <div class=" top-deal">
                                <a href="single.jsp" class="mask"><img src="images/de2.jpg" class="img-responsive zoom-img" alt=""></a>
                                <div class="deal-bottom">
                                    <div class="top-deal1">
                                        <h5><a href="single.jsp"> Property 3</a></h5>
                                        <p>Plot Area : 150 Sq.Yrds</p>
                                        <p>Price: $250000</p>
                                    </div>
                                    <div class="top-deal2">
                                        <a href="single.jsp" class="hvr-sweep-to-right more">More</a>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 top-deal-top ">
                            <div class=" top-deal">
                                <a href="single.jsp" class="mask"><img src="images/de3.jpg" class="img-responsive zoom-img" alt=""></a>
                                <div class="deal-bottom">
                                    <div class="top-deal1">
                                        <h5><a href="single.jsp"> Property 4</a></h5>
                                        <p>Plot Area : 150 Sq.Yrds</p>
                                        <p>Price: $250000</p>
                                    </div>
                                    <div class="top-deal2">
                                        <a href="single.jsp" class="hvr-sweep-to-right more">More</a>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>		
                    <br>		
                </div>

                <br>
                <br>



                <div class="single-grid">
                    <h5>Feedback of this agent:</h5>




                    <%

                        if (request.getAttribute("afl") != null) {
                            ArrayList<AgentFeedback> afL = (ArrayList<AgentFeedback>) request.getAttribute("afl");

                            {
                                for (AgentFeedback af : afL) {
                    %>












                    <div class="media">
                        <div class="media-left">
                            <a href="#">
                                <img class="media-object" src="images/av.png" alt="" />
                            </a>
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading"><%=af.getUId().getUName()%></h4>
                            <p><%=af.getComment()%></p>
                        </div>
                    </div>

                    <%
                            }
                        }
                    } else {
                    %>

                                Be the first one to give feedback.
                    <%
                        }
                    %>

                    <br>


                </div>


                    <br>







            </div>






            <!--//contact-->
            <!--footer-->

            <jsp:include page="footer1.jsp"></jsp:include>



            <!--//footer-->
    </body>
</html>