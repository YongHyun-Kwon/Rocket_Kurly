<%@page import="kr.co.rocketkurly.cust.vo.PayVO"%>
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

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

   <!-- 헤더  -->
 	<%@ include file="/WEB-INF/views/include/header.jsp" %>
   	<!-- 메뉴  -->
   	<%@ include file="/WEB-INF/views/include/menu.jsp" %>
 	

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>주문, 결제</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Checkout Section Begin -->
    <section class="checkout spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    </h6>
                </div>
            </div>
            <div class="checkout__form">
                <h4>구매자 정보</h4>
                <form action="#">
                    <div class="row">
                        <div class="col-lg-8 col-md-6">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>이름<span>*</span></p>
                                        <input type="text">
                                    </div>
                                    <div class="checkout__input">
                                        <p>이메일<span>*</span></p>
                                        <input type="text">
                                    </div>
                                    <div class="checkout__input">
                                        <p>휴대폰번호<span>*</span></p>
                                        <input type="text">
                                    </div>
                                </div>
                               
                            </div>
                            <h4>수령자 정보</h4>
                            <div class="col-lg-6">
                            <div class="checkout__input">
                                <p>이름<span>*</span></p>
                                 <input type="text">
                            </div>
                            <div class="checkout__input">
                                        <p>이메일<span>*</span></p>
                                        <input type="text">
                            </div>
                            <div class="checkout__input">
                                        <p>휴대폰번호<span>*</span></p>
                                        <input type="text">
                                    </div>
                             <div class="checkout__input">
                                
                            </div>
                            <div class="checkout__input">
                                <p>주소<span>*</span></p>
                                <input type="text" placeholder="도로명 주소를 입력해주세요" class="checkout__input__add">
                                <input type="text" placeholder="상세주소를 입력하세요">
                                <a href="#" class="primary-btn" style="margin-top: 20px" >우편번호 찾기</a>
                            </div>
                            
                            
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="checkout__order">
                                <h4>주문</h4>
                                <div class="checkout__order__products">상품<span>총액</span></div>
                                 <ul>
                                 	
                                 	<c:forEach var="payItem" items="${ payItem }">
                                    	<li>${ payItem.itemName } / ${ payItem.quantity }EA <span>${ payItem.total } 원</span></li>
                              			 <c:set var="subTotal" value="${ subTotal + payItem.total }" />
                              		</c:forEach>
                                </ul>
                               
                                <div class="checkout__order__subtotal">소계 <span><c:out value="${ subTotal }"/> 원</span></div>
                                <div class="shoping__discount">
                            <h5>할인 쿠폰</h5>
                                <select>
                                	<c:forEach var="coupon" items="${ couponList }">
                                	<option value=${ coupon.discount }><c:out value="${ coupon.coupon_name }"/>/<c:out value="${ coupon.coupon_no }"/> </option>
                                	</c:forEach>
                                </select>
                                <button type="button" class="site-btn">쿠폰 적용</button>
                        </div>
                                <div class="checkout__order__subtotal">쿠폰 할인<span>-$750.99</span></div>
                                <div class="checkout__order__total">총 금액 <span></span></div>
                                   
                                <a href="payment.do" class="site-btn">결제하기</a>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <!-- Checkout Section End -->

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