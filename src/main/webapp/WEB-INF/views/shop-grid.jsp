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
    <title>Ogani | Template</title>
    <script src="js/jquery-3.3.1.min.js"></script>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<style type="text/css">
.list{
	border: 1px solid #dfdfdf;
	width: 850px; 
	height: 151px; 
	margin: 0px auto; 
	margin-bottom: 10px;"
	box-sizing: border-box;
	word-break: break-all;
	}
.title{
	padding-bottom: 23px;
    font-weight: 700;
    font-size: 28px;
    color: #333;
    line-height: 35px;
    letter-spacing: -1px;
    text-align: center;
    
	  }
.list_on{
		margin-top: 23px;
		word-break: break-all;
		margin: 0px auto;
		}
.list ul{
	list-style-type: none;
	padding: 0;
    margin: 0;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
	}

.list_on li{
	float: left;
    width: 263px;
    padding: 16px 44px 0 39px;
    font-weight: 400;
    letter-spacing: 0;
    word-break: break-all;
    
}
.list_on a{
	text-decoration: none;
	overflow: hidden;
    float: left;
    max-width: 180px;
    line-height: 20px;
    font-size: 14px;
    color: #333;
    letter-spacing: -1px;
    white-space: nowrap;
    text-overflow: ellipsis;
    cursor: pointer;
    background-color: transparent;
	}
a:hover{
		 font-weight: 700;
		 color:#7fad39;
		 }
</style>
<script type="text/javaScript">
$(function () {
	
		    
		  
})//ready
function clw(item) {
	$.ajax({
		url : "http://localhost/rocketkurly/shopingOne.do",
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

</script>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    
   	<%@ include file="/WEB-INF/views/include/header.jsp" %>

    <%@ include file="/WEB-INF/views/include/menu.jsp" %>

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>상품</h2>
                        <div class="breadcrumb__option">
                            <span>신선 식품을 한눈에!</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Product Section Begin -->
    <section class="product spad">
    
    <!--중분류 카테고리 -->
    <h3 class="title">채소</h3>
    <div class="list">
    	<ul class="list_on">
    		<li><a href="#">전체보기 ${category.c_category_id }</a></li>
    		<c:forEach var="category" items="${categoryData}">
			<c:choose>
				<c:when test="${category.c_category_id  eq currentCategory }">
    				<li><a style="color: red;" 
    				href="shop-grid.do?c_category_id=${category.c_category_id}&&p_category_id=${p_categoryID}&&current_category=${category.c_category_id}">${category.sub_name }</a></li>
				
				</c:when>
				<c:otherwise>
				
    				<li><a href="shop-grid.do?c_category_id=${category.c_category_id}&&p_category_id=${p_categoryID}&&current_category=${category.c_category_id}">${category.sub_name }</a></li>
				
				</c:otherwise>
			</c:choose>
    		</c:forEach>
    	</ul>
    </div>
    <c:if test="${not empty custID}">
    <input type="hidden" value="${custID}" id="hid"> 
    </c:if>
    <!--중분류 카테고리 끝  -->
        <div class="container">
            <div class="row">
                <div class="col-lg-9 col-md-7" style="margin: 0px auto;">
                    <div class="filter__item" style="border: 0px;">
                        <div class="row">
                            <div class="col-lg-4 col-md-5">
                                <div class="filter__sort">
                                    <span>정렬</span>
                                    <select>
                                        <option value="0">가격순 정렬</option>
                                        <option value="0">이름순 정렬</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <c:forEach var="item" items="${itemList}">
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="http://localhost/rocketkurly/item/${item.main_img }">
                                    <ul class="product__item__pic__hover">
                                        <c:if test="${not empty custID}">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="javascript:clw(${item.item_no})"><i class="fa fa-shopping-cart"></i></a></li>  
                                        <input type="hidden" value="${custID}" id="${item.item_no}">                                     
                                        </c:if>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="shop-details.do?current_category=${currentCategory}&&item_no=${item.item_no}">${item.name }</a></h6>
                                    <h5>${item.price}원</h5>
                                </div>
                            </div>
                        </div>
                        </c:forEach>

                    </div>
                    <div class="product__pagination">
                    <c:forEach var="i" begin="${startPage}" end="${endPage}">
                     <c:choose>
         					<c:when test="${i eq currentPage }">
         					<a class="page-link" style="color: red;" href="shop-grid.do?currentPage=${i}&&current_category=${currentCategory}&&p_category_id=${p_categoryID}">
                             <c:out value="${i}"/></a>
         					</c:when>
         					<c:otherwise>
         					<a class="page-link" href="shop-grid.do?currentPage=${i}&&current_category=${currentCategory}&&p_category_id=${p_categoryID}">
                              <c:out value="${i}"/></a>
         					
         					</c:otherwise>
      
                        </c:choose>
                       </c:forEach>
                        <c:if test="${pageCnt gt currentPage+10}">
                       <a href="shop-grid.do?currentPage=${currentPage+10}&&current_category=${currentCategory}&&p_category_id=${p_categoryID}"><i class="fa fa-long-arrow-right"></i></a>
                            </c:if>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Section End -->
    
                
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