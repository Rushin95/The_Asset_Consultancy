

<%@page import="model.GmemberDetail"%>
<%@page import="model.GroupDetail"%>
<%@page import="model.StateMaster"%>
<%@page import="model.Login"%>
<%@page import="functions.get_random"%>


<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="model.CityMaster"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="java.util.Random"%>
<%@page import="model.PropDetail"%>
<%@page import="model.PropDetail"%>
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
        <title>The Asset Consultancy subA Real Estate Category Flat Bootstarp Resposive Website Template | Buy :: w3layouts</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.min.js"></script>
        <!-- Custom Theme files -->
        <!--menu-->
        <script src="js/scripts.js"></script>



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

        
<!--        ADDED BY ME-->


        
        
        
        
    </head>
    <body>
        <!--header-->
        <jsp:include page="header1.jsp"></jsp:include>
            <!--//-->	


            <div class=" banner-buying">
                <div class=" container">
                    <h3><span>Interact</span> freely..</h3> 
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
            <br>
           
          
            
            <h4 style="
                float: left;
                width: 50%;font-size: 1.5em;
                color: #27da93;
                font-family: 'Montserrat-Regular';">
                
                Your groups:</h4>
            
            <a class="hvr-sweep-to-right more" style="
               
               width: 153px;
               margin-top: 0px;
               float: right;
               font-size: 0.9em;
               color: #fff;
               text-decoration: none;
               background: #000;
               padding: 10px 15px;display: inline-block;
               vertical-align: middle;
               transform: translateZ(0);
               box-shadow: 0 0 1px rgba(0, 0, 0, 0);
               backface-visibility: hidden;position: relative;
           " href="getuser_bycity">Create new group</a>

            
            <br>
            <%
            
            if(request.getAttribute("grouplist")!=null)
            {
                ArrayList<GmemberDetail> gd=(ArrayList<GmemberDetail> )request.getAttribute("grouplist");
            
            for (GmemberDetail group : gd) {
            %>
            <br>
             
            <a  href="GetGroupChatServ?gid=<%=group.getGId().getGId()%>"><%=group.getGId().getGName() %></a>
        
        <% ;
            }
        
            }
            else
            {   
                
                 out.println("Sorry, you are not a part of any group");
            }
        %>
       

        

        </div>
            




        <br>

        <!--footer-->
        <jsp:include page="footer1.jsp"></jsp:include>
        <!--//footer-->
    </body>
    
  
    
</html>