<%@page import="kr.co.rocketkurly.cust.vo.OrderItemVO"%>
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
    
    <!-- daum 도로명주소 찾기 api -->
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    <!-- jQuery CDN -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script type="text/javascript">
	$(function() {
		
		$("#couponBtn").click(function(){
			
			var discount = $("#coupon option:selected").val();
			
			if(discount < 10) {
				discount =  parseFloat(0 + '.0' + discount);
			} else if( discount > 99) {
				discount =  parseFloat(1);
			} else {
				discount =  parseFloat(0 + '.' + discount);
			}// end else
			
			var subTotal = parseInt($("#subTotal").html())
			
			discount = subTotal * discount;  
			
			$("#di").val(discount);
			$("#discount").html(Math.floor(discount) + " 원");
			$("#total").html(Math.floor(subTotal - discount) + " 원")
			
			$("#cn").val($("#coupon option:selected").text().split("/", 1));
			
		})
		
		$("#flag").change(function(){
			
			
			
	        if($("#flag").is(":checked")){
	        	
	        	$("#name").val("${ memberInfo.name}")
	        	$("#email").val("${ memberInfo.email}")
	        	$("#tel").val("${ memberInfo.tel}")
	        	$("#zipcode").val("${ memberInfo.addr}")
	        	$("#address").val("${ memberInfo.address}")
	        	$("#rFlag").val("y")
	        	
	        	
	        }else{
	        	
	        	$("#name").val("")
	        	$("#email").val("")
	        	$("#tel").val("")
	        	$("#zipcode").val("")
	        	$("#address").val("")
	        	$("#rFlag").val("n")
	        	
	        }
	    });// change
		
		$("#payment").click(function() {
			
			if($("#name").val() == "" || $("#email").val() == "" || $("#tel").val() == "" ||
					$("#zipcode").val() == "" || $("#address").val() == ""){
				
				alert("수령자 정보는 필수 입니다.")
				return;
				
			}// end if
			
			//alert($("#cn").val());
			
			$("#tt").val($("#total").html().split("원", 1))
			$("#id").val("${ custID }");
			$("#frm").submit();
			
		})// click
		
	})// ready 
	
	//우편번호 찾기 버튼 클릭시 발생 이벤트
	function execPostCode() {
	     new daum.Postcode({
	         oncomplete: function(data) {
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

	            // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
	            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	            var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
	            var extraRoadAddr = ''; // 도로명 조합형 주소 변수

	            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                extraRoadAddr += data.bname;
	            }
	            // 건물명이 있고, 공동주택일 경우 추가한다.
	            if(data.buildingName !== '' && data.apartment === 'Y'){
	               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	            }
	            // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	            if(extraRoadAddr !== ''){
	                extraRoadAddr = ' (' + extraRoadAddr + ')';
	            }
	            // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
	            if(fullRoadAddr !== ''){
	                fullRoadAddr += extraRoadAddr;
	            }

	            // 우편번호와 주소 정보를 해당 필드에 넣는다.
	            console.log(data.zonecode);
	            console.log(fullRoadAddr);
	         /*      var a = console.log(data.zonecode);
	            var b = console.log(fullRoadAddr);
	            
	            if(a == null || b = null){
	               alert("주소를 확인하세요.");
	               return false;
	            }   */
	            
	            
	            $("#zipcode").val(data.zonecode + fullRoadAddr);
	        }
	     }).open();
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
                </div>
            </div>
            <div class="checkout__form">
                <h4>구매자 정보</h4>
                <form action="payment.do" id="frm" method="post">
                    <div class="row">
                        <div class="col-lg-8 col-md-6">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>이름<span>*</span></p>
                                        <input type="text" value="${ memberInfo.name }">
                                    </div>
                                    <div class="checkout__input">
                                        <p>이메일<span>*</span></p>
                                        <input type="text" value="${ memberInfo.email }">
                                    </div>
                                    <div class="checkout__input">
                                        <p>휴대폰번호<span>*</span></p>
                                        <input type="text" value="${ memberInfo.tel }">
                                    </div>
                                </div>
                               
                            </div>
                            <h4>수령자 정보</h4>
                            <div class="col-lg-6">
                           	<div style="margin-bottom: 20px;"><input type="checkbox" id="flag"/> &nbsp;구매자와 동일<br/><input type="hidden" id="rFlag" name=flag value="n"/></div>  
                            <div class="checkout__input">
                                <p>이름<span>*</span></p>
                                 <input type="text" id="name" name="name">
                            </div>
                            <div class="checkout__input">
                                        <p>이메일<span>*</span></p>
                                        <input type="text" id="email" name="email">
                            </div>
                            <div class="checkout__input">
                                        <p>휴대폰번호<span>*</span></p>
                                        <input type="text" id="tel" name="tel">
                                    </div>
                             <div class="checkout__input">
                                
                            </div>
                            <div class="checkout__input">
                                <p>주소<span>*</span></p>
                                <input type="text" id="zipcode" name="zipcode" placeholder="도로명 주소를 입력해주세요" class="checkout__input__add">
                                <input type="text" id="address" name="address" placeholder="상세주소를 입력하세요">
                                <a href="javascript:void(0)" class="primary-btn" style="margin-top: 20px" onclick="execPostCode();" >우편번호 찾기</a>
                            </div>
                            
                            
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-8">
                            <div class="checkout__order" style="width: 550px;"> 
                                <h4>주문</h4>
                                <div class="checkout__order__products">상품<span>총액</span></div>
                                 <ul>
                                 	
                                 	<c:forEach var="payItem" items="${ payItem }">
                                    	<li>${ payItem.itemName } / ${ payItem.quantity }EA <span>${ payItem.total } 원</span></li>
                              			 <c:set var="subTotal" value="${ subTotal + payItem.total }" />
                              			 <input type="hidden" id="in" name="itemName" value="${ payItem.itemName }">
                              			 <input type="hidden" id="qu" name="quantity" value="${ payItem.quantity }">
                              			 <input type="hidden" id="iNo" name="itemNo" value="${ payItem.itemNo }">
                              		</c:forEach>
                                </ul>
                               
                                <div class="checkout__order__subtotal">소계 <span id="subTotal"><c:out value="${ subTotal }"/> 원</span></div>
                                <div class="shoping__discount">
                            <h5>할인 쿠폰</h5>
                                <select id="coupon" name="coupon">
                                	<option value="none">쿠폰을 선택해주세요.</option>
                                	<c:forEach var="coupon" items="${ couponList }">
                                		<option class="coupon" value=${ coupon.discount }><span id="conpon_no">${ coupon.coupon_no }</span>/<c:out value="${ coupon.coupon_name }"/> / <c:out value="${ coupon.discount } %"/></option>
                                	</c:forEach>
                                </select>
                                
                                <button type="button" id="couponBtn" class="site-btn">쿠폰 적용</button>
                        </div>
                                <div class="checkout__order__subtotal">쿠폰 할인<span id="discount">0 원</span></div>
                                <div class="checkout__order__total">총 금액 <span id="total"><c:out value="${ subTotal }"/> 원</span></div>
                                   
                                <input type="hidden" id="cn" name="couponNo">
                                <input type="hidden" id="tt" name="price">
                                <input type="hidden" id="id" name="id">
                                
                                <input type="hidden" id="di" name="discount" value="0">
                                <input type="hidden" id="sp" name="subPrice" value="${ subTotal }">
                                   
                                <a href="javascript:void(0)" id="payment" class="site-btn">결제하기</a>
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