<%-- 
    Document   : newjsp
    Created on : 4 Apr, 2016, 4:36:28 PM
    Author     : rushin
--%>

<%@page import="model.AgentFeedback"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>FeedBack !!!</h1>
       <% 
           ArrayList<AgentFeedback> afL = (ArrayList<AgentFeedback>) session.getAttribute("afL");
           for(AgentFeedback af : afL){
        %>
         Name :<%= af.getUId().getUName() %>   
        Comment :<%= af.getComment() %>
        <%}%>
    </body>
</html>
