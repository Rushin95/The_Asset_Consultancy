<%@page import="model.AgentFeedback"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Login"%>
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
<meta name="keywords" content="Real Home Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
</head>
<body>
<!--header-->
<jsp:include page="header1.jsp"></jsp:include>

<!--//-->	
<div class=" banner-buying">
	<div class=" container">
	<h3><span>Feedba</span>ck</h3> 
	<!---->
	
	<div class="clearfix"> </div>
		<!--initiate accordion-->
		<script type="text/javascript">
			$(function() {
			    var menu_ul = $('.menu > li > ul'),
			           menu_a  = $('.menu > li > a');
			    menu_ul.hide();
			    menu_a.click(function(e) {
			        e.preventDefault();
			        if(!$(this).hasClass('active')) {
			            menu_a.removeClass('active');
			            menu_ul.filter(':visible').slideUp('normal');
			            $(this).addClass('active').next().stop(true,true).slideDown('normal');
			        } else {
			            $(this).removeClass('active');
			            $(this).next().stop(true,true).slideUp('normal');
			        }
			    });
			
			});
		</script>
      		
	</div>
</div>
<!--//header-->



        <jsp:include page="agent_panel.jsp"></jsp:include>
<!--contact-->



        
<div class="feedback" style="    padding: 2em 0;">
    
    
   
	<div class="container">
             <h4 style="font-size: 28px;" >People's feedback about you:</h4>
		
		
                
          <%

                        if (request.getAttribute("afL") != null) {
                            ArrayList<AgentFeedback> afL = (ArrayList<AgentFeedback>) request.getAttribute("afL");

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

                                Sorry No Feedbacks About You.
                    <%
                        }
                    %>

 
                </div>
        </div>
</div>







        
        
        
        
        <!--//contact-->
<!--footer-->
<jsp:include page="footer1.jsp"></jsp:include>

<!--//footer-->
</body>
</html>