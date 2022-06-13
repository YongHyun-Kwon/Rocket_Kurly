<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    
<script type="text/javascript">
function clw(item) {
	$.ajax({
		url : "http://localhost/rocketkurly/addCart.do",
		type : "GET",
		data : {
			 item_no : item,
			 member_id : $("#hid").val()
		},
		async : true,
		dataType : 'text',
		error : function(xhr) {
			alert(xhr.text + "/" + xhr.status);
		},
		success : function( data ) {
			alert(data)
		},
		
	}) // ajax
}
function wish(item) {
	$.ajax({
		url : "http://localhost/rocketkurly/addwish.do",
		type : "GET",
		data : {
			 item_no : item,
			 member_id : $("#hid").val()
		},
		async : true,
		dataType : 'text',
		error : function(xhr) {
			alert(xhr.text + "/" + xhr.status);
		},
		success : function( data ) {
			alert(data)
			location.href="favorite.do?favorite.do";
			
		},
		
	}) // ajax
}   
   
   
   
   
</script>
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

	<%@ include file="/WEB-INF/views/include/header.jsp" %>
	
	<c:if test="${not empty custID}">
    <input type="hidden" value="${custID}" id="hid"> 
    </c:if>

<form action="setting.do" id="frm" method="post">
<div class="site-wrap">
    <div class="site-section">
        <div class="container">
            <div class="row mb-5">
                <div class="col-md-9 order-2">
                    <div class="bg-white shadow rounded-lg d-block d-sm-flex" style="height: 2000px">
                        <div class="tab-content p-4 p-md-5" id="v-pills-tabContent">
                            <div class="tab-pane fade show active" id="account" role="tabpanel" aria-labelledby="account-tab">
                                <h1 class="mb-4">찜목록</h1>
                  				<section class="product spad">
                  					 <div class="row">
                  		<c:forEach var="wish" items="${wishList }">
             
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="http://localhost/rocketkurly/item/${wish.main_img}">
                                   <input type="hidden" value="${wish.item_no}">
                                    <ul class="product__item__pic__hover">
                                   		 <li><a href="javascript:wish(${wish.item_no})"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="javascript:clw(${wish.item_no})"><i class="fa fa-shopping-cart"></i></a></li>  
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="shop-details.do?item_no=${wish.item_no}">${wish.name }</a></h6>
                                    <h5>${wish.price }</h5>
                                </div>
                            </div>
                        </div>
                        
                       </c:forEach>
                       
                    </div>
 				<div class="product__pagination">
 				
 				      <c:if test="${pageCnt lt currentPage-10}">
                       <a href="favorite.do?currentPage=${currentPage-10}"><i class="fa fa-long-arrow-left"></i></a>
                      </c:if>
 				
 				
                    <c:forEach var="i" begin="${startPage}" end="${endPage}">
                     <c:choose>
         					<c:when test="${i eq currentPage }">
         					<a class="page-link" style="color: red;" href="favorite.do?currentPage=${i}">
                             <c:out value="${i}"/></a>
         					</c:when>
         					<c:otherwise>
         					<a class="page-link" href="favorite.do?currentPage=${i}">
                              <c:out value="${i}"/></a>
         					
         					</c:otherwise>
      
                        </c:choose>
                       </c:forEach>
                        <c:if test="${pageCnt gt currentPage+10}">
                       <a href="favorite.do?currentPage=${currentPage+10}"><i class="fa fa-long-arrow-right"></i></a>
                            </c:if>
                      
              </div>
                  				</section>
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