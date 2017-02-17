
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
        <title>The Asset Cformonsultancy subA Real Estate Category Flat Bootstarp Resposive Website Template | Buy :: w3layouts</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.min.js"></script>
        <!-- Custom Theme files -->
        <!--menu-->
        <script src="js/scripts.js">


        </script>


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

    </head>
    <body>
        <!--header-->
        <jsp:include page="header1.jsp"></jsp:include>
            <!--//-->	









            <div class=" banner-buying">
                <div class=" container">
                    <h3><span>Our</span> Assets</h3> 
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





















 <div class="dealers" style="padding-top: 8px;">

        <div class="container">

<h3>Find The Right Property</h3>

            <div style="    padding-left: 81%;">
                <a class="hvr-sweep-to-right more" style="
                   width: 164px;
                   float: right;
                   font-size: 0.9em;
                   color: #fff;
                   text-decoration: none;
                   background: #000;
                   padding: 10px 15px;display: inline-block;
                   vertical-align: middle;
                   transform: translateZ(0);
                   box-shadow: 0 0 1px rgba(0, 0, 0, 0);
                   backface-visibility: hidden;position: relative;" 

                   href="getstate?id=3" >Add a New Property</a>
            </div>



            <!--price-->
            <br>
            <br>


            <form name="searchpropbyname" action="searchprop_byname">         

                <div class="price-grid">


                    <div class="col-sm-4 price-top">
                        <h4>Name</h4>

                        <input name="propname" type="text" required="" placeholder="Type Name">
                    </div>
                </div>
                <div class="price-grid">
                    <div class="col-sm-4 price-top">
                        <input type="submit" value="Search">

                    </div>
                </div>
            </form>
            <br>
            
<!--            
   <script Language="JavaScript">

function isBlankValid(){
        if (document.form.myForm.state.value===""){
           alert("Please make an effort to fill in the mandatory text field.");
        document.form.myForm.area.focus();
        return (false);
        }
return (true);
}

</script>-->
    
<form action="search_prop" name="myForm" onsubmit="return isBlankValid()" >
    
    
 
    

                <div class="price" style="    margin: 0em 0;padding-bottom: 0px;">
                    <div class="price-grid">
                        <div class="col-sm-4 price-top">
                            <h4>State</h4>
                            <select class="in-drop" name="state" id="stateid" onchange="getcities();" required="">
                                <option value="" selected>Select State</option>
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
                                <option  value="" selected>Select City</option>

                            </select>
                        </div>
                        <div class="col-sm-4 price-top">
                            <h4>Area</h4>
                            <select class="in-drop" name="area" id="areaid" required="">
                                <option  value="" selected>Select Area</option>

                            </select>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="price-grid">
                        <div class="col-sm-6 price-top1">
                            <h4>Price Range</h4>
                            <ul>
                                <li>

                                    <input type="number" name="minprice" value="" placeholder="From" required="">
                                </li>
                                <span>-</span>
                                <li>
                                    <input type="number" name="maxprice" value="" placeholder="To" required=""> 
                                </li>
                            </ul>
                        </div>
                        <div class="col-sm-6 price-top1">
                            <h4>Sqft. Area</h4>
                            <ul>
                                <li>
                                    <input type="number" name="minsqfeet" value="" placeholder="From" required="">
                                </li>
                                <span>-</span>
                                <li>
                                    <input type="number" name="maxsqfeet" value="" placeholder="To" required="">
                                </li>
                            </ul>
                        </div>
                        <div class="clearfix"> </div>
                    </div>



                </div>


                       
                            
                            <div class="single-buy" style="padding-top: 0px;">
                    <div class="col-sm-3 check-top-single">
                        <div class="single-bottom">
                            <h4>Property Type</h4>
                            <ul>
                                <li>
                                    <input type="checkbox" name="typegroup" id="brand" value="Commericial">
                                    <label for="brand"><span></span> Commercial</label>
                                </li>
                                <li>
                                    <input type="checkbox" name="typegroup" id="brand1" value="Apartments">
                                    <label for="brand1"><span></span>Apartments</label>
                                </li>
                                <li>
                                    <input type="checkbox" name="typegroup" id="brand2" value="Bunglows">
                                    <label for="brand2"><span></span>Bunglows</label>
                                </li>
                                <li>
                                    <input type="checkbox" name="typegroup" id="brand3" value="Row Houses">
                                    <label for="brand3"><span></span>Row Houses</label>
                                </li>

                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-3 check-top-single">
                        <div class="single-bottom">
                            <h4>BHK</h4>
                            <ul>
                                <li>
                                    <input type="checkbox" name="bhkgroup" id="brand5" value="1">
                                    <label for="brand5"><span></span> 1 BHK</label>
                                </li>
                                <li>
                                    <input type="checkbox" name="bhkgroup"  id="brand6" value="2">
                                    <label for="brand6"><span></span> 2 BHK</label>
                                </li>
                                <li>
                                    <input type="checkbox" name="bhkgroup" id="brand7" value="3">
                                    <label for="brand7"><span></span>3 BHK</label>
                                </li>
                                <li>
                                    <input type="checkbox" name="bhkgroup" id="brand8" value="more">
                                    <label for="brand8"><span></span> 3+ BHK</label>
                                </li>

                            </ul>
                        </div>
                    </div>

                    <div class="clearfix"> </div>

                    <br>
                    
                    <input type="submit" value="Search">   
                </div>



            </form>                     





            <!--                
                            <div class="top-grid">
                                <h3>Top City</h3>
                                <div class="grid-at">
                                    <div class="col-md-3 grid-city">
                                        <div class="grid-lo">
                                            <a href="property_search_2.jsp">
                                                <figure class="effect-layla">
                                                    <img class=" img-responsive" src="images/ce.jpg" alt="img06">
                                                    <figcaption>
                                                        <h4>London</h4>
            
                                                    </figcaption>			
                                                </figure>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-3 grid-city">
                                        <div class="grid-lo">
                                            <a href="property_search_2.jsp">
                                                <figure class="effect-layla">
                                                    <img class=" img-responsive" src="images/ce1.jpg" alt="img06">
                                                    <figcaption>
                                                        <h4>Sydney</h4>
            
                                                    </figcaption>			
                                                </figure>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-6 grid-city grid-city1">
                                        <div class="grid-me">
                                            <div class="col-md-8 grid-lo1">
                                                <div class=" grid-lo">
                                                    <a href="property_search_2.jsp">
                                                        <figure class="effect-layla">
                                                            <img class=" img-responsive" src="images/ce2.jpg" alt="img06">
                                                            <figcaption>
                                                                <h4 class="effect1">New York</h4>
            
                                                            </figcaption>			
                                                        </figure>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="col-md-4 grid-lo2">
                                                <div class=" grid-lo">
                                                    <a href="property_search_2.jsp">
                                                        <figure class="effect-layla">
                                                            <img class=" img-responsive" src="images/ce3.jpg" alt="img06">
                                                            <figcaption>
                                                                <h4 class="effect2">Rome</h4>
            
                                                            </figcaption>			
                                                        </figure>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>	
                                        <div class="grid-me">
                                            <div class="col-md-6 grid-lo3">
                                                <div class=" grid-lo">
                                                    <a href="property_search_2.jsp">
                                                        <figure class="effect-layla">
                                                            <img class="img-responsive" src="images/ce4.jpg" alt="img06">
                                                            <figcaption>
                                                                <h4 class="effect3">Singapore</h4>
            
                                                            </figcaption>			
                                                        </figure>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="col-md-6 grid-lo4">
                                                <div class=" grid-lo">
                                                    <a href="property_search_2.jsp">
                                                        <figure class="effect-layla">
                                                            <img class="img-responsive" src="images/ce5.jpg" alt="img06">
                                                            <figcaption>
                                                                <h4 class="effect3">Paris</h4>
            
                                                            </figcaption>			
                                                        </figure>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>	
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
            
                            </div>-->
        <!--</div>-->




        <!--<div class="dealers" style="padding-top: 8px;">-->
            <!--<div class="container">-->
                <!--<h3>Find The Right Property</h3>-->

                <div class="dealer-top">

                    <div class="clearfix"> </div>
                </div>		
                <div class="deal-top-top">


                    <%
                                    
                        if ((request.getAttribute("proplist")) != null) {
                            
                            System.out.print("inside....search result if");
                            
                            ArrayList<PropDetail> aa = (ArrayList<PropDetail>) request.getAttribute("proplist");
                            for (int i = 0; i < aa.size(); i++) {
                                PropDetail pd = aa.get(i);
                    %>  



                    <div class="col-md-3 top-deal-top">
                        <div class=" top-deal">
                            <a href="#" class="mask">
                                <img src="images/de4.jpg" class="img-responsive zoom-img" alt="" style="height: 169px" ></a>
                            <div class="deal-bottom" style="height: 142px;">
                                <div class="top-deal1">
                                    <h5 style="height: 42px;    width: 220px;"><a  href="#"> 


                                            <%
                                                out.print(pd.getPName());


                                            %>        


                                        </a></h5>
                                    <p>Plot Area :<%=pd.getPFloor()%> Sq.feet</p>
                                    <p>Price:Rs. <%=pd.getPPrice()%></p>
                                </div>
                                <div class="top-deal2" style="margin-top: 0px;">
                                    <a href="GetPropDetailServ?pid=<%=pd.getPId()%>" class="hvr-sweep-to-right more"
                                       style=" padding: 0px;
                                       height: 24px;
                                       width: 43px;
                                       margin-top: 0px;
                                       text-align: center;" >More</a>
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
                                        
                                        
                                        if(request.getAttribute("pdl")!=null&&request.getAttribute("error")==null)
                                        {
                                            System.out.print("inside the if..wrong place");
                                            
                                            ArrayList<PropDetail> pdl=(ArrayList<PropDetail>)request.getAttribute("pdl");
                                            
                                            //    get_random g = new get_random();
                                                PropDetail pd = pdl.get(0);
                                         
                                            %>  

                    <div class="col-md-3 top-deal-top">
                        <div class=" top-deal">
                            <a href="#" class="mask"><img src="images/de4.jpg" class="img-responsive zoom-img" alt=""></a>
                            <div class="deal-bottom" style="height: 142px;">
                                <div class="top-deal1">
                                    <h5 style="height: 42px;    width: 220px;"><a href="#"> 

<%
       out.print(pd.getPName());

                                                hs.setAttribute("propobj", pd);
%>
                                          


                                        </a></h5>
                                    <p>Plot Area :   <%=pd.getPFloor()%> Sq.feet</p>
                                    <p>Price:   Rs.<%=pd.getPPrice()%></p>
                                </div>
                                <div class="top-deal2" style="margin-top: 0px;">
                                    <a href="GetPropDetailServ?pid=<%=pd.getPId()%>" class="hvr-sweep-to-right more" 
                                       style="    padding: 0px;
                                       height: 24px;
                                       width: 43px;
                                       margin-top: 0px;
                                       text-align: center;">More</a>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                                       
                                       
                                       
                                       <%
                                       
                                          PropDetail pd1 = pdl.get(1);
                                       %>
                                       <div class="col-md-3 top-deal-top">
                        <div class=" top-deal">
                            <a href="#" class="mask"><img src="images/de4.jpg" class="img-responsive zoom-img" alt=""></a>
                            <div class="deal-bottom" style="height: 142px;">
                                <div class="top-deal1">
                                    <h5 style="height: 42px;    width: 220px;"><a href="#"> 

<%
       out.print(pd1.getPName());

                                                hs.setAttribute("propobj", pd1);
%>
                                          


                                        </a></h5>
                                    <p>Plot Area :   <%=pd1.getPFloor()%> Sq.feet</p>
                                    <p>Price:   Rs.<%=pd1.getPPrice()%></p>
                                </div>
                                <div class="top-deal2" style="margin-top: 0px;">
                                    <a href="GetPropDetailServ?pid=<%=pd1.getPId()%>" class="hvr-sweep-to-right more" 
                                       style="    padding: 0px;
                                       height: 24px;
                                       width: 43px;
                                       margin-top: 0px;
                                       text-align: center;">More</a>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                                       
                                       
                                       
                                       
                                       
                                       
                                       <%
                                       
                                          PropDetail pd2 = pdl.get(2);
                                       %>
                                       <div class="col-md-3 top-deal-top">
                        <div class=" top-deal">
                            <a href="#" class="mask"><img src="images/de4.jpg" class="img-responsive zoom-img" alt=""></a>
                            <div class="deal-bottom" style="height: 142px;">
                                <div class="top-deal1">
                                    <h5 style="height: 42px;    width: 220px;"><a href="#"> 

<%
       out.print(pd2.getPName());

                                                hs.setAttribute("propobj", pd2);
%>
                                          


                                        </a></h5>
                                    <p>Plot Area :   <%=pd2.getPFloor()%> Sq.feet</p>
                                    <p>Price:   Rs.<%=pd2.getPPrice()%></p>
                                </div>
                                <div class="top-deal2" style="margin-top: 0px;">
                                    <a href="GetPropDetailServ?pid=<%=pd2.getPId()%>" class="hvr-sweep-to-right more" 
                                       style="    padding: 0px;
                                       height: 24px;
                                       width: 43px;
                                       margin-top: 0px;
                                       text-align: center;">More</a>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                                       
                                       
                                       
                                       <%
                                       
                                          PropDetail pd3 = pdl.get(3);
                                       %>
                                       
                                       <div class="col-md-3 top-deal-top">
                        <div class=" top-deal">
                            <a href="#" class="mask"><img src="images/de4.jpg" class="img-responsive zoom-img" alt=""></a>
                            <div class="deal-bottom" style="height: 142px;">
                                <div class="top-deal1">
                                    <h5 style="height: 42px;    width: 220px;"><a href="#"> 

<%
       out.print(pd3.getPName());

                                                hs.setAttribute("propobj", pd3);
%>
                                          


                                        </a></h5>
                                    <p>Plot Area :   <%=pd3.getPFloor()%> Sq.feet</p>
                                    <p>Price:   Rs.<%=pd3.getPPrice()%></p>
                                </div>
                                <div class="top-deal2" style="margin-top: 0px;">
                                    <a href="GetPropDetailServ?pid=<%=pd3.getPId()%>" class="hvr-sweep-to-right more" 
                                       style="    padding: 0px;
                                       height: 24px;
                                       width: 43px;
                                       margin-top: 0px;
                                       text-align: center;">More</a>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                    <%
                                        }

                        }

                    %> 


















                </div>
            </div>

        </div>

        <div class="container">

            <!---->
            <div class="top-grid">
                <h3>Top City</h3>
                <div class="grid-at">
                    <div class="col-md-3 grid-city">
                        <div class="grid-lo">
                            <a href="property_search_2.jsp">
                                <figure class="effect-layla">
                                    <img class=" img-responsive" src="images/ce.jpg" alt="img06">
                                    <figcaption>
                                        <h4>Mumbai</h4>

                                    </figcaption>			
                                </figure>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3 grid-city">
                        <div class="grid-lo">
                            <a href="property_search_2.jsp">
                                <figure class="effect-layla">
                                    <img class=" img-responsive" src="images/ce1.jpg" alt="img06">
                                    <figcaption>
                                        <h4>Ahmedabad</h4>

                                    </figcaption>			
                                </figure>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-6 grid-city grid-city1">
                        <div class="grid-me">
                            <div class="col-md-8 grid-lo1">
                                <div class=" grid-lo">
                                    <a href="property_search_2.jsp">
                                        <figure class="effect-layla">
                                            <img class=" img-responsive" src="images/ce2.jpg" alt="img06">
                                            <figcaption>
                                                <h4 class="effect1">Delhi</h4>

                                            </figcaption>			
                                        </figure>
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-4 grid-lo2">
                                <div class=" grid-lo">
                                    <a href="property_search_2.jsp">
                                        <figure class="effect-layla">
                                            <img class=" img-responsive" src="images/ce3.jpg" alt="img06">
                                            <figcaption>
                                                <h4 class="effect2">Chennai</h4>

                                            </figcaption>			
                                        </figure>
                                    </a>
                                </div>
                            </div>
                            <div class="clearfix"> </div>
                        </div>	
                        <div class="grid-me">
                            <div class="col-md-6 grid-lo3">
                                <div class=" grid-lo">
                                    <a href="property_search_2.jsp">
                                        <figure class="effect-layla">
                                            <img class="img-responsive" src="images/ce4.jpg" alt="img06">
                                            <figcaption>
                                                <h4 class="effect3">Bengaluru</h4>

                                            </figcaption>			
                                        </figure>
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-6 grid-lo4">
                                <div class=" grid-lo">
                                    <a href="property_search_2.jsp">
                                        <figure class="effect-layla">
                                            <img class="img-responsive" src="images/ce5.jpg" alt="img06">
                                            <figcaption>
                                                <h4 class="effect3">Noida</h4>

                                            </figcaption>			
                                        </figure>
                                    </a>
                                </div>
                            </div>
                            <div class="clearfix"> </div>
                        </div>	
                    </div>
                    <div class="clearfix"> </div>
                </div>

            </div>

            <div class="future">
                <h3 >Featured Projects</h3>
                <div class="content-bottom-in">
                    <ul id="flexiselDemo1">			
                        <li><div class="project-fur">
                                <a href="single.jsp" ><img class="img-responsive" src="images/pi.jpg" alt="" />	</a>
                                <div class="fur">
                                    <div class="fur1">
                                        <span class="fur-money">$2.44 Lacs - 5.28 Lacs </span>
                                        <h6 class="fur-name"><a href="single.jsp">Contrary to popular</a></h6>
                                        <span>Paris</span>
                                    </div>
                                    <div class="fur2">
                                        <span>2 BHK</span>
                                    </div>
                                </div>					
                            </div></li>
                        <li><div class="project-fur">
                                <a href="single.jsp" ><img class="img-responsive" src="images/pi1.jpg" alt="" />	</a>
                                <div class="fur">
                                    <div class="fur1">
                                        <span class="fur-money">$2.44 Lacs - 5.28 Lacs </span>
                                        <h6 class="fur-name"><a href="single.jsp">Contrary to popular</a></h6>
                                        <span>Paris</span>
                                    </div>
                                    <div class="fur2">
                                        <span>2 BHK</span>
                                    </div>
                                </div>					
                            </div></li>
                        <li><div class="project-fur">
                                <a href="single.jsp" ><img class="img-responsive" src="images/pi2.jpg" alt="" />	</a>
                                <div class="fur">
                                    <div class="fur1">
                                        <span class="fur-money">$2.44 Lacs - 5.28 Lacs </span>
                                        <h6 class="fur-name"><a href="single.jsp">Contrary to popular</a></h6>
                                        <span>Paris</span>
                                    </div>
                                    <div class="fur2">
                                        <span>2 BHK</span>
                                    </div>
                                </div>					
                            </div></li>
                        <li><div class="project-fur">
                                <a href="single.jsp" ><img class="img-responsive" src="images/pi3.jpg" alt="" />	</a>
                                <div class="fur">
                                    <div class="fur1">
                                        <span class="fur-money">$2.44 Lacs - 5.28 Lacs </span>
                                        <h6 class="fur-name"><a href="single.jsp">Contrary to popular</a></h6>
                                        <span>Paris</span>
                                    </div>
                                    <div class="fur2">
                                        <span>2 BHK</span>
                                    </div>
                                </div>					
                            </div></li>
                    </ul>
                    <script type="text/javascript">
                        $(window).load(function () {
                            $("#flexiselDemo1").flexisel({
                                visibleItems: 4,
                                animationSpeed: 1000,
                                autoPlay: true,
                                autoPlaySpeed: 3000,
                                pauseOnHover: true,
                                enableResponsiveBreakpoints: true,
                                responsiveBreakpoints: {
                                    portrait: {
                                        changePoint: 480,
                                        visibleItems: 1
                                    },
                                    landscape: {
                                        changePoint: 640,
                                        visibleItems: 2
                                    },
                                    tablet: {
                                        changePoint: 768,
                                        visibleItems: 3
                                    }
                                }
                            });

                        });
                    </script>
                    <script type="text/javascript" src="js/jquery.flexisel.js"></script>
                </div>
            </div>
        </div>

        <!--footer-->
        <jsp:include page="footer1.jsp"></jsp:include>
        <!--//footer-->







    </body>
</html>