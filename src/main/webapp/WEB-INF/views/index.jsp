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
 	// 뒤로 가기 방지
    window.history.forward();

    function noBack() {

    	window.history.forward();

    }// noBack
    </script>
</head>

<body onload="noBack();" onpageshow="if(event.persisted) noBack();" onunload="">
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

   
	<!-- 헤더  -->
   	<%@ include file="/WEB-INF/views/include/header.jsp" %>
   	<!-- 메뉴  -->
   	<%@ include file="/WEB-INF/views/include/menu.jsp" %>
    
    <section class="hero hero-normal">
        <div class="container">
	 <div class="hero__item set-bg" data-setbg="img/hero/banner.jpg">
                        <div class="hero__text">
                            <span>로켓 컬리</span>
                            <h2>100% 친환경<br/>제품 보러가기</h2>
                            <p>신선식품을 합리적 가격으로 빠르게 만나보세요 </p>
                            <a href="http://localhost/rocketkurly/shop-grid.do?c_category_id=ve1&&p_category_id=vegatable&&current_category=ve1" class="primary-btn">둘러보기</a>
                        </div>
                    </div>
                    </div>
                    </section>
    <!-- 이 상품 어때요 section //최근 등록된 상품 중 8개 랜덤 나열
     -->
    <section class="featured spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>이 상품 어때요?</h2>
                    </div>
                   
                </div>
            </div>
            <div class="row featured__filter">
               <c:forEach var="recommendList" items="${recommendList}" >
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="item/${recommendList.main_img}">
                            <ul class="featured__item__pic__hover">
                                <li><a href="favorite.do"><i class="fa fa-heart"></i></a></li>
                                <li><a href="shoping-cart.do"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="shop-details.do?item_no=${recommendList.item_no}">${recommendList.name}</a></h6>
                            <h5>${recommendList.price}원</h5>
                        </div>
                    </div>
                </div>
               </c:forEach>
            </div>
        </div>
    </section>
    <!-- 이 상품 어때요 section -->
    
    <!-- 놓치면 후회 할 가격 section //최저가 순 나열 -->
    <section class="featured spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>놓치면 후회 할 가격</h2>
                    </div>
                   
                </div>
            </div>
            <div class="row featured__filter">
            	<c:forEach var="lowestList" items="${lowestList}">
	                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
	                    <div class="featured__item">
	                        <div class="featured__item__pic set-bg" data-setbg="item/${lowestList.main_img}">
	                            <ul class="featured__item__pic__hover">
	                                <li><a href="favorite.do"><i class="fa fa-heart"></i></a></li>
	                                <li><a href="shoping-cart.do"><i class="fa fa-shopping-cart"></i></a></li>
	                            </ul>
	                        </div>
	                        <div class="featured__item__text">
	                            <h6><a href="shop-details.do?item_no=${lowestList.item_no}">${lowestList.name}</a></h6>
	                            <h5>${lowestList.price}원</h5>
	                        </div>
	                    </div>
	                </div>
            	</c:forEach>
            </div>
        </div>
    </section>
    <!-- 놓치면 후회 할 가격 section -->
    
    <!-- 가장 핫한 상품 section //주문 수 나열 -->
     <section class="featured spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>가장 핫한 상품</h2>
                    </div>
                   
                </div>
            </div>
            <div class="row featured__filter">
             <c:forEach var="hotList" items="${hotList}" >
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="item/${hotList.main_img}">
                            <ul class="featured__item__pic__hover">
                                <li><a href="favorite.do"><i class="fa fa-heart"></i></a></li>
                                <li><a href="shoping-cart.do"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="shop-details.do?item_no=${hotList.item_no}">${hotList.name}</a></h6>
                            <h5>${hotList.price}원</h5>
                        </div>
                    </div>
                </div>
               </c:forEach>
            </div>
        </div>
    </section> 
    
    <!-- 가장 핫한 상품 section -->
    

    

    

    

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