<%@page import="kr.co.rocketkurly.admin.dao.OrderDAO"%>
<%@page import="kr.co.rocketkurly.admin.domain.OrderDomain"%>
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
        
        div.table{
        	display: table;
        	background-color: transparent !important;
        }
        form.tr{
        	display: table_row;
        }
        div.tr{
        	display: table_row;
        	font-weight: bold;
        }
        span.td{
        	display: table-cell;
        	width: 150px;
        	text-align: center;
        }
        span.tdr{
        	display: table-cell;
        	width:200px;
        	text-align: center;
        }
        
        
    </style>
    
    <%
    
	String order_no = request.getParameter("order_no");    
    
    
    %>
</head>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
$(function () {
	$("#edit_status${order.order_no}").click(function() {
		
		$("#order_${order.order_no}").submit();
			alert("상태가 변경되었습니다.");
			
		})
		 if (self.name != 'reload') {
	         self.name = 'reload';
	         self.location.reload(true);
	     }
	     else self.name = ''; 

})//ready

function editStatus(orderNo){
	var formId = "order_"+orderNo;
	document.getElementById(formId).submit();
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

                <!-- 상품 전체 조회 -->
                <div style="padding-left: 50px ;width: 1100px;">
                    <label style="font-size: 30px;font-weight: bold; padding-bottom: 30px">주문 조회</label>
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
							<div class="table" style="width: 1000px">
										<div class="tr">
											<span class="td">주문 번호</span>
											<span class="td">회원 명</span>
											<span class="td">가격</span>
											<span class="tdr">요청 사항</span>
											<span class="td">주문 상태</span>
											<span class="td">주문일</span>
											<span class="td">상태 선택</span>
											<span class="td">상태 변경</span>
										</div>
									<c:forEach var="order" items="${orderList}">
								<form class="tr" action="http://localhost/rocketkurly/admin/jsp/order_status.do?order_no=${order.order_no}" method="post" id="order_${order.order_no}" name="editStat">
											<span class="td"><c:out value="${order.order_no}"/></span>
											<span class="td"><c:out value="${order.member_id}"/></span>
											<span class="td"><c:out value="${order.price}"/></span>
											<span class="tdr"><c:out value="${order.request}"/></span>
											<span class="td" ><c:out value="${order.order_state}"/></span>
											<span class="td"><c:out value="${order.order_date}"/></span>
											<span class="td">
											<select class="form-select" id="order_state" name="order_state">
											<option value="결제"><c:out value="결제"/></option>
											<option value="배송중"><c:out value="배송중"/></option>
											<option value="배송완료"><c:out value="배송완료"/></option>
											</select>
											</span>
											<span class="td"><a href="#void" id="edit_status${order.order_no}" onclick="editStatus('${order.order_no}')">상태변경</a></span>
								</form>
									</c:forEach>
							</div>
						</div>
						<!-- 회원 상세 조회 -->
                      
                 
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
                              <a class="page-link" href="order_status.do?currentPage=${currentPage-10}"
                                ><i class="tf-icon bx bx-chevrons-left"></i
                              ></a>
                            </li>
                            </c:if>
                            <c:if test="${1 ne currentPage}">
                            <li class="page-item prev">
                              <a class="page-link" href="order_status.do?currentPage=${currentPage-1}"
                                ><i class="tf-icon bx bx-chevron-left"></i
                              ></a>
                            </li>
                            </c:if>
        					<c:forEach var="i" begin="${startPage}" end="${endPage}">
    
                         <c:choose>
         					<c:when test="${i eq currentPage }">
							
							<li class="page-item active">
                              <a class="page-link" href="order_status.do?currentPage=${i}">
                              <c:out value="${i}"/>
                              </a>
                            </li>
                            </c:when>
                            <c:otherwise>
                            
                            <li class="page-item">
                              <a class="page-link" href="order_status.do?currentPage=${i}">
                              <c:out value="${i}"/>
                              </a>
                            </li>
                            
                            </c:otherwise>
                            </c:choose>
         				</c:forEach>
         				<c:if test="${pageCnt gt currentPage}">
         				  <li class="page-item next">
                              <a class="page-link" href="order_status.do?currentPage=${currentPage+1}"
                                ><i class="tf-icon bx bx-chevron-right"></i
                              ></a>
                            </li>
                            </c:if>
                           <c:if test="${pageCnt gt currentPage+10}">
                            <li class="page-item last">
                              <a class="page-link" href="order_status.do?currentPage=${currentPage+10}"
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
                              <a class="page-link" href="order_status.do?currentPage=${currentPage-10}&&keyword=${keyword}"
                                ><i class="tf-icon bx bx-chevrons-left"></i
                              ></a>
                            </li>
                            </c:if>
                            <c:if test="${1 ne currentPage}">
                            <li class="page-item prev">
                              <a class="page-link" href="order_status.do?currentPage=${currentPage-1}&&keyword=${keyword}"
                                ><i class="tf-icon bx bx-chevron-left"></i
                              ></a>
                            </li>
                            </c:if>
         					<c:forEach var="i" begin="${startPage}" end="${endPage }">
         					<c:choose>
         					<c:when test="${i eq currentPage }">
							
							<li class="page-item active">
                              <a class="page-link" href="order_status2.do?currentPage=${i}&&keyword=${keyword}">
                              <c:out value="${i}"/>
                              </a>
                            </li>
                            </c:when>
                            <c:otherwise>
                            
                            <li class="page-item">
                              <a class="page-link" href="order_status2.do?currentPage=${i}&&keyword=${keyword}">
                              <c:out value="${i}"/>
                              </a>
                            </li>
                            
                            </c:otherwise>
                            </c:choose>
                            
         				</c:forEach>
         				<c:if test="${pageCnt gt currentPage}">
         				  <li class="page-item next">
                              <a class="page-link" href="order_status.do?currentPage=${currentPage+1}&&keyword=${keyword}"
                                ><i class="tf-icon bx bx-chevron-right"></i
                              ></a>
                            </li>
                            </c:if>
                           <c:if test="${pageCnt gt currentPage+10}">
                            <li class="page-item last">
                              <a class="page-link" href="order_status.do?currentPage=${currentPage+10}&&keyword=${keyword}"
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