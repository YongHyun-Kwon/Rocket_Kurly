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

        .card-body table tr {
            border: 1px solid #333333;
            height: 90px
        }

        .card-body table tr td {
            border: 1px solid #333333;
            width: 100px
        }
        .buy-now .btn-buy-now{
            box-shadow: none !important;
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

                <!-- 대분류 -->
                <div style="padding-left: 50px ;width: 950px">
                    <label style="font-size: 30px;font-weight: bold; padding-bottom: 30px">대분류</label>
                    <div class="mb-3 row">
                        <label style="font-size: 20px;" for="html5-text-input" class="col-md-2 col-form-label">카테고리 명</label>
                        <div class="col-md-10">
                            <input style="width: 300px; margin-top: 3px" class="form-control" type="text" id="html5-text-input" />
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label style="font-size: 17px;" for="html5-text-input" class="col-md-2 col-form-label">카테고리 이미지</label>
                        <div class="col-md-10">
                            <input style="width: 300px; margin-top: 3px" class="form-control" type="text"  />
                        </div>
                    </div>
                    <button style="margin-top: 30px; float: right;" class="btn btn-dark">카테고리 생성</button>
                </div>
                <!-- /대분류 -->

                <!-- 중분류 -->
                <div style="padding-left: 50px ;width: 950px">
                    <label style="font-size: 30px;font-weight: bold; padding-bottom: 30px">중분류</label>
                    <div class="mb-3 row">
                        <label style="font-size: 20px;" for="html5-text-input" class="col-md-2 col-form-label">카테고리 명</label>
                        <div class="col-md-10">
                            <input style="width: 300px; margin-top: 3px" class="form-control" type="text"  />
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label style="font-size: 17px;" for="html5-text-input" class="col-md-2 col-form-label">카테고리 이미지</label>
                        <div class="col-md-10">
                            <input style="width: 300px; margin-top: 3px" class="form-control" type="text"  />
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label style="font-size: 20px;" for="html5-text-input" class="col-md-2 col-form-label">분류</label>
                        <div class="col-md-10">
                            <input style="width: 300px; margin-top: 3px" class="form-control" type="text"  />
                        </div>
                    </div>
                    <button style="margin-top: 30px ;float: right;" class="btn btn-dark">카테고리 생성</button>
                </div>
                <!-- /중분류 -->


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