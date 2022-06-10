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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
 <script type="text/javascript">
$(function() {

		
})
function val(pri,qu,index) {
	
	if(qu==0){
		$("#qu"+index).val(1)
		return
	}
	var data = pri*qu
	$("#sum"+index).html(data)
	$("#sumI"+index).html(data)
}   
 function val2( span ) {
	 //alert($(tr).parent())
//	$("tbody tr ").eq(index).remove()
	$(span).parent().parent().remove()
}
 function sub() {
	 if($("#qu0").val()==null){
		 alert("장바구니가 비었습니다.")
		 return
	 }
	 $("#frm").submit();
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
                        <h2>장바구니</h2>
                        <div class="breadcrumb__option">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Shoping Cart Section Begin -->

    <section class="shoping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__table">
     
                         	<form action="checkout.do" method="get" id="frm">   
                        <table>
                            <thead>
                                <tr>
                                    <th class="shoping__product">상품</th>
                                    <th>가격</th>
                                    <th>수량</th>
                                    <th>총액</th>
                                    <th></th>
                                </tr>
                            </thead>
                       
                            <tbody>
                            <c:forEach var="cartList" items="${cartData}" varStatus="idx">
                                <tr>
                                    <td class="shoping__cart__item">
                                        <img  style="width:150px; height: 150px; " src="http://localhost/rocketkurly/item/${cartList.main_img }" alt="">
                                        <h5>${cartList.name}</h5>
                                    </td>
                                    <td class="shoping__cart__price">
                                        ${cartList.price}
                                    </td>
                                    <td class="shoping__cart__quantity">
                                    <input type="hidden" id="hid${idx.index}" name="itemNo"  value="${cartList.item_no}"> 
                                        <div class="quantity" onclick="val( hidd${idx.index}.value,qu${idx.index}.value,${idx.index})">
                                              	<input type="hidden" id="hidd${idx.index}" value="${cartList.price}"/>
                                              	
                                              	<input type="hidden" name="itemName" value="${cartList.name}"/>
                                      			<input type="hidden" name="total"  id="sumI${idx.index}" value="${cartList.priceSum}"/>
                                            <div class="pro-qty" >
                                                <input type="text" name="quantity"  id="qu${idx.index}" value="${cartList.quantity}"/>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="shoping__cart__total" id="sum${idx.index}">
                                        ${cartList.priceSum}
                                        
                                    </td>
                                    <td class="shoping__cart__item__close">
                                        <span class="icon_close" onclick="val2(this)"></span>
                                    </td>
                                </tr>
                               </c:forEach>
                            </tbody>
                        </table>
                         </form>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__btns">
                        <a href="shop-grid.do?p_category_id=vegatable&&c_category_id=ve0&&current_category=ve0" style="float: left;"  class="primary-btn cart-btn">쇼핑 계속하기</a>
                    	 <a href="javascript:sub()" style="float: right;" class="primary-btn">결제하러 가기</a>
                    </div>
                </div>
                <!--  
                <div class="col-lg-6">
                    <div class="shoping__continue">
                        <div class="shoping__discount">
                            <h5>할인 쿠폰</h5>
                            
                                <input type="text" placeholder="쿠폰 번호를 입력하세요">
                                <button type="submit" class="site-btn">쿠폰 적용</button>
                           
                        </div>
                    </div>
                </div>
                -->
                <!--  
                <div class="col-lg-6">
                    <div class="shoping__checkout">
                        <h5>상품 총합</h5>
                        <ul>
                            <li>소계 <span>$454.98</span></li>
                            <li>할인 <span>$454.98</span></li>
                            <li>결제 예정 금액 <span>$454.98</span></li>
                        </ul>
                    	 <a href="javascript:sub()" class="primary-btn">결제하러 가기</a>
                       
                    </div>
                </div>
                -->
                
            </div>
        </div>
    </section>
      
    <!-- Shoping Cart Section End -->

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