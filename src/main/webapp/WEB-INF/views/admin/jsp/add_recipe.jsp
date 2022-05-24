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
.card-body table tr {
	border: 1px solid #333333;
	height: 90px
}

.card-body table tr td {
	border: 1px solid #333333;
	width: 100px
}

.buy-now .btn-buy-now {
	box-shadow: none !important;
}

.options {
	display: flex;
	width: 900px
}

.img {
	width: 200px;
	height: 200px;
	margin-right: 5%;
	margin-top: 2%;
}
</style>
</head>
<script type="text/javascript">
//Tnumbnail function
function readURL(input) {
	if (input.files && input.files[0]) {
		var reader = new FileReader();
		reader.onload = function(e) {
			document.getElementById('preview').src = e.target.result;
		};
		reader.readAsDataURL(input.files[0]);
	} else {
		document.getElementById('preview').src = "";
	}
}
function readURL1(input) {
	if (input.files && input.files[0]) {
		var reader = new FileReader();
		reader.onload = function(e) {
			document.getElementById('preview1').src = e.target.result;
		};
		reader.readAsDataURL(input.files[0]);
	} else {
		document.getElementById('preview1').src = "";
	}
}
function readURL2(input) {
	if (input.files && input.files[0]) {
		var reader = new FileReader();
		reader.onload = function(e) {
			document.getElementById('preview2').src = e.target.result;
		};
		reader.readAsDataURL(input.files[0]);
	} else {
		document.getElementById('preview2').src = "";
	}
}
</script>


<body>


	<%@ include file="nav.jsp"%>

	<div class="layout-wrapper layout-content-navbar">
		<div class="layout-container">
			<!-- Menu -->
			<%@ include file="sidemenu.jsp"%>
			<!-- / Menu -->
			<div class="layout-page">
				<!-- Content wrapper -->
				<div>
					<!-- Content -->

					<!-- 분류 -->
					<div style="padding: 50px; width: 950px">
						<label
							style="font-size: 30px; font-weight: bold; padding-bottom: 30px">레시피 등록</label>
					</div>
					<!-- /분류 -->


					<div style="padding-left: 50px; width: 950px">
						<div class="mb-3 row">
							<label>레시피 명</label>
							<div class="col-md-10">
								<input class="form-control" type="text"/>
							</div>
						</div>
						
						
						<div class="mb-3 row">
							<label>설명</label>
							<div class="col-md-10">
								<textarea rows="10" cols="85"></textarea>
							</div>
						</div>
						
						<div class="mb-3">
												<label class="form-label" for="basic-default-company"
													style="margin-top: 10px;">이미지 추가</label>
												<div class="input-group">
													<table style="margin: 0px auto;">
														<tr>
															<td><img class="img" id="preview" /> <br /> <br /> <input
																type="file" onchange="readURL(this);" class="btnAttach"
																name="upImg1" id="upImg1"></td>
															<td><img class="img"  id="preview1" /> <br /> <br /> <input
																type="file" onchange="readURL1(this);" class="btnAttach"
																name="upImg2" id="upImg2"></td>
															<td><img class="img"  id="preview2" /> <br /> <br /> <input
																type="file" onchange="readURL2(this);" class="btnAttach"
																name="upImg3" id="upImg3"></td>
														</tr>
													</table>
												</div>
											</div>
											<button style="margin-top: 30px; float: right;" class="btn btn-dark">레시피 추가</button>
	

					</div>


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