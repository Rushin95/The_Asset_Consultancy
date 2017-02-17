<%@page import="model.GroupDetail"%>
<%@page import="model.ChatMsg"%>
<%@page import="model.Login"%>
<%@page import="model.CustomerDetail"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.AgentDetail"%>
<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
    <head>
        <title>The Asset Consultancy A Real Estate Category Flat Bootstarp Resposive Website Template | Suggestion :: w3layouts</title>
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
        <link type="text/css" rel="stylesheet" href="css/table.css">

    
    </head>
    <body>
        <!--header-->
        <jsp:include page="header1.jsp"></jsp:include>
            <!--//-->	

            <!--//header-->
            
            
            <%
                HttpSession hs=request.getSession();
                Login ln=(Login)hs.getAttribute("user");
                GroupDetail gd=(GroupDetail)request.getAttribute("gobj");
            
            %>
            
            
            
                       
            
            <a  style="float: right;margin-right: 90px;margin-top: 20px;"  href="GetGroupChatServ?gid=<%=gd.getGId() %>">Refresh Chat</a>
           
            
            <div class="feedback"  style="padding: 0em 0;"  >
	<div class="container">
            <div style="overflow: auto; height: 410px;  width: 1200px" id="chatarea">
            <!--  -->
               <div   class="single-grid">
	 <%
                System.out.print("You are in chat JSP");
            if(request.getAttribute("msgs")!=null)
            {
                
            ArrayList<ChatMsg> cm = (ArrayList<ChatMsg>)request.getAttribute("msgs");
            
            for(ChatMsg message: cm)
            {
               
            
            %>
            
           			
		       
                    <div class="media">
		          <div class="media-left">
		            <a href="#">
		            	<img class="media-object" src="images/av.png" alt="" />
		            </a>
		          </div>
		          <div class="media-body">
                              <h4 style="width:60%;" class="media-heading"><%=message.getUId().getUName() %></h4>
                              <h5 style="float: right;color: #A3A3A3;margin: 0px;padding: 0px;font-size: 0.85em;"><%=message.getDateTime() %></h5>
                              
                              <p style="color: black;" ><%=message.getMsg() %></p>
                              
		          </div>
		        </div>
         
                         <%
            }%>
                         
                   
          
                   <%
            
            }
            else
            {
                %>
                There are no messages in this group.
                <%
            }
                         
                          %>
                          <div id="endchat"></div>
            </div>
           
            </div>
        
        
        
            <div  class="feedback-top" style="width: 100%;">
                    <form action="sendmessage" style="width:100%;">
                            <input type="hidden" name="gid" value="<%=gd.getGId() %>">
                            <textarea  style="height: 51px;color: black;" name="message"  placeholder="Type Message Here" requried=""></textarea>
				 <label class="hvr-sweep-to-right">
	           	<input type="submit" value="Send"> 
                        
                        
                        
	           </label>
                            <a  style="float: right;"  href="getgroups?id=0">Back to Your Groups</a>
			</form>
                            <br>
		</div>
	</div>
</div>
<!--//contact-->

            
            
            
            
            
            
            
<script>
  
    </script>
            
             <!--footer-->
        <jsp:include page="footer1.jsp"></jsp:include>
        <!--//footer-->
   
        <script>
            $(document).ready(function() {
                    $('#chatarea').animate({scrollTop:$("#endchat").offset().top-300},200);
                    
});
        </script>
    </body>
</html>