<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>The Asset Consultancy A Real Estate Category Flat Bootstarp Resposive Website Template | Mobile_App :: w3layouts</title>
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
	<h3><span>Mobi</span>le</h3> 
	<!---->
	<div class="menu-right">
		 <ul class="menu">
			<li class="item1"><a href="#"> Menu<i class="glyphicon glyphicon-menu-down"> </i> </a>
			<ul class="cute">
				<li class="subitem1"><a href="property_search_3.jsp">Buy </a></li>
				<li class="subitem2"><a href="property_search_3.jsp">Rent </a></li>
				<li class="subitem3"><a href="property_search_3.jsp">Hostels </a></li>
				<li class="subitem1"><a href="property_search_3.jsp">Resale</a></li>
				<li class="subitem2"><a href="loan.jsp">Home Loan</a></li>
				<li class="subitem3"><a href="property_search_3.jsp">Apartment </a></li>
				<li class="subitem3"><a href="agents.jsp">Dealers</a></li>
			</ul>
		</li>
		</ul>
	</div>
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
<!---->
<div class="phone">
		<div class="container">
			<div class="col-md-6">
				<img src="images/ph1.png" class="img-responsive" alt="">
			</div>
			<div class="col-md-6 phone-text">
				<h4>Search Homes Everywhere</h4>
					<div class="text-1">
						<h5>Custom Location Tracker</h5>
						<p>There are many variations of passages of Lorem Ipsum available, but the majorit</p>
					</div>
					<div class="text-1">
						<h5>Map Search</h5>
						<p>There are many variations of passages of Lorem Ipsum available, but the majorit</p>
					</div>
					<div class="text-1">
						<h5>Quick Details</h5>
						<p>There are many variations of passages of Lorem Ipsum available, but the majorit</p>
					</div>
					<a href="#" class="hvr-sweep-to-right more">Download the App</a>
			</div>
		</div>
	</div>
<!--footer-->
<jsp:include page="footer1.jsp"></jsp:include>

<!--//footer-->
</body>
</html>