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
th{padding: 3px;}
td{padding: 5px;}
table{min-width: 800px; table-layout: fixed;
	  word-break:break-all;
	  height:auto
	  }

		   
</style>
<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

	<%@ include file="/WEB-INF/views/include/header.jsp" %>

<form action="orderhistory2.do" id="frm" method="post">
<div class="site-wrap">
    <div class="site-section">
        <div class="container">
            <div class="row mb-5">
                <div class="col-md-9 order-2">
                    <div class="bg-white shadow rounded-lg d-block d-sm-flex" style="height: auto; width: auto; min-width: 900px;">
                        <div class="tab-content p-4 p-md-5" id="v-pills-tabContent" style="width: auto; height: auto; min-width: 900px;">
                            <div class="tab-pane fade show active" id="account" role="tabpanel" aria-labelledby="account-tab">
                                <h1 class="mb-4">주문 내역 조회</h1>
                                <table>
                                	<tr>
                                		<th>상품 정보</th>
                                		<th>주문 일자</th>
                                		<th>주문 번호</th>
                                		<th>주문 금액(수량)</th>
                                		<th>주문 상태</th>
                                		<th>리뷰 여부</th>
                                		<th></th>
                                	</tr>
                                	<c:if test="${ empty historyList }">
                                		<tr>
                                			<td colspan="4">작성하신 문의가 없습니다.</td>
                                		</tr>
                                	</c:if>
                               <c:if test="${ not empty historyList }">
                                <c:forEach var="historyList" items="${historyList}">
                                	<tr style="border-top: 1px solid #dfdfdf;">
                                		<td><a href="shop-details.do?item_no=${historyList.item_no}">${historyList.itemName}</a></td>
                                		<td><fmt:formatDate value="${historyList.order_date}" pattern="yyyy-MM-dd"/></td>
                                		<td>${historyList.order_no}</td>
                                		<td>${historyList.price}(${historyList.quantity})</td>
                                		<td>${historyList.order_state}</td>
                                		<td>${'n' eq historyList.review_state ? '미작성' : '작성'}</td>
                                		<td><a href="write-inquiry.do"><input type="button" value="1:1문의"/></a></td>
                                	<c:if test="${'n' eq historyList.review_state}">
                                		<td><a href="write-review.do?item_no=${historyList.item_no}&&order_no=${historyList.order_no}"><input type="button" value="리뷰작성"/></a></td>
                                	</c:if>
                                	</tr>
                                </c:forEach>
                               </c:if>
                                </table>
                                </div>
                                
                    <div class="product__pagination">
 				
 				      <c:if test="${currentPage ne 1}">
                       <a href="orderhistory.do?currentPage=${currentPage-1}"><i class="fa fa-long-arrow-left"></i></a>
                      </c:if>
 				
 				
                    <c:forEach var="i" begin="${startPage}" end="${endPage}">
                     <c:choose>
         					<c:when test="${i eq currentPage }">
         					<a class="page-link" style="color: red;" href="orderhistory.do?currentPage=${i}">
                             <c:out value="${i}"/></a>
         					</c:when>
         					<c:otherwise>
         					<a class="page-link" href="orderhistory.do?currentPage=${i}">
                              <c:out value="${i}"/></a>
         					
         					</c:otherwise>
      
                        </c:choose>
                       </c:forEach>
                        <c:if test="${pageCnt ge currentPage+1}">
                       <a href="orderhistory.do?currentPage=${currentPage+1}"><i class="fa fa-long-arrow-right"></i></a>
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