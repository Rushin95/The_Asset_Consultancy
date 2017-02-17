<%-- 
    Document   : groupsofuser
    Created on : 9 Apr, 2016, 9:44:05 PM
    Author     : rushin
--%>

<%@page import="model.GmemberDetail"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <jsp:include page="header1.jsp"></jsp:include>

        <div class="container"> 
            <h4 style="
                float: left;
                width: 50%;font-size: 1.5em;
                color: #27da93;
                font-family: 'Montserrat-Regular';">
                
                Your groups:</h4>
            
            
<script>
function member_added() {
    alert("Group Member Added");
}
</script>
            <br>
         
            <%
            int uid=Integer.parseInt(request.getParameter("uid"));
            if(request.getAttribute("grouplist")!=null)
            {
                ArrayList<GmemberDetail> gd=(ArrayList<GmemberDetail> )request.getAttribute("grouplist");
            
            for (GmemberDetail group : gd) {
            %>
            <br>
           
            <a onclick="member_added()" href="add_this_user?uid=<%=uid %>&&gid=<%=group.getGId().getGId() %>"><%=group.getGId().getGName() %></a>
          

        <%; }
        
            }
            else
            {
                System.out.println("You are not a part of any group");
            }
        %>
     
        <br>
    </div>
        <br>
        <br>
        <!--footer-->
        <jsp:include page="footer1.jsp"></jsp:include>

    </body>
</html>
