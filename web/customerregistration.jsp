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
                    <h3><span>Registra</span>tion</h3> 
                    <!---->
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
            <div class="login-right">
                <div class="container">
                    <h3>Register as a Customer</h3>
                    <div class="login-top">

                        <div class="form-info">
                            <form name="registrationfrom" action="reg_serv_cust">
                                <input name="fname" type="text"   placeholder="First Name" required="" >
                                <input name="lname" type="text" placeholder="Last name" required="">
                                <input name="uname"    type="text" placeholder="User Name" required="">




                                State : <select name="state" id="stateid" onchange="getcities();">
                                    <option>Select</option>
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
                            </select></br>

                            <br>
                            City : <select name="city" id="cityid" onchange="getareas();">
                                <option>Select</option>
                            </select>
                            
                            <br><br>

                            Area:  <select name="area" id="areaid">
                                <option>Select</option>
                            </select><br><br>                         






                            <input name="email" type="text"   placeholder="Email Address" required="" >
                            <input name="number" type="text" placeholder="Contact Number" required="">
                            <input name="pwd" type="password"  placeholder="Password " required="">



                            <label class="hvr-sweep-to-right">
                                <input type="submit" value="Sign Up">
                            </label>
                        </form>
                        <p>Already have a The Asset Consultancy account? <a href="login.jsp">Login</a></p>
                    </div>

                </div>















            </div>
            <!--//contact-->
            <!--footer-->
            <jsp:include page="footer1.jsp"></jsp:include>

            <!--//footer-->
    </body>
</html>