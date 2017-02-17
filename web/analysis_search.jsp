<%@page import="java.util.ArrayList"%>
<%@page import="model.StateMaster"%>
<%@page import="model.StateMaster"%>
<%@page import="model.Login"%>
<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!dOCTYPE html>
<html>
    <head>
        <title>The Asset Consultancy </title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.min.js"></script>
        <!-- Custom Theme files -->
        <!--menu-->
        <script src="js/scripts.js"></script>
        <link href="css/styles.css" rel="stylesheet">
        <script src="js/script.js" type="text/javascript"></script>
        <!--//menu-->
        <!--theme-style-->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
        <!--//theme-style-->
        <!--<meta name="viewport" content="width=device-width, initial-scale=1">-->
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="The Asset Consultancy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
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
                        //alert(xmlReq.responseText);
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

        <!--ADDED BY ME-->



        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1">


        <link href="js/percent_circle/bootstrap.min.css" rel="stylesheet" type="text/css"/>


        <!--        <link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
                <script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
                <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        -->


    </head>
    <body>
        <!--header-->

        <jsp:include page="header1.jsp"></jsp:include>
        <%--<%@include file="header1.jsp" %>--%>


        <!--//-->	
        <div class=" banner-buying">
            <div class=" container">
                <h3><span>Analyze</span> Assets</h3> 
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






        <div class="container">

            <!--price-->
            <br>
            <p style="float: left;
    color: #467ABB;"> Analyze the trend using the form:</p>
             
             <a style="margin-left: 693px;" href="prediction.jsp">Click Here to Predict a price.</a>
             
             <div class="price" style="margin-top: 30px;">
               
                <form action="analysis_criteria">
                    <div class="price-grid">
                        <div class="col-sm-4 price-top">
                            <h4>State</h4>
                            <select class="in-drop" name="state" id="stateid" onchange="getcities();" required="">
                                <option value="all" >Select All</option>
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
                            <select class="in-drop" name="city" id="cityid" onchange="getareas();" required="">
                                <option value="all">Select All</option>
                            </select>
                        </div>
                        <div class="col-sm-4 price-top">
                            <h4>Area</h4>
                            <select class="in-drop" name="area" id="areaid" required="">
                                <option value="all">Select All</option>
                            </select>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="price-grid">
                        <div class="col-sm-4 price-top">
                            <h4>Category</h4>
                            <select class="in-drop" name="type" id="typeid">
                                <option>Type of Property</option>
                                <option value="Apartments" >Apartments</option>
                                <option value="Row Houses ">Row Houses</option>
                                <option value="Bunglows">Bunglows</option>
                                <option value="Commercial">Commercial</option>

                            </select>
                        </div>

                        <div class="col-sm-4 price-top">
                            <h4>No of Rooms</h4>
                            <select class="in-drop" name="bhk" id="bhkid">
                                <option>No. of Bedrooms</option>
                                <option value="1">1 BHK</option>
                                <option value="2">2 BHK</option>
                                <option value="3">3 BHK</option>
                                <option value="more">3+ BHK</option>
                            </select>
                        </div>

                        <div class="clearfix"> </div>
                    </div>
                    <div class="price-grid">
                        <div class="col-sm-6 price-top1">
                            <!--<input type="submit" value="Search">-->
                             <input type="submit" id="btnProcess1" name="btnProcess1" value="Search" />
                             
                             
                             <!--
                             The hadoop is called by this link
                             
                             
                             <a href="AnalyzeAssets"> Start Analysis  </a>-->
                                 
                            <!--<input type="button" id="btnProcess" name="btnProcess" value="Process"  onclick="ajaxSyncRequestProcess('AnalyzeAssets')"/>-->
                            <p id="processMessage"></p>
                            <p id="message"></p>
                        </div>
                    </div>
                </form>    
            </div>
                            
                            
   
                            
<!--
    <input type="submit" id="example" name="btnProcess1" value="Search" onclick="changeText();"/>
     <script type="text/javascript" language="javascript">
        function changeText() {
            document.getElementById("example").innerHTML="h";
        }
    </script>-->
            <!---->


            <!--            
                        <div id="demo"><h2>Let AJAX change this text</h2></div>
            
            <button type="button" onclick="loadDoc()">Change Content</button>
            
            <script>
            function loadDoc() {
              var xhttp = new XMLHttpRequest();
              xhttp.onreadystatechange = function() {
                if (xhttp.readyState == 4 && xhttp.status == 200) {
                  document.getElementById("demo").innerHTML = xhttp.responseText;
                }
              };
              xhttp.open("GET", "percentage_js.jsp", true);
              xhttp.send();
            }
            </script>-->

            
            
            
            
            
            
            
            
            
<!--            
            //recently done
            
            
            

            <%
                if ((request.getAttribute("percent")) != null) {
                    double a = (double) request.getAttribute("percent");
                    System.out.print("in percent page" + a);

            %>

            <div class="column">   
                <div class="row">

                    <div class="circleGraphic2 col-md-3 col-sm-6"><%=a%></div>

                </div>
            </div>
            <%
                } else {
                    System.out.print("null");
                }
            %>

            -->
            
            
            
            
            
            
            
            
            
            
            
            
            
            <!--            <script type="text/javascript">
                            window.onload = function ()
                            {
            
                                $('.circleGraphic2').circleGraphic({'color': '#E53238'});
                            }
                        </script>-->
            
            
                     <button onclick="myFunction()">Show Average Annual Growth Rate:</button>
            
                     
                     
                        <div class="column">   
                            <div class="row" style="width: 1000px;">
            
                                <div style="width: 300px;height: 300px;" class="circleGraphic2 col-md-3 col-sm-6">76                              
                                </div>
            
                            </div>
                        </div>


            <script src="js/percent_circle/ga.js" type="text/javascript"></script>
            <!--<script src="js/percent_circle/jquery-2.1.4.min.js" type="text/javascript"></script>-->
            <script src="js/percent_circle/jquery.circleGraphic_1.js" type="text/javascript"></script>
            <link href="js/percent_circle/jquerysctipttop.css" rel="stylesheet" type="text/css"/>
                       <script>
                            function myFunction() {
                                $('.circleGraphic2').circleGraphic({'color': '#E53238'});
                            }
                        </script>



            <!--            <script type="text/javascript">
                                            window.onload = function ()
                                            {
            
                                                $('.circleGraphic2').circleGraphic({'color': '#E53238'});
                                            }
                        </script>-->


        </div>

        <jsp:include page="footer1.jsp"></jsp:include>

    </body>
    <!--<script type="text/javascript">
    
      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-36251023-1']);
      _gaq.push(['_setDomainName', 'jqueryscript.net']);
      _gaq.push(['_trackPageview']);
    
      (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
      })();
    
    </script>-->
</html>