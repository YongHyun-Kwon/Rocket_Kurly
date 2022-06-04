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
		

      
        .buy-now .btn-buy-now{
            box-shadow: none !important;
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
        .customer-info{
        margin: 10px
        }
    </style>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
$(function () {
	$("#editStatus").click(function() {
		
		$("#editStatusFrm").submit();
			alert("회원상태가 변경되었습니다.");
			
		})
		 if (self.name != 'reload') {
	         self.name = 'reload';
	         self.location.reload(true);
	     }
	     else self.name = ''; 

})//ready
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

                <!-- 상품 전체 조회 -->
                <div style="padding-left: 50px ;width: 950px;">
                    <label style="font-size: 30px;font-weight: bold; padding-bottom: 30px">회원 조회</label>
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
                      
                      
                      <div class="card">
							<div>
								<table class="table" style="width: 800px">
									<thead>
										<tr>
											<th>id</th>
											<th>닉네임</th>
											<th>구매 금액</th>
											<th>회원 상태</th>
										</tr>
									</thead>
									<tbody class="table-border-bottom-0">
									<c:forEach var="mem" items="${memberList}">
										<tr>
											<td><a href="customer.do?member_id=${mem.member_id}"><c:out value="${mem.member_id}"/></a></td>
											<td><c:out value="${mem.nickname}"/></td>
											<td><c:out value="3000원"/></td>
											<td><c:out value="${mem.status}"/></td>
										</tr>
									</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
						<!-- 회원 상세 조회 -->
                      <div class="card" style="margin-top: 30px;height: 400px">
                        <!-- Search -->
                            <div>
                                <h5 class="card-header" style="height:30px; display: inline-block">회원 상세 정보</h5>
                            </div>
                        <!-- /Search -->
                       <div style="width: 800px;">
                                <div class="customer-lin" style="display: inline-block ;margin: 10px;width: 250px">
                                    <div class="customer-info">닉네임 : ${memberData.nickname }</div>
                                    <div class="customer-info">아이디 : ${memberData.member_id }</div>
                                    <div class="customer-info">이름 : ${memberData.name }</div>
                                    <div class="customer-info">이메일 : ${memberData.email }</div>
                                    <div class="customer-info">가입일 : ${memberData.reg_dt }</div>
                                </div>
                                <div class="customer-line" style="float:right; ;padding-right:100px;width: 500px">
                                    <div class="customer-info">우편번호 : ${memberData.addr }</div>
                                    <div class="customer-info">주소 : ${memberData.address }</div>
                                    <div class="customer-info">전화번호 : ${memberData.tel }</div>
                                    <div class="customer-info">구매금액 : </div>
                                    <div class="customer-info">방문 수 : </div>
                                    <div class="customer-info">회원상태 : ${memberData.status }</div>
                                    <form action="http://localhost/rocketkurly/admin/jsp/customer.do?member_id=${memberData.member_id}" method="post" id="editStatusFrm" name="editStatusFrm">
									<select name="status" style="width: 150px;display: inline-block;"  class="form-select" id="status">
									<option selected>상태 변경</option>
										<option value="활동"><c:out value="활동"/></option>
										<option value="휴면" ><c:out value="휴면"/></option>
										<option value="탈퇴" ><c:out value="탈퇴"/></option>
								</select>
								<button style="margin-left:20px ;display: inline-block; ;" class="btn btn-dark" id="editStatus" name="editStatus">상태 변경</button>
								</form>
                        </div>
                    </div>
                      
                      
                 
                    <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <div class="demo-inline-spacing">
                        <!-- Basic Pagination -->
                        <nav aria-label="Page navigation">
                        
                            <c:choose>
                            <c:when test="${empty keyword}">
                              <ul class="pagination">
                             <c:if test="${10 lt currentPage}"> 
                            <li class="page-item first">
                              <a class="page-link" href="customer.do?currentPage=${currentPage-10}"
                                ><i class="tf-icon bx bx-chevrons-left"></i
                              ></a>
                            </li>
                            </c:if>
                            <c:if test="${1 ne currentPage}">
                            <li class="page-item prev">
                              <a class="page-link" href="customer.do?currentPage=${currentPage-1}"
                                ><i class="tf-icon bx bx-chevron-left"></i
                              ></a>
                            </li>
                            </c:if>
        					<c:forEach var="i" begin="${startPage}" end="${endPage}">
    
                         <c:choose>
         					<c:when test="${i eq currentPage }">
							
							<li class="page-item active">
                              <a class="page-link" href="customer.do?currentPage=${i}">
                              <c:out value="${i}"/>
                              </a>
                            </li>
                            </c:when>
                            <c:otherwise>
                            
                            <li class="page-item">
                              <a class="page-link" href="customer.do?currentPage=${i}">
                              <c:out value="${i}"/>
                              </a>
                            </li>
                            
                            </c:otherwise>
                            </c:choose>
         				</c:forEach>
         				<c:if test="${pageCnt gt currentPage}">
         				  <li class="page-item next">
                              <a class="page-link" href="customer.do?currentPage=${currentPage+1}"
                                ><i class="tf-icon bx bx-chevron-right"></i
                              ></a>
                            </li>
                            </c:if>
                           <c:if test="${pageCnt gt currentPage+10}">
                            <li class="page-item last">
                              <a class="page-link" href="customer.do?currentPage=${currentPage+10}"
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
                              <a class="page-link" href="customer.do?currentPage=${currentPage-10}&&keyword=${keyword}"
                                ><i class="tf-icon bx bx-chevrons-left"></i
                              ></a>
                            </li>
                            </c:if>
                            <c:if test="${1 ne currentPage}">
                            <li class="page-item prev">
                              <a class="page-link" href="customer.do?currentPage=${currentPage-1}&&keyword=${keyword}"
                                ><i class="tf-icon bx bx-chevron-left"></i
                              ></a>
                            </li>
                            </c:if>
         					<c:forEach var="i" begin="${startPage}" end="${endPage }">
         					<c:choose>
         					<c:when test="${i eq currentPage }">
							
							<li class="page-item active">
                              <a class="page-link" href="customer2.do?currentPage=${i}&&keyword=${keyword}">
                              <c:out value="${i}"/>
                              </a>
                            </li>
                            </c:when>
                            <c:otherwise>
                            
                            <li class="page-item">
                              <a class="page-link" href="customer2.do?currentPage=${i}&&keyword=${keyword}">
                              <c:out value="${i}"/>
                              </a>
                            </li>
                            
                            </c:otherwise>
                            </c:choose>
                            
         				</c:forEach>
         				<c:if test="${pageCnt gt currentPage}">
         				  <li class="page-item next">
                              <a class="page-link" href="customer.do?currentPage=${currentPage+1}&&keyword=${keyword}"
                                ><i class="tf-icon bx bx-chevron-right"></i
                              ></a>
                            </li>
                            </c:if>
                           <c:if test="${pageCnt gt currentPage+10}">
                            <li class="page-item last">
                              <a class="page-link" href="customer.do?currentPage=${currentPage+10}&&keyword=${keyword}"
                                ><i class="tf-icon bx bx-chevrons-right"></i
                              ></a>
                            </li>
                            </c:if>
                          </ul>
         				</c:when>
						</c:choose>
                        
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