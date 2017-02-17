<%-- 
    Document   : proplist
    Created on : 5 Apr, 2016, 10:16:50 PM
    Author     : rushin
--%>

<%@page import="model.PropFeedback"%>
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
<script>
function goBack() {
    window.history.back();
}
</script>


        <h2 style="float: left;">List Of All Property Feedbacks</h2>
        
        <button style="float: right;margin-top: 22px;" onclick="goBack()">Go Back</button>

        <table>
            <tr>
                <th>Feedback Id</th>
                <th>Property Id</th>
                 <th>Commenter Id</th>
                 <th>Comment</th>
                 <th>Date/Time</th>
                 
                
                
            </tr>
            <%
                if (request.getAttribute("pfl") != null) {
                    ArrayList<PropFeedback> pfl = (ArrayList<PropFeedback>) request.getAttribute("pfl");

                    for (PropFeedback propf : pfl) {
            %>
            <tr>
                <td><%=propf.getPfId() %></td>
                <td><%=propf.getPId().getPId() %></td>
                <td><%=propf.getUId().getUId() %></td>
                <td><%=propf.getComment() %></td>
                <td><%=propf.getTime() %></td>
                

            </tr>
            <%  }

                }

            %>


        </table>

    </body>
</html>
