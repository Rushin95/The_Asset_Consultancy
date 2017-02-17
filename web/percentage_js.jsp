<!doctype html>
<html>
    <head>
        <title>The Asset Consultancy </title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.min.js"></script>
        <!-- Custom Theme files -->
        <!--menu-->
        <script src="js/scripts.js"></script>
        <link href="css/styles.css" rel="stylesheet">
        <script src="js/script.js" type="text/javascript"></script>
        <!--//menu-->
        <!--theme-style-->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
        <!--//theme-style-->
        <!--<meta name="viewport" content="width=device-width, initial-scale=1">-->
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="The Asset Consultancy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
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
                        //alert(xmlReq.responseText);
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

















        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>circleGraph jQuery Plugin Demos</title>

        <link href="js/percent_circle/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/percent_circle/ga.js" type="text/javascript"></script>
        <script src="js/percent_circle/jquery-2.1.4.min.js" type="text/javascript"></script>
        <script src="js/percent_circle/jquery.circleGraphic_1.js" type="text/javascript"></script>
        <link href="js/percent_circle/jquerysctipttop.css" rel="stylesheet" type="text/css"/>

        <!--        <link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
                <script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
                <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        -->

        <!--        
                <style type="text/css">
            body {}
                        .container { margin:150px auto;}
                </style>-->



        <!--        
        <script type="text/javascript">
        
          var _gaq = _gaq || [];
          _gaq.push(['_setAccount', 'UA-36251023-1']);
          _gaq.push(['_setDomainName', 'jqueryscript.net']);
          _gaq.push(['_trackPageview']);
        
          (function() {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
           
                ga.src = ('js/percent_circle/ga.js';
                
             //   ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
          })();
        
        </script>-->


    </head>
    <body>


 <!--header-->

        <jsp:include page="header1.jsp"></jsp:include>
        
        
        <br>
        
        
        
        
        <div class="container" style="border: solid 1px;">


        <%
            if ((request.getAttribute("percent")) != null) {
                double a = (double) request.getAttribute("percent");
                System.out.print("in percent page" + a);

        %>

        
        <br>
        <h3 style="color: #27DA93;"> The Average Annual Growth Rate for specified asset type is:</h3>
        <div class="column">   
            <div class="row">

                <div class="circleGraphic2 col-md-3 col-sm-6"><%=a                %></div>

            </div>
        </div>
        <script type="text/javascript">
            window.onload = function ()
            {

                $('.circleGraphic2').circleGraphic({'color': '#E53238'});
            }
        </script>
        <%
            } else {
                System.out.print("null");
            }

        %>
        
                    <br>
        
<a style="margin-left: 837px;" href="getstate?id=8">Back to Analysis Page</a>

<br><br><br>
        </div>
    </body>


    
    
      
    
    
    <!--
    <script type="text/javascript">
    
      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-36251023-1']);
      _gaq.push(['_setDomainName', 'jqueryscript.net']);
      _gaq.push(['_trackPageview']);
    
      (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
      })();
    
    </script>-->
</html>