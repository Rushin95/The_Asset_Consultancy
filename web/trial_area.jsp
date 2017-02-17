<%-- 
    Document   : trial_area
    Created on : 17 Mar, 2016, 8:14:36 PM
    Author     : rushin
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.StateMaster"%>
<%@page import="model.StateMaster"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        
        <script type="text/javascript">
            
            function getareas()
            {
               var cid = document.getElementById("cityid").value;
                var url = "getarea?city=" + cid;
                var xmlReq = new XMLHttpRequest();
                xmlReq.onreadystatechange=function()
                {
                    if(xmlReq.readyState==4)
                    {
                        document.getElementById("areaid").innerHTML = xmlReq.responseText;
                        //alert(xmlReq.responseText);
                    }
                }
                xmlReq.open("get",url,true);
                xmlReq.send()
            }
            
            
            function getcities()
            {
                var sid = document.getElementById("stateid").value;
                var url = "getcity?state=" + sid;
                var xmlReq = new XMLHttpRequest();
                xmlReq.onreadystatechange=function()
                {
                    if(xmlReq.readyState==4)
                    {
                        document.getElementById("cityid").innerHTML = xmlReq.responseText;
                        //alert(xmlReq.responseText);
                    }
                }
                xmlReq.open("get",url,true);
                xmlReq.send();
            }
        </script>
        
        <title>JSP Page</title>
    </head>
    <body>
        
        <a href="getstate?id=7">ajdhak</a>
    <from>
        
        
        State : <select name="state" id="stateid" onchange="getcities();" >
                <option>Select</option>
                <%
                    if(request.getAttribute("state")!=null)
                    {
                        ArrayList<StateMaster> stlist = (ArrayList<StateMaster>)request.getAttribute("state");
                        for(int i=0;i<stlist.size();i++)
                        {
                            StateMaster smaster = stlist.get(i);
                            String sname = smaster.getSName();
                            String sid = smaster.getSId().toString();
                            %>
                            <option value="<%=sid%>"> <%=sname%> </option>
                            <%
                        }
                    }
                %>
            </select></br>
            
            <br>
            City : <select name="city" id="cityid" onchange="getareas();getareas();">
                <option>Select</option>
            </select><br>
            
            
            
            Area:  <select name="area" id="areaid">
                <option>Select</option>
            </select><br><br>
            
    </from>
        
        
    </body>
</html>
