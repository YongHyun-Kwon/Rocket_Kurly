<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>로켓컬리</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
</head>
<style type="text/css">
th{padding: 3px; }
td{padding: 5px;}
table{width:700px;}

		   
</style>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

	<%@ include file="/WEB-INF/views/include/header.jsp" %>

<form action="setting.do" id="frm" method="post">
<div class="site-wrap">
    <div class="site-section">
        <div class="container">
            <div class="row mb-5">
                <div class="col-md-9 order-2">
                    <div class="bg-white shadow rounded-lg d-block d-sm-flex" style="height: auto">
                        <div class="tab-content p-4 p-md-5" id="v-pills-tabContent">
                            <div class="tab-pane fade show active" id="account" role="tabpanel" aria-labelledby="account-tab">
                                <h1 class="mb-4">쿠폰 조회</h1>
                                <table>
                                	<tr style="border-bottom: 1px solid #dfdfdf;">
                                		<th>쿠폰 번호</th>
                                		<th>쿠폰 명</th>
                                		<th>유효 기간</th>
                                		<th>할인율</th>
                                	</tr>
                                	<c:if test="${ empty couponList }">
                                		<tr>
                                			<td colspan="4">보유하고 계신 쿠폰이 없습니다.</td>
                                		</tr>
                                	</c:if>
                                	<c:if test="${ not empty couponList }">
                                		<c:forEach var="coupon" items="${ couponList }">
                                		  	<tr>
	                                			<td><c:out value="${ coupon.coupon_no }"/></td>
	                                			<td><c:out value="${ coupon.coupon_name }"/></td>
	                                			<td><fmt:formatDate value="${ coupon.p_date }" pattern="yyyy-MM-dd"/>
	                                				~ <fmt:formatDate value="${ coupon.e_date }" pattern="yyyy-MM-dd"/></td>
	                                			<td><c:out value="${ coupon.discount }"/> %</td> 
                                			</tr>
                                		</c:forEach>
                                	</c:if>
                                </table>
                                </div>
                                
                                  <div class="product__pagination">
 				
 				      <c:if test="${currentPage ne 1}">
                       <a href="coupon.do?currentPage=${currentPage-1}"><i class="fa fa-long-arrow-left"></i></a>
                      </c:if>
 				
 				
                    <c:forEach var="i" begin="${startPage}" end="${endPage}">
                     <c:choose>
         					<c:when test="${i eq currentPage }">
         					<a class="page-link" style="color: red;" href="coupon.do?currentPage=${i}">
                             <c:out value="${i}"/></a>
         					</c:when>
         					<c:otherwise>
         					<a class="page-link" href="coupon.do?currentPage=${i}">
                              <c:out value="${i}"/></a>
         					
         					</c:otherwise>
      
                        </c:choose>
                       </c:forEach>
                        <c:if test="${pageCnt ge currentPage+1}">
                       <a href="coupon.do?currentPage=${currentPage+1}"><i class="fa fa-long-arrow-right"></i></a>
                         </c:if>
                      
              </div>
                                
                            </div>
                        </div>
                    </div>
                <%@include file="include/mypage_nav.jsp"%>
                </div>
            </div>
        </div>
    </div>
</form>

    

    

    

    

    

	<%@ include file="/WEB-INF/views/include/footer.jsp" %>

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>



</body>

</html>