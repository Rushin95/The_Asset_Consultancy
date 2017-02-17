<%-- 
    Document   : proplist
    Created on : 5 Apr, 2016, 10:16:50 PM
    Author     : rushin
--%>

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



        <h2 style="float: left;">List Of Agent Requests</h2>
        
        <button style="float: right;margin-top: 22px;" onclick="goBack()">Go Back</button>
<script>
function goBack() {
    window.history.back();
}
</script>
        <table>
            <tr>
                <th>Agent Id</th>
                 <th>Agent Name</th>
                 <th>Email Id</th>
                 <th>Status</th>
                 <th>Action</th>
                
                
            </tr>
            <%
                if (request.getAttribute("adl") != null) {
                    ArrayList<AgentDetail> adl = (ArrayList<AgentDetail>) request.getAttribute("adl");

                    for (AgentDetail agent : adl) {
                        int agentid=agent.getAId();
            %>
            <tr>
                <td><%=agent.getAId() %></td>
                
                <td><%=agent.getAFname()+" "+agent.getALname() %></td>
                <td><%=agent.getAEmail() %></td>
                <td><%=agent.getAStatus()  %></td>
                <td><a type="button" href="agentstatus?id=0&aid=<%=agentid %>">Accept</button> 
                    <a type="button" href="agentstatus?id=1&aid=<%=agentid %>">Deny</button>
                </td>
                

            </tr>
            <%  }

                }

            %>


        </table>

    </body>
</html>
