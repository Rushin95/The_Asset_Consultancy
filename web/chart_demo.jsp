<%@page import="model.AssetRecords"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<!--[if lt IE 7]>

<html class="lt-ie9 lt-ie8 lt-ie7" lang="en">

<![endif]-->
<!--[if IE 7]>

<html class="lt-ie9 lt-ie8" lang="en">

<![endif]-->
<!--[if IE 8]>

<html class="lt-ie9" lang="en">

<![endif]-->
<!--[if gt IE 8]>
  <!-->

  <html lang="en">
  
  <!--
  <![endif]-->
  
<!-- Mirrored from srinubasava.com/black-forest/graphs.html by HTTrack Website Copier/3.x [XR&CO'2008], Mon, 29 Sep 2014 14:44:38 GMT -->
<head>
    <meta charset="utf-8">
    <title>
      BlackForest
    </title>
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
    <header>
      <a href="index-2.html" class="logo">
        <img src="img/logo.png" alt="Logo"/>
      </a>
      <div class="user-profile">
        <a data-toggle="dropdown" class="dropdown-toggle">
          <img src="img/profile1.png" alt="profile">
          <span class="caret"></span>
        </a>
        <ul class="dropdown-menu pull-right">
          <li>
            <a href="#">
              Edit Profile
            </a>
          </li>
          <li>
            <a href="#">
              Account Settings
            </a>
          </li>
          <li>
            <a href="#">
              Logout
            </a>
          </li>
        </ul>
      </div>
      <ul class="mini-nav">
        <li>
          <a href="#">
            <div class="fs1" aria-hidden="true" data-icon="&#xe040;"></div>
            <span class="info-label">
              3
            </span>
          </a>
        </li>
        <li>
          <a href="#">
            <div class="fs1" aria-hidden="true" data-icon="&#xe04c;"></div>
            <span class="info-label-green">
              5
            </span>
          </a>
        </li>
        <li>
          <a href="#">
            <div class="fs1" aria-hidden="true" data-icon="&#xe037;"></div>
            <span class="info-label-orange">
              9
            </span>
          </a>
        </li>
      </ul>
    </header>
    <div class="container-fluid">
      <div id="mainnav" class="hidden-phone hidden-tablet">
        <ul style="display: block;">
          <li>
            <a href="index-2.html">
              <div class="icon">
                <span class="fs1" aria-hidden="true" data-icon="&#xe0a0;"></span>
              </div>
              Dashboard
            </a>
          </li>
          <li>
            <a href="forms.html">
              <div class="icon">
                <span class="fs1" aria-hidden="true" data-icon="&#xe0b8;"></span>
              </div>
              Forms
            </a>
          </li>
          <li class="active">
            <a href="graphs.html">
              <div class="icon">
                <span class="fs1" aria-hidden="true" data-icon="&#xe096;"></span>
              </div>
              Charts
            </a>
          </li>
          <li>
            <a href="ui-elements.html">
              <div class="icon">
                <span class="fs1" aria-hidden="true" data-icon="&#xe0d2;"></span>
              </div>
              UI Elements
            </a>
          </li>
          <li>
            <a href="icons.html">
              <div class="icon">
                <span class="fs1" aria-hidden="true" data-icon="&#xe0a9;"></span>
              </div>
              Icons
            </a>
          </li>
          <li>
            <a href="tables.html">
              <div class="icon">
                <span class="fs1" aria-hidden="true" data-icon="&#xe14a;"></span>
              </div>
              Tables
            </a>
          </li>
          <li>
            <a href="media.html">
              <div class="icon">
                <span class="fs1" aria-hidden="true" data-icon="&#xe00d;"></span>
              </div>
              Gallery
            </a>
          </li>
          <li>
            <a href="typography.html">
              <div class="icon">
                <span class="fs1" aria-hidden="true" data-icon="&#xe100;"></span>
              </div>
              Typography
            </a>
          </li>
          <li class="submenu">
            <a href="edit-profile.html" class="selected">
              <div class="icon">
                <span class="fs1" aria-hidden="true" data-icon="&#xe0aa;"></span>
              </div>
              Extras
            </a>
            <ul>
              <li>
                <a href="edit-profile.html">Edit Profile</a>
              </li>
              <li>
                <a href="calendar.html">Calendar</a>
              </li>
              <li>
                <a href="invoice.html">Invoice</a>
              </li>
              <li>
                <a href="login.html">Login</a>
              </li>
              <li>
                <a href="error.html">Error</a>
              </li>
              
              <li>
                <a href="help.html">Help</a>
              </li>
            </ul>
          </li>
        </ul>
      </div>
      
      <div class="dashboard-wrapper">
        <div class="main-container">
          <div class="navbar hidden-desktop">
            <div class="navbar-inner">
              <div class="container">
                <a data-target=".navbar-responsive-collapse" data-toggle="collapse" class="btn btn-navbar">
                  <span class="icon-bar">
                  </span>
                  <span class="icon-bar">
                  </span>
                  <span class="icon-bar">
                  </span>
                </a>
                <div class="nav-collapse collapse navbar-responsive-collapse">
                  <ul class="nav">
                    <li>
                      <a href="index-2.html">Dashboard</a>
                    </li>
                    <li>
                      <a href="forms.html">Forms</a>
                    </li>
                    <li>
                      <a href="graphs.html">Charts</a>
                    </li>
                    <li>
                      <a href="ui-elements.html">UI Elements</a>
                    </li>
                    <li>
                      <a href="icons.html">Icons</a>
                    </li>
                    <li>
                      <a href="tables.html">Tables</a>
                    </li>
                    <li>
                      <a href="media.html">Gallery</a>
                    </li>
                    <li>
                      <a href="typography.html">Typography</a>
                    </li>
                    <li>
                      <a href="edit-profile.html">Edit Profile</a>
                    </li>
                    <li>
                      <a href="calendar.html">Calendar</a>
                    </li>
                    <li>
                      <a href="invoice.html">Invoice</a>
                    </li>
                    <li>
                      <a href="login.html">Login</a>
                    </li>
                    <li>
                      <a href="error.html">Error</a>
                    </li>
                    
                    <li>
                      <a href="help.html">Help</a>
                    </li>
                  </ul>
                </div>
                <!-- /.nav-collapse -->
              </div>
            </div>
            <!-- /navbar-inner -->
          </div>
          
          <div class="row-fluid">
            <div class="span12">
              <div class="widget">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe096;"></span> Social Network - Area Chart
                  </div>
                </div>
                <div class="widget-body">
                  <div id="area_chart"></div>
                </div>
              </div>
            </div>
          </div>

          <div class="row-fluid">
            <div class="span12">
              <div class="widget">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe096;"></span> Site Statistics - Line Chart
                  </div>
                </div>
                <div class="widget-body">
                  <div id="line_chart"></div>
                </div>
              </div>
            </div>
          </div>

          <div class="row-fluid">
            <div class="span12">
              <div class="widget">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe0c2;"></span> Geo Chart
                  </div>
                </div>
                <div class="widget-body">
                  <div id="geo_chart"></div>
                </div>
              </div>
            </div>
          </div>
          
          <div class="row-fluid">
            <div class="span12">
              <div class="widget">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe13c;"></span> Bubble Chart
                  </div>
                </div>
                <div class="widget-body">
                  <div id="bubble_chart"></div>
                </div>
              </div>
            </div>
          </div>
          
          <div class="row-fluid">
            <div class="span12">
              <div class="widget">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe097;"></span> Column Chart
                  </div>
                </div>
                <div class="widget-body">
                  <div id="column_chart"></div>
                </div>
              </div>
            </div>
          </div>

          <div class="row-fluid">
            <div class="span12">
              <div class="widget">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe0a0;"></span> Current Statistics <span class="mini-title">Animated Pie Charts</span>
                  </div>
                </div>
                <div class="widget-body">
                  <div class="easy-pie-charts-container">
                    <div class="pie-chart">
                      <div class="chart1" data-percent="65">
                        478
                      </div>
                      <h5 class="name">
                        Clients
                      </h5>
                    </div>
                    <div class="pie-chart">
                      <div class="chart2" data-percent="47">
                        879
                      </div>
                      <h5 class="name">
                        Sales
                      </h5>
                    </div>
                    <div class="pie-chart">
                      <div class="chart3" data-percent="87">
                        $5920
                      </div>
                      <h5 class="name">
                        Income
                      </h5>
                    </div>
                    <div class="pie-chart">
                      <div class="chart4" data-percent="22">
                        $3275
                      </div>
                      <h5 class="name">
                        Expenses
                      </h5>
                    </div>
                    <div class="pie-chart">
                      <div class="chart5" data-percent="91">
                        71
                      </div>
                      <h5 class="name">
                        New Clients
                      </h5>
                    </div>
                    <div class="clearfix">
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="row-fluid">
            <div class="span12">
              <div class="widget">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe097;"></span> Candlestick Chart
                  </div>
                </div>
                <div class="widget-body">
                  <div id="candlestick_chart"></div>
                </div>
              </div>
            </div>
          </div>

          <div class="row-fluid">
            <div class="span12">
              <div class="widget">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe14a;"></span> Table Chart
                  </div>
                </div>
                <div class="widget-body">
                  <div id="table_chart"></div>
                </div>
              </div>
            </div>
          </div>

          <div class="row-fluid">
            <div class="span6">
              <div class="widget no-margin">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe095;"></span> My Daily Activities - Pie Chart
                  </div>
                </div>
                <div class="widget-body">
                  <div id="pie_chart"></div>
                </div>
              </div>
            </div>
            
            <div class="span6">
              <div class="widget no-margin">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe101;"></span> Progress bars
                  </div>
                </div>
                <div class="widget-body">
                  <ul class="progress-statistics">
                    <li>
                      <div class="details">
                        <span>
                          Windows
                        </span>
                        <span class="pull-right">
                          78%
                        </span>
                      </div>
                      <div class="progress progress-striped active">
                        <div class="bar" style="width: 78%;">
                        </div>
                      </div>
                    </li>
                    <li>
                      <div class="details">
                        <span>
                          Windows 8
                        </span>
                        <span class="pull-right">
                          32%
                        </span>
                      </div>
                      <div class="progress progress-success progress-striped active">
                        <div class="bar" style="width: 32%;">
                        </div>
                      </div>
                    </li>
                    <li>
                      <div class="details">
                        <span>
                          Mac
                        </span>
                        <span class="pull-right">
                          84%
                        </span>
                      </div>
                      <div class="progress progress-info progress-striped active">
                        <div class="bar" style="width: 84%;">
                        </div>
                      </div>
                    </li>
                    <li>
                      <div class="details">
                        <span>
                          Linux
                        </span>
                        <span class="pull-right">
                          44%
                        </span>
                      </div>
                      <div class="progress progress-striped active progress-danger">
                        <div class="bar" style="width: 44%;">
                        </div>
                      </div>
                    </li>
                    <li>
                      <div class="details">
                        <span>
                          IPhone/IPad
                        </span>
                        <span class="pull-right">
                          67%
                        </span>
                      </div>
                      <div class="progress progress-warning progress-striped active">
                        <div class="bar" style="width: 67%;">
                        </div>
                      </div>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          
        </div>
      </div>
      
      <!--/.fluid-container-->
    </div>
    <footer>
      <p>
        &copy; BlackForest 2013
      </p>
    </footer>
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
        drawChart1();
        drawChart2();
        drawChart3();
        drawChart4();
        drawRegionsMap();
        drawTable();
        drawVisualization();
        bubbleChart();
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
          width: 'auto',
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
    </body>
    
<!-- Mirrored from srinubasava.com/black-forest/graphs.html by HTTrack Website Copier/3.x [XR&CO'2008], Mon, 29 Sep 2014 14:44:41 GMT -->
</html>