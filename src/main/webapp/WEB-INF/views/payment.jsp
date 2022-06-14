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
    
    <!-- 모달 관련 cdn  -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<script type="text/javaScript">
$(".payBtn").click(function() {
    toggleClass(".active-color");
});
$(function () {
	$('#card').click(function(e){
		e.preventDefault();
		$('#testModal9').modal("show");
		
		$('#close').click(function(e){
		e.preventDefault();
		$('#testModal9').modal("hide");
		});
		
		$('#send').click(function(e){
		e.preventDefault();
		alert("입력이 완료되었습니다.");
		$('#testModal9').modal("hide");
		
		});//sendBtnClick
		
		});//cardClick
		
		
		
		
	$('#account').click(function(e){
		e.preventDefault();
		$('#testModal10').modal("show");
		
		$('#close2').click(function(e){
		e.preventDefault();
		$('#testModal10').modal("hide");
		});
		
		$('#send2').click(function(e){
			e.preventDefault();
			$('#testModal10').modal("hide");
		});//sendBtnClick
		
		
		});//accountClick
		
		$("#send").click(function() {
		
			var checked = $('#flag').is(':checked');
				
			if(!checked){
				alert("동의하지 않으면 결제가 불가능 합니다.")
			}// end if
			
			$("#frm").submit();
			
		})
		
	
})//ready

</script>
<style type="text/css">
.payBtn{
		   background-color: #7fad39;
		   color: #ffffff !important;
		   font-weight: bold;
		   text-decoration: none;
		   border: 0px;
		  }
payBtn.active-color {  
							background-color: #808000;
							 }

.payBtn:focus {
 					 background-color: #808000;
					}

a{
	text-decoration: none;
  }
  
 

</style>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

  
	<!-- 헤더  -->
   	<%@ include file="/WEB-INF/views/include/header.jsp" %>
   	<!-- 메뉴  -->
   <%-- 	<%@ include file="/WEB-INF/views/include/menu.jsp" %> --%>

      
    
    <!-- 결제 수단 배너 -->
    <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>결제수단</h2>
                        <div class="breadcrumb__option">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 결제 수단 배너 -->

    <!-- 결제 수단 선택 및 동의  -->
    <section class="shoping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__table">
                      
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__btns">
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="shoping__continue">
                        <div class="shoping__discount">
                            <div style="border-bottom: 3px solid #dfdfdf;">
                            <h5>개인정보 수집/제공 </h5>
                            </div>
                            <div style="margin-top: 20px;">
                            <input type="checkbox" id="flag" style="width: 20px; height: 20px; vertical-align: sub;"/>
                            개인 정보 수집/이용과 결제 대행 서비스에 동의하시겠습니까?
                            </div>
                            <div style="border-bottom: 3px solid #dfdfdf; margin-top: 20px;">
                            <h5>결제 수단</h5>
                            </div>
                            <div style="margin-bottom: 10px; margin-top: 30px;">
                            <input type="button" value="신용카드" id="card" class="payBtn" />
                            <input type="button" value="무통장입금" id="account" class="payBtn"/>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="shoping__checkout">
                        <h5>상품 총합</h5>
               			<form action="paypro.do" method="post" id="frm">
	                        <input type="hidden" name="flag" value="${ orVO.flag }">
	                        <input type="hidden" name=id value="${ orVO.id }">
	                        <input type="hidden" name="name" value="${ orVO.name }">
	                        <input type="hidden" name="email" value="${ orVO.email }">
	                        <input type="hidden" name="tel" value="${ orVO.tel }">
	                        <input type="hidden" name="zipcode" value="${ orVO.zipcode }">
	                        <input type="hidden" name="address" value="${ orVO.address }">
	                        <input type="hidden" name="couponNo" value="${ orVO.couponNo }">
	                        <input type="hidden" name="price" value="${ orVO.price }">
	                        <input type="hidden" name="subPrice" value="${ orVO.subPrice }">
	                        <input type="hidden" name="discount" value="${ orVO.discount }">
	                        <input type="hidden" name="cartFlag" value="${ orVO.cartFlag }">
	                        <c:forEach var="oiVO" items="${ oiVO }">
	                        	<input type="hidden" name="itemName" value="${ oiVO.itemName }">
	                        	<input type="hidden" name="itemNo" value="${ oiVO.itemNo }">
	                        	<input type="hidden" name="quantity" value="${ oiVO.quantity }">
	                        </c:forEach>
						</form>
                        <ul>
                            <li>소계 <span><c:out value="${ orVO.subPrice }"/> 원</span></li>
                            <li>할인 <span><c:out value="${ orVO.discount }"/> 원</span></li>
                            <li>결제 예정 금액 <span><c:out value="${ orVO.price }"/> 원</span></li>
                        </ul>
                        <a href="javascript:void(0)" id="send" class="primary-btn">결제완료</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 결제 수단 선택 및 동의 끝-->

	<!--신용카드 결제 모달-->
<div class="modal fade" id="testModal9" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">신용카드 결제</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
          
             	<select name="card">
				    <option value="none">카드사 선택</option>
				    <option value="" >현대</option>
				    <option value="">신한</option>
				    <option value="">비씨(페이북)</option>
				    <option value="">KB국민</option>
				    <option value="">삼성</option>
				    <option value="">롯데</option>
				    <option value="">하나(외환)</option>
				    <option value="">NH채움</option>
				    <option value="">우리</option>
				    <option value="">수협</option>
				    <option value="">씨티</option>
				    <option value="">광주</option>
				    <option value="">전북</option>
				    <option value="">제주</option>
				    <option value="">신협체크</option>
				    <option value="">MG새마을체크</option>
				    <option value="">저축은행체크</option>
				    <option value="">우체국카드</option>
				    <option value="">KDB산업은행</option>
				    <option value="">카카오뱅크</option>
			</select>
          </div>
			<div style="margin-top: 10px">
            <input type="text" class="form-control" id="recipient-name" placeholder="카드번호 16자리 입력">
			</div>
        </form>
      </div>
      
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal" id="close">취소</button>
        <button type="button" class="btn btn-primary" id="send">확인</button>
      </div>
    </div>
  </div>
</div>
	<!--신용카드 결제 모달 끝-->
	
	<!--무통장입금 모달-->
<div class="modal fade" id="testModal10" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">무통장입금</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
          
             	<select name="card">
				    <option value="none">은행 선택</option>
				    <option value="" >현대</option>
				    <option value="">신한</option>
				    <option value="">KB국민</option>
				    <option value="">하나(외환)</option>
				    <option value="">농협</option>
				    <option value="">우리</option>
				    <option value="">수협</option>
				    <option value="">씨티</option>
				    <option value="">신협</option>
				    <option value="">MG새마을</option>
				    <option value="">저축은행</option>
				    <option value="">우체국</option>
				    <option value="">KDB산업은행</option>
				    <option value="">카카오뱅크</option>
			</select>
          </div>
			<div style="margin-top: 10px">
            <input type="text" class="form-control" id="recipient-name" placeholder="계좌번호 입력">
			</div>
        </form>
      </div>
      
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal" id="close2">취소</button>
        <button type="button" class="btn btn-primary" id="send2">확인</button>
      </div>
    </div>
  </div>
</div>
	<!--무통장입금 모달 끝-->

	<%@ include file="/WEB-INF/views/include/footer.jsp" %>

    <!-- Js Plugins -->
    
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>


</body>

</html>