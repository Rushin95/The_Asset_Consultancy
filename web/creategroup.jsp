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
            <!--contact-->
            <div class="feedback">
                <div class="container">
                    <h3>Make a Group</h3>
                    <div class="feedback-top">
                        
                       
                        
                        <form action="creategroup_serv">
                            
                             1. First add users to your group.
                             <br><br>
                                                <%     
                            if(request.getAttribute("cdl") == null&&request.getAttribute("adl") == null)
                            {
                                String msg=request.getAttribute("msg").toString();
                                out.println(msg);
                                out.println();
                                
                            }
                                    

                            %>
                            <br><br>
                            
                            Agent list:
                            <br>
                            <table>
                                <tr>

                                    <th>Agent Name</th>
                                    <th>Email Id</th>
                                    <th>Action</th> 


                                </tr>
                            <%
                                if (request.getAttribute("adl") != null) {
                                    ArrayList<AgentDetail> adl = (ArrayList<AgentDetail>) request.getAttribute("adl");

                                    for (AgentDetail agent : adl) {

                            %>
                            <tr>

                                <td><%=agent.getAFname() + " " + agent.getALname()%></td>
                                <td><%=agent.getAEmail()%></td>
                                <td>

                                    <a href="AddToGroupServ?id=<%=agent.getUId().getUId()%>"><button type="button" value="">Add</button></a>



                                </td>

                            </tr>
                            <%  }

                                }

                            %>


                        </table>

                        <br>
                        <br>


                        Customer list:
                        <br>
                        <table>
                            <tr>

                                <th>Customer Name</th>
                                <th>Email Id</th>
                                <th>Action</th> 


                            </tr>
                            <%                if (request.getAttribute("cdl") != null) {
                                    ArrayList<CustomerDetail> cdl = (ArrayList<CustomerDetail>) request.getAttribute("cdl");

                                    for (CustomerDetail cust : cdl) {
                            %>
                            <tr>

                                <td><%=cust.getCFname() + " " + cust.getCLname()%></td>
                                <td><%=cust.getCEmail()%></td>
                                <td> 
                                    <a href="AddToGroupServ?id=<%=cust.getUId().getUId()%>"><button type="button"  value="">Add</button></a>
                                </td>

                            </tr>
                            
  <%  }

                                }

                            %>
                                
                       


                        </table>
                     
                            <br>
                        
                            <br>

                            2. Now set a group name and press on Create button.<br><br>
                            <input name="gname" type="text"  placeholder="Group Name"  required="">

                            
                            
                        <label class="hvr-sweep-to-right">
                            
                            
                            <input type="submit" value="Create Group">
                        </label>
                    </form>
                </div>
            </div>
        </div>
        <!--//contact-->
        <!--footer-->
        <jsp:include page="footer1.jsp"></jsp:include>
        <!--//footer-->
    </body>
</html>