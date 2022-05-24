<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en" class="light-style layout-menu-fixed" dir="ltr"
	data-theme="theme-default" data-assets-path="../assets/"
	data-template="vertical-menu-template-free">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

<title>RoketKurly Admin</title>

<meta name="description" content="" />

<!-- Favicon -->
<link rel="icon" type="image/x-icon"
	href="../assets/img/favicon/badasaja.ico" />

<!-- Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
	rel="stylesheet" />

<!-- Icons. Uncomment required icon fonts -->
<link rel="stylesheet" href="../assets/vendor/fonts/boxicons.css" />

<!-- Core CSS -->
<link rel="stylesheet" href="../assets/vendor/css/core.css"
	class="template-customizer-core-css" />
<link rel="stylesheet" href="../assets/vendor/css/theme-default.css"
	class="template-customizer-theme-css" />
<link rel="stylesheet" href="../assets/css/demo.css" />

<!-- Vendors CSS -->
<link rel="stylesheet"
	href="../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

<!-- Page CSS -->

<!-- Helpers -->
<script src="https://cdn.jsdelivr.net/npm/chart.js@3.4.1"></script>
<!-- chart.js CDN -->
<script src="../assets/vendor/js/helpers.js"></script>

<!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
<!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
<script src="../assets/js/config.js"></script>

<style type="text/css">


.buy-now .btn-buy-now {
	box-shadow: none !important;
}

.img {
	width: 140px;
	height: 150px;
	border: 1px solid #333;
	display: inline-block;
}

.products {
	text-align: center;
	width: 200px;
	height: 230px;
	padding: 30px
}

h6 {
	padding-top: 10px
}

.container {
	display: flex;
	flex-direction: row;
	flex-wrap: wrap;
	width: 900px
}
</style>
</head>


<body>


	<%@ include file="nav.jsp"%>

	<div class="layout-wrapper layout-content-navbar">
		<div class="layout-container">
			<!-- Menu -->
			<%@ include file="sidemenu.jsp"%>
			<!-- / Menu -->
			<div class="layout-page">
				<!-- Content wrapper -->
				<div class="content-wrapper">
					<!-- Content -->

					<!-- 상품 전체 조회 -->
					<div style="padding-left: 50px; width: 950px;">
	<label style="font-size: 30px;font-weight: bold; padding-bottom: 30px">등급 관리</label>
						<div class="input-group input-group-merge"
							style="width: 200px; float: right;">
							<select class="form-select form-select-lg">
													<option>필터</option>
													<option value="1">등급</option>
													<option value="2">구매금액</option>
											</select>
						</div>

						<div class="container">

							<!-- product -->
							<div class="card">
								<table class="table" style="width: 800px">
									<thead>
										<tr>
											<th>id</th>
											<th>1년간 구매금액</th>
											<th>상태</th>
											<th>현재 등급</th>
											<th>교체등급</th>
										</tr>
									</thead>
									<tbody class="table-border-bottom-0">
										<tr>
											<td>test</td>
											<td>100,000</td>
											<td>정상</td>
											<td>silver</td>
											<td><select class="form-select form-select-lg">
													<option>등급 변경</option>
													<option value="1">gold</option>
													<option value="2">platinum</option>
											</select></td>
										</tr>
										<tr>
											<td>test</td>
											<td>100,000</td>
											<td>정상</td>
											<td>silver</td>
											<td><select class="form-select form-select-lg">
													<option>등급 변경</option>
													<option value="1">gold</option>
													<option value="2">platinum</option>
											</select></td>
										</tr>
										<tr>
											<td>test</td>
											<td>100,000</td>
											<td>정상</td>
											<td>silver</td>
											<td><select class="form-select form-select-lg">
													<option>등급 변경</option>
													<option value="1">gold</option>
													<option value="2">platinum</option>
											</select></td>
										</tr>
										<tr>
											<td>test</td>
											<td>100,000</td>
											<td>정상</td>
											<td>silver</td>
											<td><select class="form-select form-select-lg">
													<option>등급 변경</option>
													<option value="1">gold</option>
													<option value="2">platinum</option>
											</select></td>
										</tr>
										<tr>
											<td>test</td>
											<td>100,000</td>
											<td>정상</td>
											<td>silver</td>
											<td><select class="form-select form-select-lg">
													<option>등급 변경</option>
													<option value="1">gold</option>
													<option value="2">platinum</option>
											</select></td>
										</tr>
										<tr>
											<td>test</td>
											<td>100,000</td>
											<td>정상</td>
											<td>silver</td>
											<td><select class="form-select form-select-lg">
													<option>등급 변경</option>
													<option value="1">gold</option>
													<option value="2">platinum</option>
											</select></td>
										</tr>
										<tr>
											<td>test</td>
											<td>100,000</td>
											<td>정상</td>
											<td>silver</td>
											<td><select class="form-select form-select-lg">
													<option>등급 변경</option>
													<option value="1">gold</option>
													<option value="2">platinum</option>
											</select></td>
										</tr>
										<tr>
											<td>test</td>
											<td>100,000</td>
											<td>정상</td>
											<td>silver</td>
											<td><select class="form-select form-select-lg">
													<option>등급 변경</option>
													<option value="1">gold</option>
													<option value="2">platinum</option>
											</select></td>
										</tr>
										<tr>
											<td>test</td>
											<td>100,000</td>
											<td>정상</td>
											<td>silver</td>
											<td><select class="form-select form-select-lg">
													<option>등급 변경</option>
													<option value="1">gold</option>
													<option value="2">platinum</option>
											</select></td>
										</tr>
										<tr>
											<td>test</td>
											<td>100,000</td>
											<td>정상</td>
											<td>silver</td>
											<td><select class="form-select form-select-lg">
													<option>등급 변경</option>
													<option value="1">gold</option>
													<option value="2">platinum</option>
											</select></td>
										</tr>
										<tr>
											<td>test</td>
											<td>100,000</td>
											<td>정상</td>
											<td>silver</td>
											<td><select class="form-select form-select-lg">
													<option>등급 변경</option>
													<option value="1">gold</option>
													<option value="2">platinum</option>
											</select></td>
										</tr>
										
									</tbody>
								</table>
							</div>
						</div>
					</div>






					<!-- /상품 전체 조회 -->



					<div class="buy-now">
						<a href="" target="_blank" class="btn-buy-now"><img
							style="width: 60px" src="../assets/img/messenger.png"></a>
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
	<script
		src="../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

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