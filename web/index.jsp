<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%
    //页面每隔10秒自动刷新一遍
    response.setHeader("refresh", "60");
%>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Plant Detection</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet">

</head>

<body id="page-top">

<nav class="navbar navbar-expand navbar-dark bg-dark static-top">

    <a class="navbar-brand mr-1" href="dash">Plant Detection</a>

    <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
        <i class="fas fa-bars"></i>
    </button>

    <!-- Navbar Search -->
    <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
        <div class="input-group">
            <input type="text" class="form-control" placeholder="Search for..." aria-label="Search"
                   aria-describedby="basic-addon2">
            <div class="input-group-append">
                <button class="btn btn-primary" type="button">
                    <i class="fas fa-search"></i>
                </button>
            </div>
        </div>
    </form>

    <!-- Navbar 右上角
    <ul class="navbar-nav ml-auto ml-md-0">
      <li class="nav-item dropdown no-arrow mx-1">
        <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-bell fa-fw"></i>
          <span class="badge badge-danger">9+</span>
        </a>
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="alertsDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      <li class="nav-item dropdown no-arrow mx-1">
        <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-envelope fa-fw"></i>
          <span class="badge badge-danger">7</span>
        </a>
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="messagesDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      <li class="nav-item dropdown no-arrow">
        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-user-circle fa-fw"></i>
        </a>
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
          <a class="dropdown-item" href="#">Settings</a>
          <a class="dropdown-item" href="#">Activity Log</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">Logout</a>
        </div>
      </li>
    </ul>-->

</nav>

<div id="wrapper">

    <!-- Sidebar -->
    <ul class="sidebar navbar-nav">
        <li class="nav-item active">
            <a class="nav-link" href="dash">
                <img src="pic/dashboard.png" height="25" , width="25">
                <span>Dashboard</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="Temperature.html">
                <img src="pic/temperature_s.png" height="25" , width="25">
                <span>Temperature</span>
            </a>
            <!-- <div class="dropdown-menu" aria-labelledby="pagesDropdown">
                <h6 class="dropdown-header">Login Screens:</h6>
                <a class="dropdown-item" href="login.html">Login</a>
                <a class="dropdown-item" href="register.html">Register</a>
                <a class="dropdown-item" href="forgot-password.html">Forgot Password</a>
                <div class="dropdown-divider"></div>
                <h6 class="dropdown-header">Other Pages:</h6>
                <a class="dropdown-item" href="404.html">404 Page</a>
                <a class="dropdown-item" href="blank.html">Blank Page</a>
            </div> -->
        </li>

        <!--<div class="dropdown-menu" aria-labelledby="pagesDropdown">
          <h6 class="dropdown-header">Login Screens:</h6>
          <a class="dropdown-item" href="login.html">Login</a>
          <a class="dropdown-item" href="register.html">Register</a>
          <a class="dropdown-item" href="forgot-password.html">Forgot Password</a>
          <div class="dropdown-divider"></div>
          <h6 class="dropdown-header">Other Pages:</h6>
          <a class="dropdown-item" href="404.html">404 Page</a>
          <a class="dropdown-item" href="blank.html">Blank Page</a>
        </div>-->
        <li class="nav-item">
            <a class="nav-link" href="Light.html">
                <img src="pic/sun_s.png" height="25" , width="25">
                <span>Light</span></a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="Humidity.html">
                <img src="pic/rain_s.png" height="25" , width="25">
                <span>Humidity</span></a>
        </li>
    </ul>

    <div id="content-wrapper">

        <div class="container-fluid">

            <!-- Breadcrumbs-->
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="#">Dashboard</a>
                </li>
                <li class="breadcrumb-item active">Overview</li>
            </ol>

            <!-- Icon Cards-->
            <div class="row">
                <div class="col-xl-3 col-sm-6 mb-3">
                    <div class="card text-white bg-primary o-hidden h-100">
                        <div class="card-body" style="background-color: #699DD1">
                            <div class="card-body-icon">
                                <img src="pic/temperature.png">
                            </div>
                            <div class="mr-5">Temperature</div>

                            <h2>
                                <h3>
                                    <div style="color: #ffffff"><%
                                        double Temp;
                                        if (request.getAttribute("temp") != null) {
                                            Temp = (double) request.getAttribute("temp");
                                            out.println(Temp);
                                            if (Temp >= 40) out.println("Too hot");
                                            else if (Temp <= 15) out.println("Too cold");
                                        }

                                    %></div>
                                </h3>

                            </h2>
                        </div>
                        <a class="card-footer text-white clearfix small z-1" style="background-color: #699DD1" href="#">
                            <span class="float-left">View Details</span>
                            <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
                        </a>
                    </div>
                </div>
                <div class="col-xl-3 col-sm-6 mb-3">
                    <div class="card text-white bg-warning o-hidden h-100">
                        <div class="card-body" style="background-color:#80C49D ">
                            <div class="card-body-icon">
                                <img src="pic/sun.png">
                            </div>
                            <div class="mr-5">Light</div>
                            <h2>
                                <h3>
                                    <div style="color: #ffffff"><%
                                        double light;
                                        if (request.getAttribute("light") != null) {
                                            light = (double) request.getAttribute("light");
                                            out.println(light);
                                            if (light >= 210) out.println("Too bright");
                                            else if (light <= 150) out.println("Too dark");
                                        }

                                    %></div>
                                </h3>

                            </h2>
                        </div>
                        <a class="card-footer text-white clearfix small z-1" style="background-color:#80C49D"
                           href="charts.html">
                            <span class="float-left">View Details</span>
                            <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
                        </a>
                    </div>
                </div>
                <div class="col-xl-3 col-sm-6 mb-3">
                    <div class="card text-white bg-success o-hidden h-100">
                        <div class="card-body" style="background-color:#e74c3c">
                            <div class="card-body-icon">
                                <img src="pic/rain.png">
                            </div>
                            <div class="mr-5">Humidity</div>
                            <h2>
                                <h3>
                                    <div style="color: #ffffff"><%
                                        double humidity;
                                        if (request.getAttribute("humidity") != null) {
                                            humidity = (double) request.getAttribute("humidity");
                                            out.println(humidity);
                                            if (humidity >= 500) out.println("Too wet");
                                            else if (humidity <= 350) out.println("Too dry");

                                        }

                                    %></div>
                                </h3>

                            </h2>
                        </div>
                        <a class="card-footer text-white clearfix small z-1" style="background-color:#e74c3c"
                           href="tables.html">
                            <span class="float-left">View Details</span>
                            <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
                        </a>
                    </div>
                </div>
                <!--<div class="col-xl-3 col-sm-6 mb-3">
                  <div class="card text-white bg-danger o-hidden h-100">
                    <div class="card-body">
                      <div class="card-body-icon">
                        <i class="fas fa-fw fa-life-ring"></i>
                      </div>
                      <div class="mr-5">13 New Tickets!</div>
                    </div>
                    <a class="card-footer text-white clearfix small z-1" href="#">
                      <span class="float-left">View Details</span>
                      <span class="float-right">
                        <i class="fas fa-angle-right"></i>
                      </span>
                    </a>
                  </div>
                </div>-->
            </div>

            <!-- Area Chart Example-->
            <div class="card mb-3" style="border: 1px solid rgba(0, 0, 0, 0.125)">
                <div class="card-header">
                    <i class="fas fa-chart-area"></i>
                    Chart Example
                </div>
                <div class="card-body">
                    <canvas id="myAreaChart" width="100%" height="25"></canvas>
                </div>
                <%--
                <%
                    List<Double> tlist = (List<Double>) request.getAttribute("tlist");
                    List<Double> llist = (List<Double>) request.getAttribute("llist");
                    List<Double> hlist = (List<Double>) request.getAttribute("hlist");
                    //for (double t : tlist)
                    //System.out.println(t)
                    System.out.println(tlist.get(0));
                %>

                <input value=${tlist} type="hidden" id="tlist">
                <input value=${llist} type="hidden" id="llist">
                <input value=${hlist} type="hidden" id="hlist">
--%>




                <script language="JavaScript" type="text/javascript">
                    function time() {
                        var now = new Date();
                        var year = now.getFullYear();
                        var month = now.getMonth();
                        var date = now.getDate();
                        var hour = now.getHours();
                        var minute = now.getMinutes();
                        var second = now.getSeconds()

                        document.getElementById("upTime").innerHTML = "Updated at:\t\t" + month + "/" + date + "/" + year + "\t" + hour + ":" + minute + ":" + second;
                    }
                </script>
                <body onload="time()">
                <div class="card-footer small text-muted" id="upTime"></div>
                </body>

            </div>
            <c:forEach var="x" items="${tlist}" step="1">
                <input type="hidden" class="tlist" value="${x}" placeholder="${x}">
            </c:forEach>
            <c:forEach var="y" items="${hlist}" step="1">
                <input type="hidden" class="hlist" value="${y}" placeholder="${y}">
            </c:forEach>
            <c:forEach var="z" items="${llist}" step="1">
                <input type="hidden" class="llist" value="${z}" placeholder="${z}">
            </c:forEach>
            <!-- DataTables Example
            <div class="card mb-3">
              <div class="card-header">
                <i class="fas fa-table"></i>
                Data Table Example</div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">

                  </table>
                </div>
              </div>
              <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
            </div>-->

        </div>
        <!-- /.container-fluid -->

        <!-- Sticky Footer -->
        <!--<footer class="sticky-footer">
          <div class="container my-auto">
            <div class="copyright text-center my-auto">
              <span>Copyright © Your Website 2019</span>
            </div>
          </div>
        </footer>-->

    </div>
    <!-- /.content-wrapper -->


</div>
<!-- /#wrapper -->


<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
      <div class="modal-footer">
        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
        <a class="btn btn-primary" href="login.html">Logout</a>
      </div>
    </div>
  </div>
</div>-->

<!-- Bootstrap core JavaScript-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Page level plugin JavaScript-->
<script src="vendor/chart.js/Chart.min.js"></script>
<script src="vendor/datatables/jquery.dataTables.js"></script>
<script src="vendor/datatables/dataTables.bootstrap4.js"></script>

<!-- Custom scripts for all pages-->
<script src="js/sb-admin.min.js"></script>

<!-- Demo scripts for this page-->
<script src="js/demo/datatables-demo.js"></script>
<script src="js/demo/chart-area-demo.js"></script>

</body>

</html>
