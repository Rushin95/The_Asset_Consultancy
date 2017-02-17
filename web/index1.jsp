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
        <meta name="keywords" content="The Asset Consultancy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- slide -->
        <script src="js/responsiveslides.min.js"></script>
        <script>
            $(function () {
                $("#slider").responsiveSlides({
                    auto: true,
                    speed: 500,
                    namespace: "callbacks",
                    pager: true,
                });
            });
        </script>
    </head>
    <body >
        <!--header-->
        <div class="navigation">
            <div class="container-fluid">
                <nav class="pull">
                    <ul>
                        <li><a  href="index.jsp">Home</a></li>
                        <li><a  href="about.jsp">About Us</a></li>
                        <li><a  href="blog.jsp">Blog</a></li>
                        <li><a  href="terms.jsp">Terms</a></li>
                        <li><a  href="privacy.jsp">Privacy</a></li>
                        <li><a  href="contact.jsp">Contact</a></li>
                    </ul>
                </nav>			
            </div>
        </div>

        <div class="header">
            <div class="container">
                <!--logo-->
                <div class="logo">
                    <h1><a href="index.jsp">THE ASSET CONSULTANCY</a></h1>
                    <h4 style="color: white;">....discovering spaces!</h4>
                </div>
                <!--//logo-->
                <div class="top-nav">
                    <ul class="right-icons">
                        <li><span ><i class="glyphicon glyphicon-phone"> </i>+1384 757 546</span></li>
                        <li><a  href="login.jsp"><i class="glyphicon glyphicon-user"> </i>Login</a></li>
                        <li><a class="play-icon popup-with-zoom-anim" href="#small-dialog"><i class="glyphicon glyphicon-search"> </i> </a></li>

                    </ul>
                    <div class="nav-icon">
                        <div class="hero fa-navicon fa-2x nav_slide_button" id="hero">
                            <a href="#"><i class="glyphicon glyphicon-menu-hamburger"></i> </a>
                        </div>	
                        <!---
                        <a href="#" class="right_bt" id="activator"><i class="glyphicon glyphicon-menu-hamburger"></i>  </a>
                --->
                    </div>
                    <div class="clearfix"> </div>
                    <!---pop-up-box---->

                    <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
                    <script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
                    <!---//pop-up-box---->
                    <div id="small-dialog" class="mfp-hide">
                        <!----- tabs-box ---->
                        <div class="sap_tabs">	
                            <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
                                <ul class="resp-tabs-list">
                                    <li class="resp-tab-item " aria-controls="tab_item-0" role="tab"><span>All Homes</span></li>
                                    <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>For Sale</span></li>
                                    <li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>For Rent</span></li>
                                    <div class="clearfix"></div>
                                </ul>				  	 
                                <div class="resp-tabs-container">
                                    <h2 class="resp-accordion resp-tab-active" role="tab" aria-controls="tab_item-0"><span class="resp-arrow"></span>All Homes</h2><div class="tab-1 resp-tab-content resp-tab-content-active" aria-labelledby="tab_item-0" style="display:block">
                                        <div class="facts">
                                            <div class="login">
                                                <input type="text" value="Search Address, Neighborhood, City or Zip" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                                                                    this.value = 'Search Address, Neighborhood, City or Zip';
                                                                                                }">		
                                                <input type="submit" value="">
                                            </div>        
                                        </div>
                                    </div>
                                    <h2 class="resp-accordion" role="tab" aria-controls="tab_item-1"><span class="resp-arrow"></span>For Sale</h2><div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
                                        <div class="facts">									
                                            <div class="login">
                                                <input type="text" value="Search Address, Neighborhood, City or Zip" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                                                                    this.value = 'Search Address, Neighborhood, City or Zip';
                                                                                                }">		
                                                <input type="submit" value="">
                                            </div> 
                                        </div>	
                                    </div>									
                                    <h2 class="resp-accordion" role="tab" aria-controls="tab_item-2"><span class="resp-arrow"></span>For Rent</h2><div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
                                        <div class="facts">
                                            <div class="login">
                                                <input type="text" value="Search Address, Neighborhood, City or Zip" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                                                                    this.value = 'Search Address, Neighborhood, City or Zip';
                                                                                                }">		
                                                <input type="submit" value="">
                                            </div> 
                                        </div>	
                                    </div>
                                </div>
                            </div>
                            <script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
                            <script type="text/javascript">
                                                                                $(document).ready(function () {
                                                                                    $('#horizontalTab').easyResponsiveTabs({
                                                                                        type: 'default', //Types: default, vertical, accordion           
                                                                                        width: 'auto', //auto or any width like 600px
                                                                                        fit: true   // 100% fit in a container
                                                                                    });
                                                                                });
                            </script>	
                        </div>
                    </div>
                    <script>
                        $(document).ready(function () {
                            $('.popup-with-zoom-anim').magnificPopup({
                                type: 'inline',
                                fixedContentPos: false,
                                fixedBgPos: true,
                                overflowY: 'auto',
                                closeBtnInside: true,
                                preloader: false,
                                midClick: true,
                                removalDelay: 300,
                                mainClass: 'my-mfp-zoom-in'
                            });

                        });
                    </script>


                </div>
                <div class="clearfix"> </div>
            </div>	
        </div>
        <!--//-->	
        <div class=" header-right">
            <div class=" banner">
                <div class="slider">
                    <div class="callbacks_container">
                        <ul class="rslides" id="slider">		       
                            <li>
                                <div class="banner1">
                                    <div class="caption">
                                        <h3><span>Get the best </span>property options</h3>
                                        <p>.</p>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="banner2">
                                    <div class="caption">
                                        <h3><span>Contact the</span> best agents</h3>
                                        <p>.</p>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="banner3">
                                    <div class="caption">
                                        <h3><span>Analyze the real</span> estate market</h3>
                                        <p>.</p>
                                    </div>
                                </div>
                            </li>		
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <!--header-bottom-->
        <div class="banner-bottom-top">
            <div class="container">
                <div class="bottom-header">
                    <div class="header-bottom">
                        <div class=" bottom-head">

                        </div>
                        <div class=" bottom-head">
                            <a href="buy.jsp">
                                <div class="buy-media">
                                    <i class="rent"> </i>
                                    <h6>Rent</h6>
                                </div>
                            </a>
                        </div>
                        <div class=" bottom-head">
                            <a href="buy.jsp">
                                <div class="buy-media">
                                    <i class="pg"> </i>
                                    <h6>Hostels</h6>
                                </div>
                            </a>
                        </div>
                        <div class=" bottom-head">
                            <a href="buy.jsp">
                                <div class="buy-media">
                                    <i class="sell"> </i>
                                    <h6>Resale</h6>
                                </div>
                            </a>
                        </div>
                        <div class=" bottom-head">
                            <a href="loan.jsp">
                                <div class="buy-media">
                                    <i class="loan"> </i>
                                    <h6>Home Loans</h6>
                                </div>
                            </a>
                        </div>
                        <div class=" bottom-head">
                            <a href="buy.jsp">
                                <div class="buy-media">
                                    <i class="apart"> </i>
                                    <h6>Projects</h6>
                                </div>
                            </a>
                        </div>
                        <div class=" bottom-head">
                            <a href="agents.jsp">
                                <div class="buy-media">
                                    <i class="deal"> </i>
                                    <h6>Agents</h6>
                                </div>
                            </a>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
            </div>
        </div>
        <!--//-->

        <!--//header-bottom-->


        <!--//header-->
        <!--content-->
        <div class="content">
            <div class="content-grid">
                <div class="container">
                    <h3>Most Popular</h3>
                    <div class="col-md-4 box_2">
                        <a href="single.jsp" class="mask">
                            <img class="img-responsive zoom-img" src="images/pc4.jpg" alt="">
                            <span class="four">40,000$</span>
                        </a>
                        <div class="most-1">
                            <h5><a href="single.jsp">Surel Apartments</a></h5>
                            <p>Ahmedabad</p>
                        </div>
                    </div>
                    <div class="col-md-4 box_2">
                        <a href="single.jsp" class="mask">
                            <img class="img-responsive zoom-img" src="images/pc5.jpg" alt="">
                            <span class="four">50,000$</span>
                        </a>
                        <div class="most-1">
                            <h5><a href="single.jsp">Sunrise Row Houses</a></h5>
                            <p>Amritsar</p>
                        </div>

                    </div>
                    <div class="col-md-4 box_2">
                        <a href="single.jsp" class="mask">
                            <img class="img-responsive zoom-img" src="images/pc3.jpg" alt="" >
                            <span class="four">60,000$</span>
                        </a>
                        <div class="most-1">
                            <h5><a href="single.jsp">Platinum Bunglows</a></h5>
                            <p>Pune</p>
                        </div>

                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <!--service-->
            <div class="services">
                <div class="container">
                    <div class="service-top">
                        <h3>Services</h3>
                        <p>We provide following features</p>
                    </div>
                    <div class="services-grid">
                        <div class="col-md-6 service-top1">
                            <div class=" ser-grid">	
                                <a href="#" class="hi-icon hi-icon-archive glyphicon glyphicon-user"> </a>
                            </div>
                            <div  class="ser-top">
                                <h4>Easy to access information</h4>
                                <p>involves the analysis/predictions of current and future price of real-estate commercials and buidlings. The goal is to conduct that depending on 
                                    analysis/predictions made for the prices of Estate, whether the customer should invest his money on that Estate or not. Upon examination of the results, it can be 
                                    inferred if investing money on the estate would bring out a positive outcome or a negative one, and hence makes the customer aware about the advantages/flaws of 
                                    investing at the particular place. </p>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="col-md-6 service-top1">
                            <div class=" ser-grid">	
                                <a href="#" class="hi-icon hi-icon-archive glyphicon glyphicon-leaf"> </a>
                            </div>
                            <div  class="ser-top">
                                <h4>Analysis of real estate market</h4>
                                <p>To analyze the price fluctuations in the real estate market, this analysis shows
                                    the real time price rise in a chart format.
                                </p>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="services-grid">
                        <div class="col-md-6 service-top1">
                            <div class=" ser-grid">	
                                <a href="#" class="hi-icon hi-icon-archive glyphicon glyphicon-cog"> </a>
                            </div>
                            <div  class="ser-top">
                                <h4>Prediction of real estate market</h4>
                                <p>Contrary to popular belief, Lorem Ipsum is not simply random text. 
                                    It has roots in a piece of classical.Contrary to popular belief, Lorem Ipsum </p>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="col-md-6 service-top1">
                            <div class=" ser-grid">	
                                <a href="#" class="hi-icon hi-icon-archive glyphicon glyphicon-file"> </a>
                            </div>
                            <div  class="ser-top">
                                <h4>Support for inter-user interaction</h4>
                                <p>Group chats are the prime source to connect with the agents. Isn't it?
                                    Hence,this would reduce the job of the customers to connect with the agents. </p>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
            </div>
            <!--//services-->
            <!--features-->
            <div class="content-middle">
                <div class="container">
                    <div class="mid-content">
                        <h3>the best features</h3>
                        <p>Some of the most exciting features we promise to offer in this website. </p>
                        <a class="hvr-sweep-to-right more-in" href="single.jsp">Read More</a>
                    </div>
                </div>
            </div>
            <!--//features-->
            <!--phone-->
            <div class="phone">
                <div class="container">
                    <div class="col-md-6">
                        <img src="images/ph1.png" class="img-responsive" alt=""/>
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
                        <a href="mobile_app.jsp" class="hvr-sweep-to-right more">Download the App</a>
                    </div>
                </div>
            </div>
            <!--//phone-->
            <!--project--->
            <div class="project">
                <div class="container">
                    <h3>Project Gallery</h3>
                    <div class="project-top">
                        <div class="col-md-3 project-grid">
                            <div class="project-grid-top">
                                <a href="single.jsp" class="mask"><img src="images/ga.jpg" class="img-responsive zoom-img" alt=""/></a>
                                <div class="col-md1">
                                    <div class="col-md2">
                                        <div class="col-md3">
                                            <span class="star"> 4.5</span>
                                        </div>
                                        <div class="col-md4">
                                            <strong>Venice</strong>
                                            <small>50 Reviews</small>
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>
                                    <p>2, 3, 4 BHK Flats</p>
                                    <p class="cost">$65,000</p>
                                    <a href="single.jsp" class="hvr-sweep-to-right more">See Details</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 project-grid">
                            <div class="project-grid-top">
                                <a href="single.jsp" class="mask"><img src="images/ga1.jpg" class="img-responsive zoom-img" alt=""/></a>
                                <div class="col-md1">
                                    <div class="col-md2">
                                        <div class="col-md3">
                                            <span class="star"> 4.5</span>
                                        </div>
                                        <div class="col-md4">
                                            <strong>Venice</strong>
                                            <small>50 Reviews</small>
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>
                                    <p>2, 3, 4 BHK Flats</p>
                                    <p class="cost">$65,000</p>
                                    <a href="single.jsp" class="hvr-sweep-to-right more">See Details</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 project-grid">
                            <div class="project-grid-top">
                                <a href="single.jsp" class="mask"><img src="images/ga2.jpg" class="img-responsive zoom-img" alt=""/></a>
                                <div class="col-md1">
                                    <div class="col-md2">
                                        <div class="col-md3">
                                            <span class="star"> 4.5</span>
                                        </div>
                                        <div class="col-md4">
                                            <strong>Venice</strong>
                                            <small>50 Reviews</small>
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>
                                    <p>2, 3, 4 BHK Flats</p>
                                    <p class="cost">$65,000</p>
                                    <a href="single.jsp" class="hvr-sweep-to-right more">See Details</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 project-grid">
                            <div class="project-grid-top">
                                <a href="single.jsp" class="mask"><img src="images/ga3.jpg" class="img-responsive zoom-img" alt=""/></a>
                                <div class="col-md1">
                                    <div class="col-md2">
                                        <div class="col-md3">
                                            <span class="star"> 4.5</span>
                                        </div>
                                        <div class="col-md4">
                                            <strong>Venice</strong>
                                            <small>50 Reviews</small>
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>
                                    <p>2, 3, 4 BHK Flats</p>
                                    <p class="cost">$65,000</p>
                                    <a href="single.jsp" class="hvr-sweep-to-right more">See Details</a>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>				
                </div>
            </div>
            <!--//project-->
            <!--test-->


            <!--//agent start-->
            <div class="content-bottom">
                <div class="container">
                    <h3>Our Agents</h3>
                    <div class="col-md-6 name-in">
                        <div class=" bottom-in">
                            <p class="para-in">Finest prediction website.</p>
                            <i class="dolor"> </i>
                            <div class="men-grid">
                                <a href="#" class="men-top"><img class="img-responsive men-top" src="images/te.jpg" alt=""></a>
                                <div class="men">
                                    <span>Desai Adit</span>
                                    <p>Adit Desai Photography</p>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                        <div class=" bottom-in">
                            <p class="para-in">If you are searching for a good property,
                                then you must use the analysis tool of this website. It gives
                                the closest predictions to your questions.</p>
                            <i class="dolor"> </i>
                            <div class="men-grid">
                                <a href="#" class="men-top"><img class="img-responsive " src="images/te2.jpg" alt=""></a>
                                <div class="men">
                                    <span>Jatri Dave</span>
                                    <p>Accenture company</p>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6  name-on">
                        <div class="bottom-in ">
                            <p class="para-in">Great Work</p>
                            <i class="dolor"> </i>
                            <div class="men-grid">
                                <a href="#" class="men-top"><img class="img-responsive " src="images/te1.jpg" alt=""></a>
                                <div class="men">
                                    <span>Bansari Shah</span>
                                    <p>TCS</p>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>







            <!--//agent section over-->

            <div class="content-bottom">
                <div class="container">
                    <h3>Testimonials</h3>
                    <div class="col-md-6 name-in">
                        <div class=" bottom-in">
                            <p class="para-in">Using this site for analysis generation was one of the best
                                thing I have come across.</p>
                            <i class="dolor"> </i>
                            <div class="men-grid">
                                <a href="#" class="men-top"><img class="img-responsive men-top" src="images/te.jpg" alt=""></a>
                                <div class="men">
                                    <span>Roger V. Coates</span>
                                    <p>Software Engineer</p>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                        <div class=" bottom-in">
                            <p class="para-in">User friendly environment.Good platform to connect
                                with customers</p>
                            <i class="dolor"> </i>
                            <div class="men-grid">
                                <a href="#" class="men-top"><img class="img-responsive " src="images/te2.jpg" alt=""></a>
                                <div class="men">
                                    <span>Ann K. Perez</span>
                                    <p>Property Agent</p>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6  name-on">
                        <div class="bottom-in ">
                            <p class="para-in">Property Analysis and Large scale platform to connect with
                                customers and agents.</p>
                            <i class="dolor"> </i>
                            <div class="men-grid">
                                <a href="#" class="men-top"><img class="img-responsive " src="images/te1.jpg" alt=""></a>
                                <div class="men">
                                    <span>Nancy M. Picker</span>
                                    <p>Interior Designer</p>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>		
            <!--//test-->	
            <!--partners-->
            <div class="content-bottom1">
                <h3>Our Partners</h3>
                <div class="container">
                    <ul>
                        <li><a href="#"><img class="img-responsive" src="images/lg.png" alt=""></a></li>
                        <li><a href="#"><img class="img-responsive" src="images/lg1.png" alt=""></a></li>
                        <li><a href="#"><img class="img-responsive" src="images/lg2.png" alt=""></a></li>
                        <li><a href="#"><img class="img-responsive" src="images/lg3.png" alt=""></a></li>
                        <li><a href="#"><img class="img-responsive" src="images/lg4.png" alt=""></a></li>
                        <div class="clearfix"> </div>
                    </ul>
                    <ul>
                        <li><a href="#"><img class="img-responsive" src="images/lg5.png" alt=""></a></li>
                        <li><a href="#"><img class="img-responsive" src="images/lg6.png" alt=""></a></li>
                        <li><a href="#"><img class="img-responsive" src="images/lg7.png" alt=""></a></li>
                        <li><a href="#"><img class="img-responsive" src="images/lg8.png" alt=""></a></li>
                        <li><a href="#"><img class="img-responsive" src="images/lg9.png" alt=""></a></li>	
                        <div class="clearfix"> </div>
                    </ul>
                </div>
            </div>	
            <!--//partners-->	
        </div>
        <!--footer-->
        <div class="footer">
            <div class="container">
                <div class="footer-top-at">
                    <div class="col-md-3 amet-sed">
                        <h4>Our Company</h4>
                        <ul class="nav-bottom">
                            <li><a href="about.jsp">About Us</a></li>
                            <li><a href="blog.jsp">For Sale By Owner Blog</a></li>
                            <li><a href="mobile_app.jsp">Mobile</a></li>
                            <li><a href="terms.jsp">Terms & Conditions</a></li>
                            <li><a href="privacy.jsp">Privacy Policy</a></li>	
                            <li><a href="blog.jsp">Blog</a></li>

                        </ul>	
                    </div>
                    <div class="col-md-3 amet-sed ">
                        <h4>Work With Us</h4>
                        <ul class="nav-bottom">
                            <li><a href="single.jsp">Real Estate Brokers</a></li>
                            <li><a href="single.jsp">Business Development</a></li>
                            <li><a href="single.jsp">Affiliate Programs</a></li>
                            <li><a href="contact.jsp">Sitemap</a></li>
                            <li><a href="career.html">Careers</a></li>
                            <li><a href="feedback.jsp">Feedback</a></li>	
                        </ul>	
                    </div>
                    <div class="col-md-3 amet-sed">
                        <h4>Customer Support</h4>
                        <p>Mon-Fri, 7AM-7PM </p>
                        <p>Sat-Sun, 8AM-5PM </p>
                        <p>177-869-6559</p>
                        <ul class="nav-bottom">
                            <li><a href="#">Live Chat</a></li>
                            <li><a href="faqs.jsp">Frequently Asked Questions</a></li>
                            <li><a href="suggestion.jsp">Make a Suggestion</a></li>
                        </ul>	
                    </div>
                    <div class="col-md-3 amet-sed ">
                        <h4>Property Services</h4>
                        <ul class="nav-bottom">
                            <li><a href="single.jsp">Residential Property</a></li>
                            <li><a href="single.jsp">Commercial Property</a></li>
                            <li><a href="login.jsp">Login</a></li>
                            <li><a href="customerregistration.jsp">Register</a></li>
                            <li><a href="typo.jsp">Short Codes</a></li>	
                        </ul>	
                        <ul class="social">
                            <li><a href="#"><i> </i></a></li>
                            <li><a href="#"><i class="gmail"> </i></a></li>
                            <li><a href="#"><i class="twitter"> </i></a></li>
                            <li><a href="#"><i class="camera"> </i></a></li>
                            <li><a href="#"><i class="dribble"> </i></a></li>
                        </ul>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="container">
                    <div class="col-md-4 footer-logo">
                        <h2><a href="index.jsp">The Asset Consultancy</a></h2>
                    </div>
                    <div class="col-md-8 footer-class">
                        <p >© 2015 The Asset Consultancy. All Rights Reserved | Design by  <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <!--//footer-->
    </body>
</html>