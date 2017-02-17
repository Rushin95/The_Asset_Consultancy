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
                xmlReq.onreadystatechange=function()
                {
                    if(xmlReq.readyState==4)
                    {
                        document.getElementById("cityid").innerHTML = xmlReq.responseText;
                    }
                }
                xmlReq.open("get",url,true);
                xmlReq.send();
            }
        </script>


</head>
<body>
        
        
        <div class="banner-bottom-top">
			<div class="container">
			<div class="bottom-header">
				<div class="header-bottom">
					<div class=" bottom-head">
                                            <a href="getstate?id=6">
                                                    <div class="buy-media">
                                                    <i class="buy"> </i>
                                                    <h6>Profile</h6>
                                                                </div>
                                                            </a>
							</div>
					
				
					
					
					<div class=" bottom-head">
						<a href="getgroups?id=0">
							<div class="buy-media">
							<i class="sell"> </i>
							<h6>Group</h6>
							</div>
						</a>
					</div>
					<div class=" bottom-head">
                                            <a href="getstate?id=8">
							<div class="buy-media">
							<i class="loan"> </i>
							<h6>Analysis & Prediction</h6>
							</div>
						</a>
					</div>
					<div class=" bottom-head">
						<a href="getstate?id=9">
							<div class="buy-media">
							<i class="apart"> </i>
							<h6>Properties</h6>
							</div>
						</a>
					</div>
					<div class=" bottom-head">
						<a href="getstate?id=4">
							<div class="buy-media">
							<i class="deal"> </i>
							<h6>Agents</h6>
							</div>
						</a>
                                        </div>
                                        
                                        	<div class=" bottom-head">
                                                    <a href="ViewAgentFeedback">
							<div class="buy-media">
                                                                <i class="rent"> </i>
                                                                <h6>Feedback</h6>
							</div>
						</a>
                                                </div>
					
                                        
					<div class="clearfix"> </div>
				</div>
			</div>
	</div>
	</div>
        
        
        
        
    </body>
</html>
