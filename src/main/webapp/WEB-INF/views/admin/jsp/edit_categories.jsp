<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
//Tnumbnail function
$(function () {

	$("#edit_Pcat").click(function() {
		if($("#inputGroupSelect01").val() == "Choose..."){
			alert("카테고리를 선택해주세요.")
			event.preventDefault();
			return;
		}
		if($("#p_category_name").val() == ""){
			alert("상품명을 입력해주세요.")
			$("#p_category_name").focus();
			event.preventDefault();
			return;
		}
		
		$("#editPcat").submit();
		alert("카테고리가 수정되었습니다.");
		})
		
		
	
	$("#edit_Ccat").click(function() {
		if($("#subCat").val() == "Choose..."){
			alert("카테고리를 선택해주세요.")
			event.preventDefault();
			return;
		}
		if($("#c_category_name").val() == ""){
			alert("상품명을 입력해주세요.")
			$("#c_category_name").focus();
			event.preventDefault();
			return;
		}
		$("#editCcat").submit();
		alert("카테고리가 수정되었습니다.");
		})
	
	
})//ready
function categoryChange(e){
	var allSubs = document.getElementsByClassName("subc");
	for(var i = 0; i < allSubs.length ; i++){
		allSubs[i].style.display = "none";	
	}
	var selectedSubs = document.getElementsByClassName(e.value);
	for(var i = 0; i < selectedSubs.length ; i++){
		selectedSubs[i].style.display = "";	
	}
}
</script>

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

                

                <!-- 중분류 -->
               <div style="padding-left: 50px; width: 900px">
						<form action="http://localhost/rocketkurly/admin/jsp/edit_categories.do" method="post" id="editPcat" name="editPcat">
						<label
							style="font-size: 30px; font-weight: bold; padding-bottom: 30px">대분류</label>
						<div class="card" style="display: flex;flex-direction: row;padding: 20px;">
							<div class="input-group"
								style="width: 200px;flex:1; display:flex;">
								<label style="flex:1;" class="input-group-text" for="inputGroupSelect01">1차 분류</label> 
									<select style="flex:1;" class="form-select" id="inputGroupSelect01" name="p_category_name_before">
									<option selected>Choose...</option>
									<c:forEach var="pcat" items="${selectPCat}">
										<option value="${pcat.p_category_name}" ><c:out value="${pcat.p_category_name}"/></option>
									</c:forEach>
								</select>
							</div>
								<div style="display:flex;flex:1 ;float: right; width: 200px; margin-left: 100px">
                        <label style="font-size: 18px; width: 200px;flex:1;" for="html5-text-input" class="col-md-2 col-form-label" >변경 후 카테고리 명</label>
                            <input style="width: 100px; margin-top: 3px;flex: 1" class="form-control" type="text" id="p_category_name" name="p_category_name" />
								</div>
						</div>
						</form>
                         <button style="margin-top: 20px; float: right" class="btn btn-dark" id="edit_Pcat">대분류 카테고리 수정</button>
					</div>
					<!-- /대분류 -->

					<!-- 중분류 -->
					<div style="padding-left: 50px; width: 900px">
					<form action="http://localhost/rocketkurly/admin/jsp/edit_categories_C.do" method="post" id="editCcat" name="editCcat">
						<label
							style="font-size: 30px; font-weight: bold; padding-bottom: 30px">중분류</label>
						<div class="card" style="display: flex;flex-direction: row;padding: 20px;">
							<div class="input-group"
								style="width: 300px;flex:1; display:flex;">
								<label style="flex:1;" class="input-group-text" for="inputGroupSelect01">1차</label> 
									<select style="flex:1;" class="form-select" id="inputGroupSelect02" onchange="categoryChange(this)">
									<option selected>Choose...</option>
									<c:forEach var="pcat" items="${selectPCat}">
										<option value="${pcat.p_category_id}" ><c:out value="${pcat.p_category_name}"/></option>
									</c:forEach>
								</select>
								<label class="input-group-text" for="inputGroupSelect01">2차</label> 
								<select class="form-select" id="subCat" name="subCat">
										<option selected >Choose...</option>
										<c:forEach var="ccat" items="${selectCCat}">
										<option  class="subc ${ccat.p_category_id }" value="${ccat.sub_name}" style="display:none"><c:out value="${ccat.sub_name}"/></option>
									</c:forEach>
								</select>
							</div>
								<div style="display:flex;flex:1 ;float: right; width: 200px; margin-left: 100px">
                        <label style="font-size: 18px; width: 200px;flex:1;" for="html5-text-input" class="col-md-2 col-form-label" >변경 후 카테고리 명</label>
                            <input style="width: 100px; margin-top: 3px;flex: 1" class="form-control" type="text" id="c_category_name" name="c_category_name" />
								</div>
						</div>
						</form>
                         <button style="margin-top: 20px; float: right" class="btn btn-dark" id="edit_Ccat">중분류 카테고리 수정</button>
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