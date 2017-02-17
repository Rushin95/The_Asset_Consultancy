<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>The Asset Consultancy A Real Estate Category Flat Bootstarp Resposive Website Template | Home_Loan :: w3layouts</title>
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
	<h3><span>Lor</span>em</h3> 
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
<div class="loan_single">
	<div class="container">
		<div class="loan-col">
			<h3>Apply For Loan</h3>
			<h4>Looking for a good deal for a <span>HOME LOAN?</span> Apply Now!!</h4>
			<form>
			<div class="col-loan">
				<ul class="loan-col1">
					<li><span>Purpose</span> </li><label>:</label>
					<li class="loan-list-top"><select class="drop-select">
							<option>Select</option>
							<option>Buy Ready-to-occupy home</option>
							<option>Buy under-construction home</option>
							<option>Buy a plot of land</option>
							<option>Transfer Existing Home Loan</option>
							<option>Repair &amp; Renovate own home</option>
						</select>
					</li>
				</ul>
				<ul class="loan-col1">
					<li><span>Loan Amount </span></li><label>:</label>
					<li class="loan-list-top"><input type="text" value="" placeholder="" required=""></li>
				</ul>
			
				<ul class="loan-col1">
					<li><span>Annual Income</span></li><label>:</label>
					<li class="loan-list-top"><select class="drop-select">
							<option>Please Select Income</option>
							<option>10k-20k</option>
							<option>20k-30k</option>
							<option>30k-40k</option>
							<option>40k-50k</option>
							<option>50k-60k</option>
							<option>60k-70k</option>
							<option>70k-80k</option>
							<option>80k-90k</option>
							<option>90k-1c</option>
						</select>
					</li>
				</ul>
				<ul class="loan-col1">
					<li><span>Name </span></li><label>:</label>
					<li class="loan-list-top"><input type="text" value="" placeholder="" required=""></li>
				</ul>
				<ul class="loan-col1">
					<li><span>Mobile</span></li><label>:</label>
					<li class="loan-list-top"><input type="text" value="" placeholder="" required=""></li>
				</ul>
				<ul class="loan-col1">
					<li><span>City</span> </li><label>:</label>
					<li class="loan-list-top"><select class="drop-select">
							<option> Select City</option>
							<option>Bangkok</option>
							<option>Tokyo</option>
							<option>London</option>
							<option>Paris</option>
							<option>Dhubai</option>
							<option>New Jerrsey</option>
							<option>Hongkong</option>
							<option>New York</option>
							<option>Rome</option>
							<option>Sydney</option>
							<option>Florence</option>
							<option>Istanbul</option>
							<option>Brezil</option>
							<option>Canda</option>
							<option>Malaysia</option>
							<option>Singapore</option>
							<option>Taiwan</option>
							<option>Spain</option>
							<option>More</option>
						</select>
					</li>
				</ul>
				<ul class="loan-col1">
					<li><span>Date of Birth</span> </li><label>:</label>
					<li class="loan-list-top"><select class="drop-select1">
							<option> Date</option>
							<option>01</option>
							<option>02</option>
							<option>03</option>
							<option>04</option>
							<option>05</option>
							<option>06</option>
							<option>07</option>
							<option>08</option>
							<option>09</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
							<option>13</option>
							<option>14</option>
							<option>15</option>
							<option>16</option>
							<option>17</option>
							<option>18</option>
							<option>19</option>
							<option>20</option>
							<option>21</option>
							<option>22</option>
							<option>23</option>
							<option>24</option>
							<option>25</option>
							<option>26</option>
							<option>27</option>
							<option>28</option>
							<option>29</option>
							<option>30</option>
							<option>31</option>
						</select>
						<select class="drop-select1">
							<option> Month</option>
							<option>Jan</option>
							<option>Feb</option>
							<option>Mar</option>
							<option>Apr</option>
							<option>May</option>
							<option>Jun</option>
							<option>Jul</option>
							<option>Aug</option>
							<option>Sep</option>
							<option>Oct</option>
							<option>Nov</option>
							<option>Dec</option>
						</select>
						<select class="drop-select1">
							<option> Year</option>
							<option>1992</option>
							<option>1991</option>
							<option>1990</option>
							<option>1989</option>
							<option>1988</option>
							<option>1987</option>
							<option>1986</option>
							<option>1985</option>
							<option>1984</option>
							<option>1983</option>
							<option>1982</option>
							<option>1981</option>
							<option>1980</option>
							<option>1979</option>
							<option>1978</option>
							<option>1977</option>
							<option>1976</option>
							<option>1975</option>
							<option>1974</option>
							<option>1973</option>
							<option>1972</option>
							<option>1971</option>
							<option>1970</option>
							<option>1969</option>
							<option>1968</option>
							<option>1967</option>
							<option>1966</option>
							<option>1965</option>
							<option>1964</option>
							<option>1963</option>
							<option>1962</option>
							<option>1961</option>
							<option>1960</option>
						</select>
					</li>
				</ul>
				<ul class="loan-col1">
					<li><span>Email</span></li><label>:</label>
					<li class="loan-list-top"><input type="text" value="" placeholder="" required=""></li>
				</ul>
				<p>I agree to The Asset Consultancy' Terms & Conditions. I would like to receive property related communication through Email, Call or SMS from The Asset Consultancy or any of its partners.</p>
				<div class="sub">
					<label class="hvr-sweep-to-right"><input type="submit" value="Apply" placeholder=""></label>
				</div>
			</div>
			<!---->
			<div class="loan-col1">
				<h4>EMI Calculator</h4>
				<ul class="loan-col1">
					<li><span>Amount of loan required</span></li><label>:</label>
					<li class="loan-list-top"><input type="text" value="" placeholder="" required=""></li>
				</ul>
				<ul class="loan-col1">
					<li><span>Tenure (in years)</span></li><label>:</label>
					<li class="loan-list-top"><input type="text" value="" placeholder="" required=""></li>
				</ul>
				<ul class="loan-col1">
					<li><span>Rate of Interest (in %)</span></li><label>:</label>
					<li class="loan-list-top"><input type="text" value="" placeholder="" required=""></li>
				</ul>
				<div class="sub1">
					<label class="hvr-sweep-to-right"><input type="submit" value="Apply" placeholder=""></label>
					<label class="hvr-sweep-to-right re-set"><input type="reset" value="Clear" placeholder=""></label>
				</div>
			</div>
			<!---->
			</form>
		</div>
	</div>
</div>
<!--footer-->
<jsp:include page="footer1.jsp"></jsp:include>

<!--//footer-->
</body>
</html>