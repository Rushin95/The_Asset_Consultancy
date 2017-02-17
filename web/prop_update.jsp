<%@page import="model.PropDetail"%>
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
	<h3><span>Update Yo</span>ur Property</h3> 
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
		<%
            PropDetail pd=(PropDetail)request.getAttribute("pd");
            
            %>            
            <br>
            <br>
		<div class="feedback-top">
                    <form name="property_addition" action="property_update" method="POST"  enctype="multipart/form-data">
				
                        
                        
                        <input type="hidden" name="pid" value="<%=pd.getPId() %>">
                        
                        <input name="pname" type="text"  placeholder="Property Name" required="" value="<%=pd.getPName() %>" >
                            <input name="paddress1" type="text"  placeholder="Address Line 1" required="" value="<%=pd.getPAdd1() %>">
                            <input name="paddress2" type="text"  placeholder="Address Line 2" required="" value="<%=pd.getPAdd2() %>" >
                            <input name="price" type="number"  placeholder="Price Range" required="" value="<%=pd.getPPrice() %>">
                            <input readonly="" name="pbhk" type="text" placeholder="No of BHK" value="<%=pd.getPBhk() %>" required=""> 
                            
<!--                            <ul  class="loan-col1">
					
					<li class="loan-list-top">
                                            BHK:
                                            <select  class="in-drop" name="pbhk">
                                <option><%=pd.getPBhk() %></option>
                                <option value="1">1 BHK</option>
                                <option value="2">2 BHK</option>
                                <option value="3">3 BHK</option>
                                <option value="more">3+ BHK</option>
                              </select>
                            	</li>
				</ul>
                            -->
                            <input name="page" type="text" placeholder="Age" required="" value="<%=pd.getPAge() %>">
                            <input name="pfarea" type="number" placeholder="Floor Area" required="" value="<%=pd.getPFloor() %>">
                            
                            <input readonly="" name="ptype" type="text" placeholder="Type" value="<%=pd.getPType() %>" required=""> 
                            <input readonly="" name="state" type="text" placeholder="State" value="<%=pd.getPState() %>" required=""> 
                            <input readonly="" name="city" type="text" placeholder="City" value="<%=pd.getPCity() %>" required=""> 
                            <input readonly="" name="area" type="text" placeholder="Area" value="<%=pd.getPArea() %>" required=""> 
                            
                            
<!--                               
                                
                                <ul class="loan-col1">
					
					<li class="loan-list-top">
                                            Category:
                                            <select name="ptype" class="in-drop">
					      <option><%=pd.getPType() %></option>
                                <option value="Apartments" >Apartments</option>
                                <option value="Row Houses ">Row Houses</option>
                                <option value="Bunglows">Bunglows</option>
                                <option value="Commercial">Commercial</option>
							
						</select>
					</li>
				</ul>
                                
                                
                                
                                
                                
                               
                                
                                State : <select class="in-drop" name="state" id="stateid" onchange="getcities();">
                <option><%=pd.getPState() %></option>
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
                <option><%=pd.getPCity() %></option>
            </select><br>
                                                
                   Area:  <select class="in-drop" name="area" id="areaid">
                <option><%=pd.getPArea() %></option>
                   </select><br><br>                                
                                                
                                                
                                
                                
                                
                                -->
                                
                                
                                
			

            <textarea name="pdescription"  placeholder="Description"  requried=""><%=pd.getPDescription() %></textarea>
 
            Select Photo 1: <input type="file" multiple="" name="pic1" value="<%=pd.getPImg1() %>">
            Select Photo 2: <input type="file" multiple="" name="pic2" value="<%=pd.getPImg2() %>">
            Select Photo 3: <input type="file" multiple="" name="pic3" value="<%=pd.getPImg3() %>">
            Select Photo 4: <input type="file" multiple="" name="pic4" value="<%=pd.getPImg4() %>">
                               
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