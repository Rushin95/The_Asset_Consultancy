
<%@page import="model.AgentDetail"%>
<%@page import="functions.get_random"%>
<%@page import="model.AssetRecords"%>
<%@page import="model.Login"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.PropFeedback"%>
<%@page import="model.PropDetail"%>
<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
    <head>
        
        <script src="js/jquery.min.js">
    </script>
    <script src="js/bootstrap.js">
    </script>
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script language="javascript" type="text/javascript">

    var map;
    var geocoder;
    function InitializeMap() {
     
         var latlng = new google.maps.LatLng(23.0329762,72.5098275);
        var myOptions =
        {
            zoom: 8,
            center: latlng,
            mapTypeId: google.maps.MapTypeId.ROADMAP,
            disableDefaultUI: true
        };
        map = new google.maps.Map(document.getElementById("map"), myOptions);
    }

    function FindLocaiton() {
        geocoder = new google.maps.Geocoder();
        InitializeMap();

        var address = document.getElementById("addressinput").value;
        geocoder.geocode({ 'address': address }, function (results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                map.setCenter(results[0].geometry.location);
                var marker = new google.maps.Marker({
                    map: map,
                    position: results[0].geometry.location
                });

            }
            else {
                alert("Geocode was not successful for the following reason: " + status);
            }
        });

    }


    function Button1_onclick() {
        FindLocaiton();
    }

    window.onload = InitializeMap;

</script>
    <script src="js/jquery.scrollUp.js">
    </script>
    
    <!-- Google Visualization JS -->
    <script type="text/javascript" src="https://www.google.com/jsapi">
    </script>
    
    <!-- Easy Pie Chart JS -->
    <script src="js/jquery.easy-pie-chart.js">
    </script>
    
    <!-- Sparkline JS -->
    <script src="js/jquery.sparkline.js">
    </script>
    
    
         <!-- bootstrap css -->
    <script type="text/javascript" src="../../html5shiv.googlecode.com/svn/trunk/html5.js">
    </script>
    <link href="icomoon/style.css" rel="stylesheet">
    <!--[if lte IE 7]>
    <script src="css/icomoon-font/lte-ie7.js">
    </script>
    <![endif]-->
    <link href="css/main.css" rel="stylesheet">
    <!-- !important. This is the duplicate file of main.css, You can remove this file. If you want to use this theme, please change the primary-color variable in main.css -->
    <link href="css/charts-graphs.css" rel="stylesheet">
        
        
        <title>The Asset Consultancy A Real Estate Category Flat Bootstarp Resposive Website Template | Single :: w3layouts</title>
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

        
        
        <!--ADDED BY ME-->
        
        
        
        
        
    <meta charset="utf-8">
  
    <meta name="author" content="">
    <meta content="width=device-width, initial-scale=1.0, user-scalable=no" name="viewport">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- bootstrap css -->
    <script type="text/javascript" src="../../html5shiv.googlecode.com/svn/trunk/html5.js">
    </script>
    <link href="icomoon/style.css" rel="stylesheet">
    <!--[if lte IE 7]>
    <script src="css/icomoon-font/lte-ie7.js">
    </script>
    <![endif]-->
    <link href="css/main.css" rel="stylesheet">
    <!-- !important. This is the duplicate file of main.css, You can remove this file. If you want to use this theme, please change the primary-color variable in main.css -->
    <link href="css/charts-graphs.css" rel="stylesheet">
                                                            
        
        
    </head>
    <body>
        <!--header-->
        <jsp:include page="header1.jsp"></jsp:include>
            <!--//-->	

        <%
            PropDetail pd = (PropDetail) request.getAttribute("pd");

        %>


        <div class=" banner-buying">
            <div class=" container">
                <h3><span> <% out.print(pd.getPName());%> <span></h3> 
                            <!---->

                            <div class="clearfix"> </div>
                            <!--initiate accordion-->
                            <script type="text/javascript">
                                $(function () {
                                    var menu_ul = $('.menu > li > ul'),
                                            menu_a = $('.menu > li > a');
                                    menu_ul.hide();
                                    menu_a.click(function (e) {
                                        e.preventDefault();
                                        if (!$(this).hasClass('active')) {
                                            menu_a.removeClass('active');
                                            menu_ul.filter(':visible').slideUp('normal');
                                            $(this).addClass('active').next().stop(true, true).slideDown('normal');
                                        } else {
                                            $(this).removeClass('active');
                                            $(this).next().stop(true, true).slideUp('normal');
                                        }
                                    });

                                });
                            </script>

                            </div>
                            </div>
                            <!--//header-->
                            <!---->



        <%

            HttpSession hs = request.getSession();
            if (hs.getAttribute("user") != null) {
                Login ln = (Login) hs.getAttribute("user");
                

                switch (ln.getURole()) {
                    case "customer": {
        %>
        <jsp:include page="customer_panel.jsp"></jsp:include>
        <%
                break;
            }
            case "agent": {
        %>
        <jsp:include page="agent_panel.jsp"></jsp:include>
        <%
                        break;
                    }
                    default: {
                        out.print("Not Signed in ");
                        break;
                    }

                }
            }
        %>








                            <div class="container">

                                <div class="buy-single-single">

                                    <div class="col-md-9 single-box">

                                        <div class=" buying-top">	
                                            <div class="flexslider">
                                                <ul class="slides">
                                                    <li data-thumb="images/property/<%=pd.getPImg1()%>">
                                                        <img src="images/property/<%=pd.getPImg1()%>" />
                                                    </li>
                                                    <li data-thumb="images/property/<%=pd.getPImg2()%>">
                                                        <img src="images/property/<%=pd.getPImg2()%>" />
                                                    </li>
                                                    <li data-thumb="images/property/<%=pd.getPImg3()%>">
                                                        <img src="images/property/<%=pd.getPImg3()%>" />
                                                    </li>
                                                    <li data-thumb="images/property/<%=pd.getPImg4()%>">
                                                        <img src="images/property/<%=pd.getPImg4()%>" />
                                                    </li>
                                                </ul>
                                            </div>
                                            <!-- FlexSlider -->
                                            <script defer src="js/jquery.flexslider.js"></script>
                                            <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

                                            <script>
                                // Can also be used with $(document).ready()
                                $(window).load(function () {
                                    $('.flexslider').flexslider({
                                        animation: "slide",
                                        controlNav: "thumbnails"
                                    });
                                });
                                            </script>
                                        </div>
                                        <div class="buy-sin-single">
                                            <div class="col-sm-5 middle-side immediate">
                                                <h4>Possession: Immediate</h4>
                                                <p><span class="bath">Bed </span>: <span class="two"><%=pd.getPBhk()%> BHK</span></p>
                                                <p>  <span class="bath1">Baths </span>: <span class="two">2 Year</span></p>
                                                <p><span class="bath2">Built-up Area</span>: <span class="two"><%=pd.getPFloor() %> Sq.Feet</span></p>
                                                <p><span class="bath3">Plot Area </span>:<span class="two"> <%=pd.getPFloor() %> Sq.Yrds</span></p>
                                                <p><span class="bath4">Age of property</span> : <span class="two"><% out.print(pd.getPAge());%></span></p>
                                                <p><span class="bath5">Price </span>:<span class="two">Rs. <%=pd.getPPrice()%></span></p>				 
                                                <div class="   right-side">
                                                    
                                                    
                                                    
                                           
                                                    
                                                    
                                                    <% 
                                                    System.out.print(pd.getUId().getURole());
                                                    switch(pd.getUId().getURole())
                                                    {
                                                        case "agent":   
                                                        {
                                                    %>
                                                    
                                                    <a href="go_to_user?id=<%=pd.getUId().getUId()%>" class="hvr-sweep-to-right more" >Contact Agent</a>     
                                                        
                                                        <% break; 
                                                        }
                                                    case "customer":
                                                    {
                                                    %>
                                                    
                                                    <a href="go_to_user?id=<%=pd.getUId().getUId()%>" class="hvr-sweep-to-right more" >Contact Customer</a> 
                                                   
                                                    <%
                                                    break;
                                                    
                                                    }
                                                    }
                                                    %>
                                                     <a href="feedback_prop.jsp" class="hvr-sweep-to-right more" >Give Property Feedback</a>
                                                    
                                                    <% 
                                                  
                                                    Login ln=(Login)hs.getAttribute("user");
                                            if(pd.getUId().getUId()==ln.getUId())
                                            {
                                            request.setAttribute("pd",pd ); %>
                                                    
                                                    <a href="getstate?id=10&&pid=<%=pd.getPId() %>" class="hvr-sweep-to-right more" >Update Property </a>
                                            <% } %>      
                                                </div>
                                            </div>
                                            <div class="col-sm-7 buy-sin">
                                                <h4>Description</h4>
<!--                                                <p><%=pd.getPDescription()%> </p>  -->
                                                <p  style="text-align:justify; " >The living is easy in this impressive, generously proportioned contemporary residence with lake and ocean views, located within a level stroll to the sand and surf. The floor plan encompasses four spacious bedrooms with plenty of room for study, sleep and storage, three luxurious bathrooms, and a sleek and stylish kitchen that flows through to the dining room and private rear patio. The master bedroom, complete with walk-in robe and ensuite, ensures parents have a private space where they can enjoy the view.
Perfect for a family or as a holiday retreat, this home is ideally positioned to enjoy the proximity to beaches, cafes and restaurants, shopping centre, and a selection of premier schools.</p>


                                            </div>
                                                
                                                
                                            <div class="clearfix"> </div>
                                        
                                                                                        
<div class="map-buy-single">
                                            <h4>Address</h4>
                                            <div class="map-buy-single1" >
                                                <li style="margin-left: 10px;"> <%=pd.getPAdd1() %></li>
                                                <li style="margin-left: 10px;"> <%=pd.getPAdd2()%> , <%=pd.getPArea() %> </li>
                                                <li style="margin-left: 10px;"> <%=pd.getPCity()%> , <%=pd.getPState() %> </li>


                                            </div>
                                        </div>


                                            
                                            
                                        </div>
                                        <div class="map-buy-single">
                                            <h4>Neighborhood Info</h4>
                                            <div class="map-buy-single1" >
                                                <li style="margin-left: 10px;"> 3 km from Ahmedabad International Airport.</li>
                                                <li style="margin-left: 10px;"> 0.3 km from S.G. Highway.</li>
                                                <li style="margin-left: 10px;"> 1 km from Alpha One Mall.</li>


                                            </div>
                                        </div>


                                                
<div class="map-buy-single">
                                            <h4> Past Records Analysis</h4>
                                                            <div class="row-fluid">
                                                                <div class="span12">
                                                                    <div class="widget">
                                                                        <div class="widget-header">
<!--                                                                            <div class="title">
                                                                                <span class="fs1" aria-hidden="true" data-icon="&#xe096;"></span> Site Statistics - Line Chart
                                                                            </div>-->
                                                                        </div>
                                                                        <div class="widget-body">
                                                                            <div id="line_chart"></div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
</div>                                                 

    <script src="js/jquery.min.js">
    </script>
    <script src="js/bootstrap.js">
    </script>
    <script src="js/jquery.scrollUp.js">
    </script>
    
    <!-- Google Visualization JS -->
    <script type="text/javascript" src="https://www.google.com/jsapi">
    </script>
    
    <!-- Easy Pie Chart JS -->
    <script src="js/jquery.easy-pie-chart.js">
    </script>
    
    <!-- Sparkline JS -->
    <script src="js/jquery.sparkline.js">
    </script>
    
    
    <script type="text/javascript">
      //ScrollUp
      $(function () {
        $.scrollUp({
          scrollName: 'scrollUp', // Element ID
          topDistance: '300', // Distance from top before showing element (px)
          topSpeed: 300, // Speed back to top (ms)
          animation: 'fade', // Fade, slide, none
          animationInSpeed: 400, // Animation in speed (ms)
          animationOutSpeed: 400, // Animation out speed (ms)
          scrollText: 'Scroll to top', // Text for element
          activeOverlay: false, // Set CSS color to display scrollUp active point, e.g '#00FFFF'
        });
      });

      $(document).ready(function () {
        pie_chart();
        sparkline_graphs();
      });

      function pie_chart() {
        $(function () {
          //create instance
          $('.chart1').easyPieChart({
            animate: 2000,
            barColor: '#e26666',
            trackColor: '#dddddd',
            scaleColor: '#e26666',
            size: 160,
            lineWidth: 7,
          });
          //update instance after 5 sec
          setTimeout(function () {
            $('.chart1').data('easyPieChart').update(50);
          }, 5000);
          setTimeout(function () {
            $('.chart1').data('easyPieChart').update(70);
          }, 10000);
          setTimeout(function () {
            $('.chart1').data('easyPieChart').update(30);
          }, 15000);
          setTimeout(function () {
            $('.chart1').data('easyPieChart').update(90);
          }, 19000);
          setTimeout(function () {
            $('.chart1').data('easyPieChart').update(40);
          }, 32000);
        });

        $(function () {
          //create instance
          $('.chart2').easyPieChart({
            animate: 2000,
            barColor: '#b5799e',
            trackColor: '#dddddd',
            scaleColor: '#b5799e',
            size: 160,
            lineWidth: 7,
          });
          //update instance after 5 sec
          setTimeout(function () {
            $('.chart2').data('easyPieChart').update(90);
          }, 10000);
          setTimeout(function () {
            $('.chart2').data('easyPieChart').update(40);
          }, 18000);
          setTimeout(function () {
            $('.chart2').data('easyPieChart').update(70);
          }, 28000);
          setTimeout(function () {
            $('.chart2').data('easyPieChart').update(50);
          }, 32000);
          setTimeout(function () {
            $('.chart2').data('easyPieChart').update(80);
          }, 40000);
        });

        $(function () {
          //create instance
          $('.chart3').easyPieChart({
            animate: 2000,
            barColor: '#579da9',
            trackColor: '#dddddd',
            scaleColor: '#579da9',
            size: 160,
            lineWidth: 7,
          });
          //update instance after 5 sec
          setTimeout(function () {
            $('.chart3').data('easyPieChart').update(20);
          }, 9000);
          setTimeout(function () {
            $('.chart3').data('easyPieChart').update(59);
          }, 20000);
          setTimeout(function () {
            $('.chart3').data('easyPieChart').update(38);
          }, 35000);
          setTimeout(function () {
            $('.chart3').data('easyPieChart').update(79);
          }, 49000);
          setTimeout(function () {
            $('.chart3').data('easyPieChart').update(96);
          }, 52000);
        });

        $(function () {
          //create instance
          $('.chart4').easyPieChart({
            animate: 2000,
            barColor: '#dba26b',
            trackColor: '#dddddd',
            scaleColor: '#dba26b',
            size: 160,
            lineWidth: 7,
          });
          //update instance after 5 sec
          setTimeout(function () {
            $('.chart4').data('easyPieChart').update(40);
          }, 6000);
          setTimeout(function () {
            $('.chart4').data('easyPieChart').update(67);
          }, 14000);
          setTimeout(function () {
            $('.chart4').data('easyPieChart').update(43);
          }, 23000);
          setTimeout(function () {
            $('.chart4').data('easyPieChart').update(80);
          }, 36000);
          setTimeout(function () {
            $('.chart4').data('easyPieChart').update(66);
          }, 41000);
        });


        $(function () {
          //create instance
          $('.chart5').easyPieChart({
            animate: 3000,
            barColor: '#1e825e',
            trackColor: '#dddddd',
            scaleColor: '#1e825e',
            size: 160,
            lineWidth: 7,
          });
          //update instance after 5 sec
          setTimeout(function () {
            $('.chart5').data('easyPieChart').update(30);
          }, 9000);
          setTimeout(function () {
            $('.chart5').data('easyPieChart').update(87);
          }, 19000);
          setTimeout(function () {
            $('.chart5').data('easyPieChart').update(28);
          }, 27000);
          setTimeout(function () {
            $('.chart5').data('easyPieChart').update(69);
          }, 39000);
          setTimeout(function () {
            $('.chart5').data('easyPieChart').update(99);
          }, 47000);
        });

      }


      function sparkline_graphs() {
        $(function () {
          $('#stock-graph').sparkline('html', {
            type: 'bar',
            barColor: '#0daed3',
            barWidth: 7,
            height: 38,
          });
        });
      }


      google.load("visualization", "1", {
        packages: ["corechart"]
      });

      $(document).ready(function () {
//        drawChart1();
        drawChart2();
//        drawChart3();
//        drawChart4();
//        drawRegionsMap();
//        drawTable();
//        drawVisualization();
//        bubbleChart();
      })

      function drawChart1() {
        var data = google.visualization.arrayToDataTable([
          ['Year', 'Google+', 'Facebook'],
          ['2005', 90, 30],
          ['2006', 400, 200],
          ['2007', 1050, 320],
          ['2008', 1940, 550],
          ['2009', 2310, 770],
          ['2010', 970, 1960],
          ['2011', 1660, 2520],
          ['2012', 1030, 3540]
          ]);

        var options = {
          width: 'auto',
          pointSize: 7,
          lineWidth: 1,
          height: '200',
          backgroundColor: 'transparent',
          colors: ['#b5799e', '#579da9', '#e26666', '#1e825e', '#dba26b'],
          tooltip: {
            textStyle: {
              color: '#666666',
              fontSize: 11
            },
            showColorCode: true
          },
          legend: {
            textStyle: {
              color: 'black',
              fontSize: 12
            }
          },
          chartArea: {
            left: 40,
            top: 10,
            height: "80%"
          }
        };

        var chart = new google.visualization.AreaChart(document.getElementById('area_chart'));
        chart.draw(data, options);
      }


     function drawChart2() {
        var data = google.visualization.arrayToDataTable([
          ['Year', 'Price'],
         <%
          ArrayList<AssetRecords> ar11=(ArrayList<AssetRecords>)request.getAttribute("al");
          for(int j=0;j<ar11.size();j++)
          {
              AssetRecords ar22=ar11.get(j);
              out.print("['"+ar22.getYear()+"',"+ar22.getPrice()+"],");
          }
          
          %>
          ]);

        var options = {
          width: '800',
          height: '160',
          backgroundColor: 'transparent',
          colors: ['#e26666', '#579da9', '#1e825e', '#b5799e', '#dba26b'],
          tooltip: {
            textStyle: {
              color: '#666666',
              fontSize: 11
            },
            showColorCode: true
          },
          legend: {
            textStyle: {
              color: 'black',
              fontSize: 12
            }
          },
          chartArea: {
            left: 100,
            top: 10
          },
          focusTarget: 'category',
          hAxis: {
            textStyle: {
              color: 'black',
              fontSize: 12
            }
          },
          vAxis: {
            textStyle: {
              color: 'black',
              fontSize: 12
            }
          },
          pointSize: 8,
          chartArea: {
            left: 60,
            top: 10,
            height: '80%'
          },
          lineWidth: 2,
        };

        var chart = new google.visualization.LineChart(document.getElementById('line_chart'));
        chart.draw(data, options);
      }


      function drawChart3() {
        var data = google.visualization.arrayToDataTable([
          ['Year', 'Visitors', 'Orders', 'Income', 'Expenses'],
          ['2007', 300, 800, 900, 300],
          ['2008', 1170, 860, 1220, 564],
          ['2009', 260, 1120, 2870, 2340],
          ['2010', 1030, 540, 3430, 1200],
          ['2011', 200, 700, 1700, 770],
          ['2012', 1170, 2160, 3920, 800], ]);

        var options = {
          width: 'auto',
          height: '160',
          backgroundColor: 'transparent',
          colors: ['#b5799e', '#579da9', '#e26666', '#1e825e', '#dba26b'],
          tooltip: {
            textStyle: {
              color: '#666666',
              fontSize: 11
            },
            showColorCode: true
          },
          legend: {
            textStyle: {
              color: 'black',
              fontSize: 12
            }
          },
          chartArea: {
            left: 60,
            top: 10,
            height: '80%'
          },
        };

        var chart = new google.visualization.ColumnChart(document.getElementById('column_chart'));
        chart.draw(data, options);
      }

      function drawChart4() {
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['Eat', 10],
          ['Work', 9],
          ['Commute', 2],
          ['Read', 2],
          ['Sleep', 7],
          ['Play', 2],
          ]);

        var options = {
          width: 'auto',
          height: '265',
          backgroundColor: 'transparent',
          colors: ['#b5799e', '#579da9', '#e26666', '#1e825e', '#dba26b', '#666666'],
          tooltip: {
            textStyle: {
              color: '#666666',
              fontSize: 11
            },
            showColorCode: true
          },
          legend: {
            position: 'left',
            textStyle: {
              color: 'black',
              fontSize: 12
            }
          },
          chartArea: {
            left: 0,
            top: 10,
            width: "100%",
            height: "100%"
          }
        };

        var chart = new google.visualization.PieChart(document.getElementById('pie_chart'));
        chart.draw(data, options);
      }

      //Geo Charts

      google.load('visualization', '1', {'packages': ['geochart']});
      google.setOnLoadCallback(drawRegionsMap);

      function drawRegionsMap() {
        var data = google.visualization.arrayToDataTable([
          ['Country', 'Popularity'],
          ['Germany', 200],
          ['IN', 900],
          ['United States', 300],
          ['Brazil', 400],
          ['Canada', 500],
          ['France', 600],
          ['RU', 700]
          ]);

        var options = {
          width: 'auto',
          height: '280',
          backgroundColor: 'transparent',
          colors: ['#b5799e', '#dba26b', '#1e825e', '#579da9', '#666666', '#e26666'],
        };

        var chart = new google.visualization.GeoChart(document.getElementById('geo_chart'));
        chart.draw(data, options);
      };

      //Table Charts

      google.load('visualization', '1', {packages:['table']});
      google.setOnLoadCallback(drawTable);
      function drawTable() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Name');
        data.addColumn('number', 'Salary');
        data.addColumn('boolean', 'Full Time Employee');
        data.addRows([
          ['Mike',  {v: 10000, f: '$10,000'}, true],
          ['Carry',   {v: 18000, f: '$18,000'},  false],
          ['Arjun', {v: 12500, f: '$12,500'}, false],
          ['Basava',   {v: 28000, f: '$17,000'}, true],
          ['Sandy',  {v: 10000, f: '$11,000'}, true]
          ]);

        var table = new google.visualization.Table(document.getElementById('table_chart'));
        table.draw(data, {showRowNumber: true});
      }

      //Candlestick Chart

      function drawVisualization() {
        var data = google.visualization.arrayToDataTable([
          ['Mon', 20, 28, 38, 45],
          ['Tue', 31, 38, 55, 66],
          ['Wed', 50, 55, 77, 80],
          ['Thu', 77, 77, 66, 50],
          ['Fri', 68, 66, 22, 15]
          // Treat first row as data as well.
          ], true);

        var options = {
          legend: 'none',
          width: 'auto',
          height: '280',
          backgroundColor: 'transparent',
          colors: ['#579da9', '#1e825e', '#e26666', '#b5799e', '#dba26b', '#666666'],
        };

        var chart = new google.visualization.CandlestickChart(document.getElementById('candlestick_chart'));
        chart.draw(data, options);
      }

      // google.setOnLoadCallback(drawVisualization);

      //Bubble Chart

      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(bubbleChart);
      function bubbleChart() {
        var data = google.visualization.arrayToDataTable([
          ['ID', 'Life Expectancy', 'Fertility Rate', 'Region',     'Population'],
          ['CAN',    80.66,              1.67,      'North America',  33739900],
          ['DEU',    79.84,              1.36,      'Europe',         81902307],
          ['DNK',    78.6,               1.84,      'Europe',         5523095],
          ['SL',     72.73,              2.78,      'South Asia',    109716203],
          ['GBR',    80.05,              2,         'Europe',         61801570],
          ['IRN',    72.49,              1.7,       'Middle East',    73137148],
          ['IRQ',    68.09,              4.77,      'Middle East',    31090763],
          ['ISR',    81.55,              2.96,      'Middle East',    7485600],
          ['RUS',    68.6,               1.54,      'Europe',         141850000],
          ['USA',    78.09,              2.05,      'North America',  307007000]
          ]);

        var options = {
          title: 'Correlation between life expectancy, fertility rate and population of some world countries (2012)',
          hAxis: {title: 'Life Expectancy'},
          vAxis: {title: 'Fertility Rate'},
          colors: ['#b5799e', '#dba26b', '#1e825e', '#579da9', '#666666', '#e26666'],
          fontSize: 11,
          bubble: {textStyle: {fontSize: 11}}
        };

        var chart = new google.visualization.BubbleChart(document.getElementById('bubble_chart'));
        chart.draw(data, options);
      }

      //Main menu navigation
      
      $('.submenu > a').click(function(e){
        e.preventDefault();
        var submenu = $(this).siblings('ul');
        var li = $(this).parents('li');
        var submenus = $('#mainnav li.submenu ul');
        var submenus_parents = $('#mainnav li.submenu');
        if(li.hasClass('open'))
        {
          if(($(window).width() > 768) || ($(window).width() < 479)) {
            submenu.slideUp();
          } else {
            submenu.fadeOut(250);
          }
          li.removeClass('open');
        } else 
        {
          if(($(window).width() > 768) || ($(window).width() < 479)) {
            submenus.slideUp();     
            submenu.slideDown();
          } else {
            submenus.fadeOut(250);      
            submenu.fadeIn(250);
          }
          submenus_parents.removeClass('open');   
          li.addClass('open');  
        }
      });
      
      var ul = $('#mainnav > ul');
      
      $('#mainnav > a').click(function(e)
      {
        e.preventDefault();
        var mainnav = $('#mainnav');
        if(mainnav.hasClass('open'))
        {
          mainnav.removeClass('open');
          ul.slideUp(250);
        } else 
        {
          mainnav.addClass('open');
          ul.slideDown(250);
        }
      });
      </script>
                                              
          
          
          
          
          
          
                                        <!--//neighborhood-->

<!--                                        <div class="map-buy-single">
                                            <h4>Location</h4>
                                            <div class="map-buy-single1">
                                                <div id="map"></div>
                                             <script async defer
                                                     src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAdYh1-7csnkStf-dYwj0PomL6NZE5rWKY&libraries=visualization&callback=initMap">
                                                            </script>
                                                        <script>function initMap() {
  var map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: 22, lng: 72},
    zoom: 6,
    styles: [{
      featureType: 'poi',
      stylers: [{ visibility: 'off' }]  // Turn off points of interest.
    }, {
      featureType: 'transit.station',
      stylers: [{ visibility: 'off' }]  // Turn off bus stations, train stations, etc.
    }],
    disableDoubleClickZoom: true
  });
} </script>

                                            </div>
                                        </div>-->

<!--                                        <div class="video-pre">
                                            <h4>360 Image</h4>


                                            <iframe src="https://player.vimeo.com/video/63931426"  webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

                                        </div>-->
                                    </div>





                                    <div class="col-md-3">
                                        <div class="single-box-right right-immediate">
                                            <h4>Our Agents</h4>
                                           
                                            
<!--                                          
                                             <%
          
          
          if(request.getAttribute("adl")!=null)
          {
          
              ArrayList<AgentDetail> al=(ArrayList<AgentDetail>)request.getAttribute("adl");
                               // get_random g = new get_random();
                                AgentDetail ad =al.get(0);

                               // hs.setAttribute("agentobj", ad);

                            %>
                                            <div class="single-box-img ">
                                                <div class="box-img">
                                                    <a href="agentdescription.jsp">
                                                        
                                                        <img class="img-responsive" src="images/property/<%=ad.getAImg() %> " alt=""></a>
                                                </div>
                                                <div class="box-text">
                                                    
                                                    
                                                    
                                                    <p><a href="agentdescription.jsp"><%=ad.getAFname()+" "+ad.getALname() %></a></p>
                                                    <a href="GetAgentDetailServ?aid=<%= ad.getAId()%>" class="in-box">More Info</a>
                                                </div>
                                                <div class="clearfix"> </div>
                                            </div>
                              
                                                    
                                                    -->
                                                                                                     <%
                                //get_random g = new get_random();
                                AgentDetail ad1 = al.get(1);

                                //hs.setAttribute("agentobj", ad);

                            %>
                                                    <div class="single-box-img">
                                                <div class="box-img">
                                                    <a href="agents.jsp"><img class="img-responsive" src="images/profilepic/<%=ad1.getAImg() %> " alt=""></a>
                                                </div>
                                                <div class="box-text">
                                                    
                          
                                                    <p><a href="agents.jsp"><%=ad1.getAFname()+" "+ad1.getALname() %></a></p>
                                                    <a href="GetAgentDetailServ?aid=<%= ad1.getAId()%>" class="in-box">More Info</a>
                                                </div>
                                                <div class="clearfix"> </div>
                                            </div>
                                                    
                                                    
                                                                           <%
                                //get_random g = new get_random();
                                AgentDetail ad2 = al.get(2);

                              //  hs.setAttribute("agentobj", ad);

                            %>
                                            <div class="single-box-img">
                                                <div class="box-img">
                                                    <a href="single.jsp"><img class="img-responsive" src="images/profilepic/<%=ad2.getAImg() %> " alt=""></a>
                                                </div>
                                                <div class="box-text">
                                                    
                                                    
                                                    
                                                    <p><a href="single.jsp"><%=ad2.getAFname()+" "+ad2.getALname() %></a></p>
                                                    <a href="GetAgentDetailServ?aid=<%= ad2.getAId()%>" class="in-box">More Info</a>
                                                </div>
                                                <div class="clearfix"> </div>
                                            </div>
                                            
                                            
                                                                   <%
                                //get_random g = new get_random();
                                AgentDetail ad3 = al.get(3);

                               // hs.setAttribute("agentobj", ad);

                            %>
                                            <div class="single-box-img">
                                                <div class="box-img">
                                                    <a href="single.jsp"><img class="img-responsive" src="images/profilepic/<%=ad3.getAImg() %> " alt=""></a>
                                                </div>
                                                <div class="box-text">
                                                    <p><a href="single.jsp"><%=ad3.getAFname()+" "+ad3.getALname() %></a></p>
                                                    <a href="GetAgentDetailServ?aid=<%= ad3.getAId()%>" class="in-box">More Info</a>
                                                </div>
                                                <div class="clearfix"> </div>
                                            </div>
                                                    
                                                    
                                                    
                                            
                                            
                                                                   <%
                                //get_random g = new get_random();
                                AgentDetail ad5 = al.get(4);

                               // hs.setAttribute("agentobj", ad);

                            %>
                                            <div class="single-box-img">
                                                <div class="box-img">
                                                    <a href="single.jsp"><img class="img-responsive" src="images/profilepic/<%=ad5.getAImg() %> " alt=""></a>
                                                </div>
                                                <div class="box-text">
                                                    <p><a href="single.jsp"><%=ad5.getAFname()+" "+ad5.getALname() %></a></p>
                                                    <a href="GetAgentDetailServ?aid=<%= ad5.getAId()%>" class="in-box">More Info</a>
                                                </div>
                                                <div class="clearfix"> </div>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
<%

          }
%>
                                                
                            <!---->
                            <div class="container">
                                <div class="future">
                                    <h3 >Related Projects</h3>
                                    <div class="content-bottom-in">
                                        <ul id="flexiselDemo1">			
                                            <li><div class="project-fur">
                                                    <a href="single.jsp" ><img class="img-responsive" src="images/pi.jpg" alt="" />	</a>
                                                    <div class="fur">
                                                        <div class="fur1">
                                                            <span class="fur-money">Rs. 2.44 Lacs - 5.28 Lacs </span>
                                                            <h6 class="fur-name"><a href="single.jsp">Contrary to popular</a></h6>
                                                            <span>Mumbai</span>
                                                        </div>
                                                        <div class="fur2">
                                                            <span>2 BHK</span>
                                                        </div>
                                                    </div>					
                                                </div></li>
                                            <li><div class="project-fur">
                                                    <a href="single.jsp" ><img class="img-responsive" src="images/pi1.jpg" alt="" />	</a>
                                                    <div class="fur">
                                                        <div class="fur1">
                                                            <span class="fur-money">Rs. 2.44 Lacs - 5.28 Lacs </span>
                                                            <h6 class="fur-name"><a href="single.jsp">Contrary to popular</a></h6>
                                                            <span>Mumbai</span>
                                                        </div>
                                                        <div class="fur2">
                                                            <span>2 BHK</span>
                                                        </div>
                                                    </div>					
                                                </div></li>
                                            <li><div class="project-fur">
                                                    <a href="single.jsp" ><img class="img-responsive" src="images/pi2.jpg" alt="" />	</a>
                                                    <div class="fur">
                                                        <div class="fur1">
                                                            <span class="fur-money">Rs. 2.44 Lacs - 5.28 Lacs </span>
                                                            <h6 class="fur-name"><a href="single.jsp">Contrary to popular</a></h6>
                                                            <span>Mumbai</span>
                                                        </div>
                                                        <div class="fur2">
                                                            <span>2 BHK</span>
                                                        </div>
                                                    </div>					
                                                </div></li>
                                            <li><div class="project-fur">
                                                    <a href="single.jsp" ><img class="img-responsive" src="images/pi3.jpg" alt="" />	</a>
                                                    <div class="fur">
                                                        <div class="fur1">
                                                            <span class="fur-money">Rs. 2.44 Lacs - 5.28 Lacs </span>
                                                            <h6 class="fur-name"><a href="single.jsp">Contrary to popular</a></h6>
                                                            <span>Mumbai</span>
                                                        </div>
                                                        <div class="fur2">
                                                            <span>2 BHK</span>
                                                        </div>
                                                    </div>					
                                                </div></li>
                                        </ul>
                                        <script type="text/javascript">
                                            $(window).load(function () {
                                                $("#flexiselDemo1").flexisel({
                                                    visibleItems: 4,
                                                    animationSpeed: 1000,
                                                    autoPlay: true,
                                                    autoPlaySpeed: 3000,
                                                    pauseOnHover: true,
                                                    enableResponsiveBreakpoints: true,
                                                    responsiveBreakpoints: {
                                                        portrait: {
                                                            changePoint: 480,
                                                            visibleItems: 1
                                                        },
                                                        landscape: {
                                                            changePoint: 640,
                                                            visibleItems: 2
                                                        },
                                                        tablet: {
                                                            changePoint: 768,
                                                            visibleItems: 3
                                                        }
                                                    }
                                                });

                                            });
                                        </script>
                                        <script type="text/javascript" src="js/jquery.flexisel.js"></script>
                                    </div>
                                </div>





















                                <div class="single-grid">
                                    <h5>Feedback of this property:</h5>
                                    <%

                                        if (request.getAttribute("pfl") != null) {

                                            ArrayList<PropFeedback> pflist = (ArrayList<PropFeedback>) request.getAttribute("pfl");

                                            for (PropFeedback pf : pflist) {


                                    %>
                                    <div class="media">
                                        <div class="media-left" style="float: left;">
                                            <a href="#">
                                                <img class="media-object" src="images/av.png" alt="" />
                                            </a>
                                        </div>
                                        <div class="media-body">
                                            <h4 class="media-heading"><%=pf.getUId().getUName()%></h4>
                                            <p> <%=pf.getComment()%> </p>
                                        </div>
                                    </div>
                                    <%}
                                    } else {
                                    %>
                                    Be the first to give feedback.
                                    <%                                        }
                                    %>
                                </div>












                            </div>
                                    <br>
                                    <!--footer-->
                            <jsp:include page="footer1.jsp"></jsp:include>
                            <!--//footer-->
                            
    </body>
    </html>