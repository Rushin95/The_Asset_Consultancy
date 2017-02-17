<%-- 
    Document   : proplist
    Created on : 5 Apr, 2016, 10:16:50 PM
    Author     : rushin
--%>

<%@page import="model.AgentFeedback"%>
<%@page import="model.AgentDetail"%>
<%@page import="model.PropDetail"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link type="text/css" rel="stylesheet" href="css/table.css">
    </head>
    <body>



        <h2 style="float: left;">List Of All Agent Feedbacks</h2>
        
        <button style="float: right;margin-top: 22px;" onclick="goBack()">Go Back</button>
<script>
function goBack() {
    window.history.back();
}
</script>
        <table>
            <tr>
                <th>Feedback Id</th>
                <th>Agent Id</th>
                 <th>Commenter Id</th>
                 <th>Comment</th>
                 <th>Date/Time</th>
                 
                
                
            </tr>
            <%
                if (request.getAttribute("afl") != null) {
                    ArrayList<AgentFeedback> afl = (ArrayList<AgentFeedback>) request.getAttribute("afl");

                    for (AgentFeedback agentf : afl) {
            %>
            <tr>
                <td><%=agentf.getAfId() %></td>
                <td><%=agentf.getAId().getAId() %></td>
                <td><%=agentf.getUId().getUId() %></td>
                <td><%=agentf.getComment() %></td>
                <td><%=agentf.getTime() %> </td>
                

            </tr>
            <%  }

                }

            %>


        </table>

    </body>
</html>
