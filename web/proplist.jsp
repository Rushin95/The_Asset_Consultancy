<%-- 
    Document   : proplist
    Created on : 5 Apr, 2016, 10:16:50 PM
    Author     : rushin
--%>

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



        <h2 style="float: left;">List Of All Properties</h2>
        
        <button style="float: right;margin-top: 22px;" onclick="goBack()">Go Back</button>
<script>
function goBack() {
    window.history.back();
}
</script>
        <table>
            <tr>
                <th>Property Id</th>
                 <th>Uploader</th>
                <th>Property Name</th>
                <th>Price</th>
                 <th>State</th>
               
            </tr>
            <%
                if (request.getAttribute("pdl") != null) {
                    ArrayList<PropDetail> pdl = (ArrayList<PropDetail>) request.getAttribute("pdl");

                    for (PropDetail prop : pdl) {
            %>
            <tr>
                <td><%=prop.getPId()%></td>
                <td><%=prop.getUId().getUId() %></td>
                <td><%=prop.getPName()%></td>
                <td><%=prop.getPPrice() %></td>
                <td><%=prop.getPState() %></td>
                

            </tr>
            <%  }

                }

            %>


        </table>

    </body>
</html>
