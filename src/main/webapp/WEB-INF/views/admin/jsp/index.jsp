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

                <div class="row" style="margin-left: 30px">
                    <!-- 방문자 현황 -->
                    <div style="width: 450px; height: 400px;">
                        <div class="card mb-4" style="width: 450px; height: 400px;">
                            <div class="col-md-8" style="width: 450px">
                                <h5 class="card-header m-0 me-2 pb-3">방문자 현황</h5>
                                <div id="totalRevenueChart"></div>
                            </div>
                        </div>
                    </div>
                    <!--/ 방문자 현황 -->

                    <!-- 일자별 요약 -->
                    <div style="width: 600px ;margin-left: 30px; height: 400px">
                        <div class="card">
							<div class="table-responsive text-nowrap">
								<table class="table">
									<thead>
										<tr>
											<th>일자</th>
											<th>주문수</th>
											<th>매출액</th>
											<th>방문자</th>
											<th>가입</th>
											<th>문의</th>
										</tr>
									</thead>
									<tbody class="table-border-bottom-0">
										<tr>
											<td>2022.05.13</td>
											<td>10</td>
											<td>10,000</td>
											<td>10</td>
											<td>105</td>
											<td>10</td>
										</tr>
										<tr>
											<td>2022.05.19</td>
											<td>200</td>
											<td>200,000</td>
											<td>200</td>
											<td>2</td>
											<td>0</td>
										</tr>
										<tr>
											<td>2022.05.20</td>
											<td>45</td>
											<td>450,000</td>
											<td>45</td>
											<td>454</td>
											<td>5</td>
										</tr>
										<tr>
											<td>2022.05.13</td>
											<td>10</td>
											<td>10,000</td>
											<td>10</td>
											<td>105</td>
											<td>10</td>
										</tr>
										<tr>
											<td>2022.05.19</td>
											<td>200</td>
											<td>200,000</td>
											<td>200</td>
											<td>2</td>
											<td>0</td>
										</tr>
										<tr>
											<td>2022.05.20</td>
											<td>45</td>
											<td>450,000</td>
											<td>45</td>
											<td>454</td>
											<td>5</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
                    </div>
                    <!--/ 일자별 요약 -->
                </div>

                <div class="row" style="margin: 40px">
                    <!-- 매출 조회 -->
                    <div class="card mb-4" style="width: 500px; height: 400px;">
                        <div class="col-md-8" style="width: 450px">
                            <h5 class="card-header m-0 me-2 pb-3">매츨 조회</h5>
                            <div style="padding: 20px">
                                <select id="largeSelect" class="form-select form-select-lg">
                                    <option>월 매출액</option>
                                    <option value="1">년 매출액</option>
                                    <option value="2">일 매출액</option>
                                </select>
                                <div class="input-group" style="margin-top: 20px">
                                    <span style="width: 400px" class="input-group-text" id="basic-addon14">0원</span>
                                </div>
                                <select  class="form-select form-select-lg" style="margin-top: 40px">
                                    <option>월 판매수량</option>
                                    <option value="1">년 판매수량</option>
                                    <option value="2">일 판매수량</option>
                                </select>
                                <div class="input-group" style="margin-top: 20px">
                                    <span style="width: 400px" class="input-group-text" >0개</span>
                                </div>

                            </div>
                        </div>
                    </div>
                    <!--/매출 조회-->

                    <!-- 공지사항 -->
                    <div class="card mb-4" style="width: 500px; height: 400px; margin-left: 20px">
                        <div class="col-md-8" style="width: 450px;">
                            <h5 class="card-header m-0 me-2 pb-3">공지사항</h5>
                            <div style="padding-left: 20px; display: flex; margin-bottom: 30px">
                                <img style="width: 70px ;border-radius: 50%;margin-right: 20px" src="../assets/img/avatars/1.png">
                                <span style="width: 300px" class="input-group-text" >택배발송</span>
                            </div>
                            <div style="padding-left: 20px; display: flex; margin-bottom: 30px">
                                <img style="width: 70px ;border-radius: 50%;margin-right: 20px" src="../assets/img/avatars/1.png">
                                <span style="width: 300px" class="input-group-text" >주문공지</span>
                            </div>
                            <div style="padding-left: 20px; display: flex; margin-bottom: 30px">
                                <img style="width: 70px ;border-radius: 50%;margin-right: 20px" src="../assets/img/avatars/1.png">
                                <span style="width: 300px" class="input-group-text" >배송언제와요</span>
                            </div>

                            <button style="float: right" class="btn-dark">전송</button>

                        </div>
                    </div>

                    <!-- /공지사항 -->

                </div>

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