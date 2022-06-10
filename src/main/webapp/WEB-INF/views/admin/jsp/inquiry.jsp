<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en" class="light-style layout-menu-fixed" dir="ltr"
	data-theme="theme-default" data-assets-path="../assets/"
	data-template="vertical-menu-template-free">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

<title>RoketKurly Admin</title>

<meta name="description" content="" />
<script src="http://code.jquery.com/jquery-latest.js"></script> 
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

<script type="text/javascript">
$(function () {
	
	
	$("[name=answerBtn]").click(function(){
		
		var qFrm = $("#qFrm").serialize();
		var btnId = $(this).attr("id");
		
		var idx = btnId.substr(9, btnId.length);
		
		$("#question_no").attr("value", $("input#qNo"+idx).val());
		
		$.ajax({
			url : "http://localhost/rocketkurly/admin/jsp/inquiry3.do",
			type : "POST",
			data : {"question_no" : $("#question_no").val()},
			dataType: 'json',
			success : function( jsonObj ) {
				
				
				$("#title").html(jsonObj.questionTitle);
				$("#writerId").html(jsonObj.questionWriter);
				$("#contents").html(jsonObj.questionContents);
				$("#answer").val(jsonObj.questionAnswer);
				$("#date").html(jsonObj.questionDate);
				$("#type").html(jsonObj.questionType);
			},
			error : function(xhr) {
				alert(xhr.text + "/" + xhr.status);
				console.log(xhr);
			}
		});//ajax
		
	});//answerBtnClick
	
	$("#saveBtn").click(function(){
		
		if($("#answer").val() == ""){
			alert("답변을 입력해주세요.");
			$("#answer").focus();
			event.preventDefault();
			return;
		}
		
		$.ajax({
			url : "http://localhost/rocketkurly/admin/jsp/inquiryAnswer.do",
			type : "POST",
			data : {"answer" : $("#answer").val(),
					"question_no" : $("#question_no").val()},
			dataType: 'json',
			success : function( jsonObj ) {
				
				if(1 == jsonObj.status){
					alert("답변 작성이 완료되었습니다.");
					$("#closeBtn").click();
				}
				
			},
			error : function(xhr) {
				alert(xhr.text + "/" + xhr.status);
				console.log(xhr);
			}
		});//ajax
	
	})//saveBtnclick
	
})// ready
	</script>

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
<%

%>

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

					<!-- 문의 검색 인풋 -->
					<div style="padding-left: 50px; width: 1000px;">
						<form action="inquiry2.do" id="frm">
					<label style="font-size: 30px;font-weight: bold; padding-bottom: 30px">문의 조회</label>
						<div class="input-group input-group-merge" style="width: 200px;float: right;">
                        <span class="input-group-text" id="basic-addon-search31"><i class="bx bx-search"></i></span>
                        <input
                          type="text"
                          class="form-control"
                          placeholder="Search..."
                          aria-label="Search..."
                          aria-describedby="basic-addon-search31"
                          id="keyword"
                          name="keyword"
                        />
                        </div>
                      </form>

							<!-- 문의 테이블 -->
						<div class="container">
							
									<div class="card">
									<form id="qFrm" name="qFrm" method="post" >
										<table class="table" style="width: 900px">
											<thead>
												<tr>
													<th>id</th>
													<th>제목</th>
													<th>문의 유형</th>
													<th>작성일</th>
													<th>상태</th>
													<th>답변 작성</th>
												</tr>
											</thead>
							 	<c:forEach var="questionData" items="${questionList}" varStatus="i"> 
							 		<input type="hidden" id="question_no" name="question_no" value=""/>
									<input type="hidden" id="qNo${i.index}" value="${questionData.question_no}"/>
											<tbody class="table-border-bottom-0">
												<tr>
													<td><c:out value="${questionData.member_id}"/></td>
													<td><c:out value="${questionData.title}"/></td>
													<td><c:out value="${questionData.type}"/></td>
													<td><c:out value="${questionData.reg_dt}"/></td>
													<td><c:out value="${null eq questionData.answer ? '미답변' : '답변완료'}"/></td>
													<td>
													<button id="answerBtn${i.index}" name="answerBtn" type="button" class="btn-dark" data-bs-toggle="modal" data-bs-target="#basicModal">답변 작성</button></td>
												</tr>
											</tbody>
								</c:forEach>
										</table>
									</form>
									</div>
						</div>
					</div>
					<!-- page navigation -->
					 <nav aria-label="Page navigation">
                            <c:choose>
	                            <c:when test="${empty keyword}">
	                                <ul class="pagination">
	                             <c:if test="${10 lt currentPage}"> 
		                            <li class="page-item first">
		                              <a class="page-link" href="inquiry.do?currentPage=${currentPage-10}"><i class="tf-icon bx bx-chevrons-left"></i></a>
		                            </li>
	                            </c:if>
	                            <c:if test="${1 ne currentPage}">
		                            <li class="page-item prev">
		                              <a class="page-link" href="inquiry.do?currentPage=${currentPage-1}"><i class="tf-icon bx bx-chevron-left"></i></a>
		                            </li>
	                            </c:if>
        					<c:forEach var="i" begin="${startPage}" end="${endPage}">
    
                         <c:choose>
         					<c:when test="${i eq currentPage }">
							
							<li class="page-item active">
                              <a class="page-link" href="inquiry.do?currentPage=${i}">
                              <c:out value="${i}"/>
                              </a>
                            </li>
                            </c:when>
                            <c:otherwise>
                            
                            <li class="page-item">
                              <a class="page-link" href="inquiry.do?currentPage=${i}">
                              <c:out value="${i}"/>
                              </a>
                            </li>
                            
                            </c:otherwise>
                            </c:choose>
         				</c:forEach>
         				<c:if test="${pageCnt gt currentPage}">
         				  <li class="page-item next">
                              <a class="page-link" href="inquiry.do?currentPage=${currentPage+1}"
                                ><i class="tf-icon bx bx-chevron-right"></i
                              ></a>
                            </li>
                            </c:if>
                           <c:if test="${pageCnt gt currentPage+10}">
                            <li class="page-item last">
                              <a class="page-link" href="inquiry.do?currentPage=${currentPage+10}"
                                ><i class="tf-icon bx bx-chevrons-right"></i
                              ></a>
                            </li>
                            </c:if>
                          </ul>
         				</c:when>
         				 <c:when test="${not empty keyword}">
         				 <ul class="pagination">
         				    <c:if test="${10 lt currentPage}"> 
         				     
                            <li class="page-item first">
                              <a class="page-link" href="inquiry.do?currentPage=${currentPage-10}&&keyword=${keyword}"
                                ><i class="tf-icon bx bx-chevrons-left"></i
                              ></a>
                            </li>
                            </c:if>
                            <c:if test="${1 ne currentPage}">
                            <li class="page-item prev">
                              <a class="page-link" href="inquiry.do?currentPage=${currentPage-1}&&keyword=${keyword}"
                                ><i class="tf-icon bx bx-chevron-left"></i
                              ></a>
                            </li>
                            </c:if>
         					<c:forEach var="i" begin="${startPage}" end="${endPage }">
         					<c:choose>
         					<c:when test="${i eq currentPage }">
							
							<li class="page-item active">
                              <a class="page-link" href="inquiry.do?currentPage=${i}&&keyword=${keyword}">
                              <c:out value="${i}"/>
                              </a>
                            </li>
                            </c:when>
                            <c:otherwise>
                            
                            <li class="page-item">
                              <a class="page-link" href="inquiry.do?currentPage=${i}&&keyword=${keyword}">
                              <c:out value="${i}"/>
                              </a>
                            </li>
                            
                            </c:otherwise>
                            </c:choose>
                            
         				</c:forEach>
         				<c:if test="${pageCnt gt currentPage}">
         				  <li class="page-item next">
                              <a class="page-link" href="inquiry.do?currentPage=${currentPage+1}&&keyword=${keyword}"
                                ><i class="tf-icon bx bx-chevron-right"></i
                              ></a>
                            </li>
                            </c:if>
                           <c:if test="${pageCnt gt currentPage+10}">
                            <li class="page-item last">
                              <a class="page-link" href="inquiry.do?currentPage=${currentPage+10}&&keyword=${keyword}"
                                ><i class="tf-icon bx bx-chevrons-right"></i
                              ></a>
                            </li>
                            </c:if>
                          </ul>
         				</c:when>
						</c:choose>
                        </nav>
                        <!--/ Basic Pagination -->
				

	<!-- modal -->
	<div class="modal fade" id="basicModal" tabindex="-1" aria-hidden="true">
                          <div class="modal-dialog" role="document">
                            <div class="modal-content">
                              <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel1">답변 작성</h5>
                                <button
                                  type="button"
                                  class="btn-close"
                                  data-bs-dismiss="modal"
                                  aria-label="Close"
                                ></button>
                              </div>
                              <div class="modal-body">
                                <div class="row">
                                  <div class="col mb-3">
                                 
                                    <label for="nameBasic" class="form-label">제목 : &nbsp<span id="title"></span> </label>
                                  </div>
                                </div>
                                <div class="row g-2">
                                  <div class="col mb-0">
                                    <label for="emailBasic" class="form-label">작성자 : &nbsp<span id="writerId"></span></label>
                                  </div>
                                  <div class="col mb-0">
                                    <label for="dobBasic" class="form-label">문의 유형 : &nbsp<span id="type"></span></label>
                                  </div>
                                  <div class="col mb-0">
                                    <label for="dobBasic" class="form-label">작성 일 : &nbsp<span id="date"></span></label>
                                  </div>
                                    <label for="dobBasic" class="form-label">문의 내용 :</label>
                                  <div style="width: 520px;height: 300px;border: 1px solid #333">
                                  <span id="contents"></span>
                                  </div>
                                <form id="aFrm" name="aFrm" method="post">
                                <h5 class="modal-title" id="exampleModalLabel1">답변 작성</h5>
                                <textarea id="answer" rows="20" style="width:515px;"></textarea>
                                </form>
                                </div>
                              </div>
                              <div class="modal-footer">
                                <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal" id="closeBtn">
                                  닫기
                                </button>
                                <button type="button" class="btn btn-dark" id="saveBtn">답변 저장</button>
                              </div>
                            </div>
                          </div>
                        </div>
                       <!-- /modal -->

					<!-- /문의 상세조회 -->


					<div class="buy-now">
						<a href="" target="_blank" class="btn-buy-now"><img
							style="width: 60px" src="../assets/img/messenger.png"></a>
					</div>

				</div>
			</div>
		</div>
	</div>

	<!-- / Content -->


	


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