<%-- 
    Document   : contact_customer
    Created on : 15 Apr, 2016, 2:10:45 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header1.jsp"></jsp:include>
      <div class="feedback">  
      <div class="container">
		<h3>Owner Contact Details</h3>
		<div class="feedback-top">

                    <form style="padding-left: 112px;">
                            <%
                            String fname=request.getAttribute("fname").toString();
                            String lname=request.getAttribute("lname").toString();
                            String email=request.getAttribute("email").toString();
                            String mobile=request.getAttribute("mobile").toString();
                            
                            %>
			<div class="col-loan">
			<ul class="loan-col1">
					<li><span>Name</span></li><label>:</label>
					<li class="loan-list-top">
                                            
                                            <input readonly="" type="text" value="<%=fname+" "+lname %>" placeholder="" required="">
                                        
                                        
                                        </li>
				</ul>
                        <ul class="loan-col1">
					<li><span>Email ID</span></li><label>:</label>
					<li class="loan-list-top">
                                            
                                            
                                            <input readonly="" type="text" value="<%=email%>" placeholder="" required=""></li>
				</ul>
                            <ul class="loan-col1">
					<li><span>Mobile Number</span></li><label>:</label>
					<li class="loan-list-top">
                                            
                                            
                                            <input readonly="" type="text" value="<%=mobile %>" placeholder="" required=""></li>
				</ul>
                        </div>
                                
                                <button  onclick="goBack()">Go Back</button>
                                
<script>
function goBack() {
    window.history.back();
}
</script>
                                
                        </form>
                </div>
      </div>
      </div>



        
        <jsp:include page="footer1.jsp"></jsp:include>


    </body>
</html>