<%-- 
    Document   : adminhome
    Created on : 5 Apr, 2016, 10:21:19 PM
    Author     : rushin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        
        
        
        
        
         <title>The Asset Consultancy</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.min.js"></script>
        <!-- Custom Theme files se-->
        <!--menu-->
        <script src="js/scripts.js"></script>
        <link href="css/styles.css" rel="stylesheet">
        <!--//menu-->
        <!--theme-style-->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
        <!--//theme-style-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="The Asset Consultancy  Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <script type="text/javascript">
            function getcities()
            {
                var sid = document.getElementById("stateid").value;
                var url = "getcity?state=" + sid;
                var xmlReq = new XMLHttpRequest();
                xmlReq.onreadystatechange = function ()
                {
                    if (xmlReq.readyState == 4)
                    {
                        document.getElementById("cityid").innerHTML = xmlReq.responseText;
                    }
                }
                xmlReq.open("get", url, true);
                xmlReq.send();
            }

            function getareas()
            {
                var cid = document.getElementById("cityid").value;
                var url = "getarea?city=" + cid;
                var xmlReq = new XMLHttpRequest();
                xmlReq.onreadystatechange = function ()
                {
                    if (xmlReq.readyState == 4)
                    {
                        document.getElementById("areaid").innerHTML = xmlReq.responseText;
                        //alert(xmlReq.responseText);
                    }
                }
                xmlReq.open("get", url, true);
                xmlReq.send()
            }
        </script>

        
        
        
        
        
        
        
        
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            
            a.justlink
            {
                
                float: left;
font-size: 0.9em;
color: #fff;
text-decoration: none;
background: #000;
padding: 10px 15px;display: inline-block;
vertical-align: middle;
transform: translateZ(0);
box-shadow: 0 0 1px rgba(0, 0, 0, 0);
backface-visibility: hidden;position: relative;
            }
        
            
        </style>
           
        <title>JSP Page</title>
    </head>
    <body>
        
        
        <jsp:include page="header1.jsp"></jsp:include>
        <div class="container">
            
            
            <table style="width:100%">
  <tr>
    
      <td ><a class="hvr-sweep-to-right more justlink" style="color: white;    font-size: 1.6em;" href="proplist_serv">Show property list</a></th>
    <td> <a class="hvr-sweep-to-right more justlink" style="color: white;    font-size: 1.6em;" href="agentlist_serv">Show Agent list</a></th>		

  </tr>
  <tr>
    <td align="center"> <a class="hvr-sweep-to-right more justlink" style="color: white;    font-size: 1.6em;" href="agentfeedbacklist_serv">Show agent feedback list</a></td>
    <td><a class="hvr-sweep-to-right more justlink" style="color: white;    font-size: 1.6em;" href="propfeedbacklist_serv">Show property feedback list</a></td>		

  </tr>
  <tr>
    <td> <a class="hvr-sweep-to-right more justlink" style="color: white;    font-size: 1.6em;" href="agentrequestlist_serv">Show agent request list</a></td>
    <td></td>		
  
  </tr>
</table>

        </div>
        
        
    </body>
</html>
