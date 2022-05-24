<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html
        lang="en"
        class="light-style layout-menu-fixed"
        dir="ltr"
        data-theme="theme-default"
        data-assets-path="../assets/"
        data-template="vertical-menu-template-free"
>
<head>
    <meta charset="utf-8"/>
    <meta
            name="viewport"
            content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
    />

    <title>RoketKurly Admin</title>

    <meta name="description" content=""/>

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="../assets/img/favicon/badasaja.ico"/>

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link
            href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
            rel="stylesheet"
    />

    <!-- Icons. Uncomment required icon fonts -->
    <link rel="stylesheet" href="../assets/vendor/fonts/boxicons.css"/>

    <!-- Core CSS -->
    <link rel="stylesheet" href="../assets/vendor/css/core.css" class="template-customizer-core-css"/>
    <link rel="stylesheet" href="../assets/vendor/css/theme-default.css" class="template-customizer-theme-css"/>
    <link rel="stylesheet" href="../assets/css/demo.css"/>

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css"/>

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js@3.4.1"></script> <!-- chart.js CDN -->
    <script src="../assets/vendor/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="../assets/js/config.js"></script>

    <style type="text/css">
		
		table tr {
		height: 200px;
		}
		
		table td{
		width: 200px
		}
		
        table tr div{
            border: 1px solid #333333;
            height: 100px;
            width: 100px;
        }

      
        .buy-now .btn-buy-now{
            box-shadow: none !important;
        }
        
        .img{
        width: 140px;
        height: 150px;
        border: 1px solid #333;
        display: inline-block;
        }
        
        .products{
        
        text-align: center;
        width: 200px;
        height: 230px;
        padding: 30px
        }
        
        h6{
        padding-top: 10px
        }
        
        .container{
        display: flex;
        flex-direction : row;
        flex-wrap:wrap;
        width: 900px
        
        }
    </style>
</head>


<body>


<%@ include file="nav.jsp" %>

<div class="layout-wrapper layout-content-navbar">
    <div class="layout-container">
        <!-- Menu -->
        <%@ include file="sidemenu.jsp" %>
        <!-- / Menu -->
        <div class="layout-page">
            <!-- Content wrapper -->
            <div class="content-wrapper">
                <!-- Content -->

                <!-- 상품 전체 조회 -->
                <div style="padding-left: 50px ;width: 950px;">
                    <label style="font-size: 30px;font-weight: bold; padding-bottom: 30px">상품 전체 조회</label>
                    <div class="input-group input-group-merge" style="width: 200px;float: right;">
                        <span class="input-group-text" id="basic-addon-search31"><i class="bx bx-search"></i></span>
                        <input
                          type="text"
                          class="form-control"
                          placeholder="Search..."
                          aria-label="Search..."
                          aria-describedby="basic-addon-search31"
                        />
                      </div>
                      
                      <div class="container">
                 
                      <!-- product -->
                    <div class="products">
                    <div>
                            <div>
                                <div class="img">
                                </div>
                                <div>
                                    <h6><a href="#">맛있는 사과</a></h6>
                                    <h5>$30.00</h5>
                                </div>
                            </div>
                        </div>
                                        
                    </div>
                    <div class="products">
                    <div>
                            <div>
                                <div class="img">
                                </div>
                                <div>
                                    <h6><a href="#">맛있는 사과</a></h6>
                                    <h5>$30.00</h5>
                                </div>
                            </div>
                        </div>
                                        
                    </div>
                    <div class="products">
                    <div>
                            <div>
                                <div class="img">
                                </div>
                                <div>
                                    <h6><a href="#">맛있는 사과</a></h6>
                                    <h5>$30.00</h5>
                                </div>
                            </div>
                        </div>
                                        
                    </div>
                    <div class="products">
                    <div>
                            <div>
                                <div class="img">
                                </div>
                                <div>
                                    <h6><a href="#">맛있는 사과</a></h6>
                                    <h5>$30.00</h5>
                                </div>
                            </div>
                        </div>
                                        
                    </div>
                    <div class="products">
                    <div>
                            <div>
                                <div class="img">
                                </div>
                                <div>
                                    <h6><a href="#">맛있는 사과</a></h6>
                                    <h5>$30.00</h5>
                                </div>
                            </div>
                        </div>
                                        
                    </div>
                    <div class="products">
                    <div>
                            <div>
                                <div class="img">
                                </div>
                                <div>
                                    <h6><a href="#">맛있는 사과</a></h6>
                                    <h5>$30.00</h5>
                                </div>
                            </div>
                        </div>
                                        
                    </div>
                    <div class="products">
                    <div>
                            <div>
                                <div class="img">
                                </div>
                                <div>
                                    <h6><a href="#">맛있는 사과</a></h6>
                                    <h5>$30.00</h5>
                                </div>
                            </div>
                        </div>
                                        
                    </div>
                    <div class="products">
                    <div>
                            <div>
                                <div class="img">
                                </div>
                                <div>
                                    <h6><a href="#">맛있는 사과</a></h6>
                                    <h5>$30.00</h5>
                                </div>
                            </div>
                        </div>
                                        
                    </div>
                    <div class="products">
                    <div>
                            <div>
                                <div class="img">
                                </div>
                                <div>
                                    <h6><a href="#">맛있는 사과</a></h6>
                                    <h5>$30.00</h5>
                                </div>
                            </div>
                        </div>
                                        
                    </div>
                    <div class="products">
                    <div>
                            <div>
                                <div class="img">
                                </div>
                                <div>
                                    <h6><a href="#">맛있는 사과</a></h6>
                                    <h5>$30.00</h5>
                                </div>
                            </div>
                        </div>
                                        
                    </div>
                    <div class="products">
                    <div>
                            <div>
                                <div class="img">
                                </div>
                                <div>
                                    <h6><a href="#">맛있는 사과</a></h6>
                                    <h5>$30.00</h5>
                                </div>
                            </div>
                        </div>
                                        
                   
                    <!-- /product -->
                    <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <div class="demo-inline-spacing">
                        <!-- Basic Pagination -->
                        <nav aria-label="Page navigation">
                          <ul class="pagination">
                            <li class="page-item first">
                              <a class="page-link" href="javascript:void(0);"
                                ><i class="tf-icon bx bx-chevrons-left"></i
                              ></a>
                            </li>
                            <li class="page-item prev">
                              <a class="page-link" href="javascript:void(0);"
                                ><i class="tf-icon bx bx-chevron-left"></i
                              ></a>
                            </li>
                            <li class="page-item">
                              <a class="page-link" href="javascript:void(0);">1</a>
                            </li>
                            <li class="page-item">
                              <a class="page-link" href="javascript:void(0);">2</a>
                            </li>
                            <li class="page-item active">
                              <a class="page-link" href="javascript:void(0);">3</a>
                            </li>
                            <li class="page-item">
                              <a class="page-link" href="javascript:void(0);">4</a>
                            </li>
                            <li class="page-item">
                              <a class="page-link" href="javascript:void(0);">5</a>
                            </li>
                            <li class="page-item next">
                              <a class="page-link" href="javascript:void(0);"
                                ><i class="tf-icon bx bx-chevron-right"></i
                              ></a>
                            </li>
                            <li class="page-item last">
                              <a class="page-link" href="javascript:void(0);"
                                ><i class="tf-icon bx bx-chevrons-right"></i
                              ></a>
                            </li>
                          </ul>
                        </nav>
                        <!--/ Basic Pagination -->
                      </div>
                    </div>
                    </div>
                  </div>
                </div>
                    </div>
                </div>
                
                <!-- /상품 전체 조회 -->



                <div class="buy-now">
                    <a
                            href=""
                            target="_blank"
                            class="btn-buy-now"
                    ><img style="width: 60px" src="../assets/img/messenger.png"></a
                    >
                </div>

            </div>
        </div>
    </div>
</div>


<!-- / Content -->


<script type="text/javascript">


</script>


<!-- / Layout wrapper -->

<!-- Core JS -->
<!-- build:js assets/vendor/js/core.js -->
<script src="../assets/vendor/libs/jquery/jquery.js"></script>
<script src="../assets/vendor/libs/popper/popper.js"></script>
<script src="../assets/vendor/js/bootstrap.js"></script>
<script src="../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

<script src="../assets/vendor/js/menu.js"></script>
<!-- endbuild -->

<!-- Vendors JS -->
<script src="../assets/vendor/libs/apex-charts/apexcharts.js"></script>

<!-- Main JS -->
<script src="../assets/js/main.js"></script>

<!-- Page JS -->
<script src="../assets/js/dashboards-analytics.js"></script>

<!-- Place this tag in your head or just before your close body tag. -->
<script async defer src="https://buttons.github.io/buttons.js"></script>

</body>
</html>