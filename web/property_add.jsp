<%@page import="model.Login"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.StateMaster"%>
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
<script src="http://maps.googleapis.com/maps/api/js?sensor=false&amp;libraries=places" type="text/javascript"></script>

<script type="text/javascript">
    function initialize() {
        var input = document.getElementById('googleMapId');
        var autocomplete = new google.maps.places.Autocomplete(input);
        google.maps.event.addListener(autocomplete, 'place_changed', function () {
            var place = autocomplete.getPlace();
            document.getElementById('latitude').value = place.geometry.location.lat();
            document.getElementById('longitude').value = place.geometry.location.lng();
            //alert("This function is working!");
            //alert(place.name);
           // alert(place.address_components[0].long_name);

        });
    }
    google.maps.event.addDomListener(window, 'load', initialize); 
</script>

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
                        //alert(xmlReq.responseText);
                    }
                }
                xmlReq.open("get",url,true);
                xmlReq.send();
            }
            
            function getareas()
            {
               var cid = document.getElementById("cityid").value;
                var url = "getarea?city=" + cid;
                var xmlReq = new XMLHttpRequest();
                xmlReq.onreadystatechange=function()
                {
                    if(xmlReq.readyState==4)
                    {
                        document.getElementById("areaid").innerHTML = xmlReq.responseText;
                        //alert(xmlReq.responseText);
                    }
                }
                xmlReq.open("get",url,true);
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
	<h3><span>Property</span> Addition</h3> 
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


 <%

                    HttpSession hs = request.getSession();
                        if (hs.getAttribute("user") != null) {
                            Login ln = (Login) hs.getAttribute("user");
                            
                            switch (ln.getURole()) {
                    case "customer":
                        {
                            %>
                            <jsp:include page="customer_panel.jsp"></jsp:include>
                             <%       
                            break;
                        }
                    case "agent":
                        {
                            %>
                            <jsp:include page="agent_panel.jsp"></jsp:include>
                            <%
                            break; 
                        }
                    default:
                    {
                        out.print("Not Signed in ");
                        break;
                    }
                        
                }
                        }
        %>
       



<!--contact-->


	 
	<!--header-bottom-->
	
			<!--//-->
				
	<!--//header-bottom-->
	
	<div class="container">
		
            
            
            <br>
            <br>
		<div class="feedback-top">
                    <form name="property_addition" action="prop_add_serv" method="POST"  enctype="multipart/form-data">
				
                        
                        
                    
                        
                            <input name="pname" type="text"  placeholder="Property Name" required="" >
                            <input name="paddress1" type="text"  placeholder="Address Line 1" required="" >
                            <input name="paddress2" type="text"  placeholder="Address Line 2" required="" >
                            <input name="price" type="number"  placeholder="Price Range" required="" >
                           <!-- <input name="pbhk" type="text" placeholder="No of BHK" required=""> -->
                            
                            <ul class="loan-col1">
					
					<li class="loan-list-top">
                                            BHK:
                              <select class="in-drop" name="pbhk">
                                <option>No. of Bhk</option>
                                <option value="1">1 BHK</option>
                                <option value="2">2 BHK</option>
                                <option value="3">3 BHK</option>
                                <option value="more">3+ BHK</option>
                              </select>
                            	</li>
				</ul>
                            
                            <input name="page" type="text" placeholder="Age" required="">
                            <input name="pfarea" type="number" placeholder="Floor Area" required="">
                            
                               
                                
                                <ul class="loan-col1">
					
					<li class="loan-list-top">
                                            Category:
                                            <select name="ptype" class="in-drop">
					      <option>Type of Property</option>
                                <option value="Apartments" >Apartments</option>
                                <option value="Row Houses ">Row Houses</option>
                                <option value="Bunglows">Bunglows</option>
                                <option value="Commercial">Commercial</option>
							
						</select>
					</li>
				</ul>
                                
                                
                                
                                
                                
                               
                                
                                State : <select class="in-drop" name="state" id="stateid" onchange="getcities();">
                <option>Select</option>
                <%
                    if(request.getAttribute("state")!=null)
                    {
                        ArrayList<StateMaster> stlist = (ArrayList<StateMaster>)request.getAttribute("state");
                        for(int i=0;i<stlist.size();i++)
                        {
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
            <br>
            City : <select class="in-drop" name="city" id="cityid" onchange="getareas();">
                <option>Select</option>
            </select><br>
                                                
                   Area:  <select class="in-drop" name="area" id="areaid">
                <option>Select</option>
                   </select><br><br>   
<!--                                                
                   Map Location:  <input class="in-drop" name="area" id="googleMapId">
                   Latitude: <input  name="la" id="latitude">
                   Longitude: <input  name="lo" id="longitude">
                <br>  
                   -->
                   
                                                
                                                
                                
                                
                                
                                
                                
                                
                                
			

            <textarea name="pdescription"  placeholder="Description" requried=""></textarea>
            Select Photo 1: <input type="file" multiple="" name="photo1">
            Select Photo 2: <input type="file" multiple="" name="photo2">
            Select Photo 3: <input type="file" multiple="" name="photo3">
            Select Photo 4: <input type="file" multiple="" name="photo4">
                               
            <br>
				 <label class="hvr-sweep-to-right">
	           	<input type="submit" value="Submit">
	           </label>
                                <br>
			</form>
		</div>
	</div>
</div>



<br>
<!--//contact-->
<!--footer-->
<jsp:include page="footer1.jsp"></jsp:include>
<!--//footer-->
</body>
</html>