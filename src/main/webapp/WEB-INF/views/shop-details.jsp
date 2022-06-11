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
    
    <!-- jQuery CDN -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script type="text/javascript">
		$(function() {
			
			var price = ${ productData.price }
			var id = "${ custID }"
			
			$("#total").html(price);
			$("input[name=total]").val(price);
			
			$("#pre").click(function(){
				
				var total = price * $("#qu").val();
				
				$("#total").html(total);
				$("input[name=total]").val(total);
			})
			
			
			$("#order").click(function() {
				
				if(id == ""){
					alert("로그인 후 이용 가능합니다.");
					return;
				}// end if
				
				$("#frm").submit();	
			})// click
			
		})
function add(item) {
	if($("#qu").val()==0){
		
		alert("수량은 0개일 수 가없습니다.")
		return
	}
	if($("#hid").val()==null){
		alert("로그인을해주세요")
		return
	}
	$.ajax({
		url : "http://localhost/rocketkurly/addCart.do",
		type : "GET",
		data : {
			 item_no : item,
			 member_id : $("#hid").val(),
			 quantity : $("#qu").val()
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
	if($("#hid").val()==null){
		alert("로그인을해주세요")
		return
	}
	$.ajax({
		url : "http://localhost/rocketkurly/addwish.do",
		type : "GET",
		data : {
			 item_no : item,
			 member_id : $("#hid").val(),
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

function clw(item) {
	
	if($("#hid").val()==null){
		alert("로그인을해주세요")
		return
	}
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
		
	</script>
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
    
    <c:if test="${not empty custID}">
    <input type="hidden" value="${custID}" id="hid"> 
    </c:if>

    <!-- Product Details Section Begin -->
    <section class="product-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__pic">
                        <div class="product__details__pic__item">
                            <img class="product__details__pic__item--large"
                                src="http://localhost/rocketkurly/item/${productData.main_img }" alt="">
                        </div>
                        <!-- <div class="product__details__pic__slider owl-carousel">
                            <img data-imgbigurl="img/product/details/product-details-2.jpg"
                                src="img/product/details/thumb-1.jpg" alt="">
                            <img data-imgbigurl="img/product/details/product-details-3.jpg"
                                src="img/product/details/thumb-2.jpg" alt="">
                            <img data-imgbigurl="img/product/details/product-details-5.jpg"
                                src="img/product/details/thumb-3.jpg" alt="">
                            <img data-imgbigurl="img/product/details/product-details-4.jpg"
                                src="img/product/details/thumb-4.jpg" alt="">
                        </div> -->
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                	<form action="checkout.do" method="post" id="frm">
                    <div class="product__details__text">
                        <h3>${productData.name }</h3>
                        <div class="product__details__rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-half-o"></i>
                            <span>(18 reviews)</span>
                        </div>
                        <input type="hidden" value="${ productData.item_no }" name="itemNo"/>
                        <input type="hidden" value="${ productData.name }" name="itemName"/>
                        <div class="product__details__price">${productData.price}원</div>
                        <p>${productData.detail }</p>
                        <div class="product__details__quantity">
                            <div class="quantity" id="pre">
                                <div class="pro-qty">
                                    <input type="text" value="1" id="qu" name="quantity">
                                </div>
                            </div>
                        </div>
                        <a href="javascript:add(${productData.item_no })" class="primary-btn">장바구니에 넣기</a>
                        <a href="javascript:void(0)" id="order" class="primary-btn">구매</a>
                        <!-- <a href="#" class="primary-btn">취소</a> -->
                        <a href="javascript:wish(${productData.item_no })" class="heart-icon"><span class="icon_heart_alt"></span></a>
                     	<div>
                     		총 금액 : <span id="total"></span>원
                     		<input type="hidden" name="total"/>
                     	</div>
                    </div>
                    </form>
                </div>
<!--                 <div class="col-lg-12">
                    <div class="product__details__tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab"
                                    aria-selected="true">상품 설명</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab"
                                    aria-selected="false">배송 정보</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab"
                                    aria-selected="false">상품 후기 <span>(1)</span></a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>Products Infomation</h6>
                                    <p>Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.
                                        Pellentesque in ipsum id orci porta dapibus. Proin eget tortor risus. Vivamus
                                        suscipit tortor eget felis porttitor volutpat. Vestibulum ac diam sit amet quam
                                        vehicula elementum sed sit amet dui. Donec rutrum congue leo eget malesuada.
                                        Vivamus suscipit tortor eget felis porttitor volutpat. Curabitur arcu erat,
                                        accumsan id imperdiet et, porttitor at sem. Praesent sapien massa, convallis a
                                        pellentesque nec, egestas non nisi. Vestibulum ac diam sit amet quam vehicula
                                        elementum sed sit amet dui. Vestibulum ante ipsum primis in faucibus orci luctus
                                        et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam
                                        vel, ullamcorper sit amet ligula. Proin eget tortor risus.</p>
                                        <p>Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Lorem
                                        ipsum dolor sit amet, consectetur adipiscing elit. Mauris blandit aliquet
                                        elit, eget tincidunt nibh pulvinar a. Cras ultricies ligula sed magna dictum
                                        porta. Cras ultricies ligula sed magna dictum porta. Sed porttitor lectus
                                        nibh. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.
                                        Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed
                                        porttitor lectus nibh. Vestibulum ac diam sit amet quam vehicula elementum
                                        sed sit amet dui. Proin eget tortor risus.</p>
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-2" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>Products Infomation</h6>
                                    <p>Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.
                                        Pellentesque in ipsum id orci porta dapibus. Proin eget tortor risus.
                                        Vivamus suscipit tortor eget felis porttitor volutpat. Vestibulum ac diam
                                        sit amet quam vehicula elementum sed sit amet dui. Donec rutrum congue leo
                                        eget malesuada. Vivamus suscipit tortor eget felis porttitor volutpat.
                                        Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Praesent
                                        sapien massa, convallis a pellentesque nec, egestas non nisi. Vestibulum ac
                                        diam sit amet quam vehicula elementum sed sit amet dui. Vestibulum ante
                                        ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;
                                        Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula.
                                        Proin eget tortor risus.</p>
                                    <p>Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Lorem
                                        ipsum dolor sit amet, consectetur adipiscing elit. Mauris blandit aliquet
                                        elit, eget tincidunt nibh pulvinar a. Cras ultricies ligula sed magna dictum
                                        porta. Cras ultricies ligula sed magna dictum porta. Sed porttitor lectus
                                        nibh. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.</p>
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-3" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>Products Infomation</h6>
                                    <p>Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.
                                        Pellentesque in ipsum id orci porta dapibus. Proin eget tortor risus.
                                        Vivamus suscipit tortor eget felis porttitor volutpat. Vestibulum ac diam
                                        sit amet quam vehicula elementum sed sit amet dui. Donec rutrum congue leo
                                        eget malesuada. Vivamus suscipit tortor eget felis porttitor volutpat.
                                        Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Praesent
                                        sapien massa, convallis a pellentesque nec, egestas non nisi. Vestibulum ac
                                        diam sit amet quam vehicula elementum sed sit amet dui. Vestibulum ante
                                        ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;
                                        Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula.
                                        Proin eget tortor risus.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> -->
            </div>
        </div>
    </section>
    <!-- Product Details Section End -->

    <!-- Related Product Section Begin -->
    <section class="related-product">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title related__product__title">
                        <h2>관련 상품</h2>
                    </div>
                </div>
            </div>
            <div class="row">
            <c:forEach var="data" items="${relevantData }">
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="http://localhost/rocketkurly/item/${data.main_img }">
                            <ul class="product__item__pic__hover">
 								<li><a href="javascript:wish(${data.item_no})"><i class="fa fa-heart"></i></a></li>
                                <li><a href="javascript:clw(${data.item_no})"><i class="fa fa-shopping-cart"></i></a></li>  
                            </ul>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="shop-details.do?item_no=${data.item_no}">${data.name}</a></h6>
                            <h5>${data.price}</h5>
                        </div>
                    </div>
                </div>
            </c:forEach>

            </div>
        </div>
    </section>
    <!-- Related Product Section End -->

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