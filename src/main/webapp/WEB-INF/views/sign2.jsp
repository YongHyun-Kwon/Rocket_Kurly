<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>회원가입</title>

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
    
    <!--회원가입 약관 CSS -->
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">


    <link rel="stylesheet" href="../css/aos.css">

    <link rel="stylesheet" href="../css/style.css">
    
    <!-- daum 도로명주소 찾기 api -->
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<!-- jQuery CDN -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script type="text/javaScript">	
	$(function () {
		
	//아이디 정규식
	var idJ = /^[a-z0-9][a-z0-9_\-]{4,19}$/;
	// 이름 정규식
	var nameJ = /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/;
	// 이메일 검사 정규식
	var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	// 휴대폰 번호 정규식
	var phoneJ = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;
		
		$("#signup").click(function() {
			
			if($("#c_id").val() == ""){
				
				alert("ID는 필수 입력 입니다.");
				$("#c_id").focus();
				return;
				
			} else if (idJ.test($("#c_id").val!=true)) {
				
				alert("4~12자의 영문, 숫자만 사용 가능합니다.");
				$("#c_id").focus();
				
			}// end else
			
			if($("#c_email").val() == ""){
				
				alert("Email은 필수 입력 입니다.");
				$("#c_email").focus();
				return;
				
			} else if (mailJ.test($("c_email").val())) {
				alert("이메일을 확인하세요")
			}
			
			if($("#c_pass").val() == "" || $("#c_pass2").val() == "" ){
				
				alert("비밀번호는 필수 입력 입니다.");
				$("#c_pass").focus();
				return;
				
			}
			
			if($("#c_name").val() == ""){
				
				alert("이름은 필수 입력 입니다.");
				$("#c_name").focus();
				return
				
			} else if( nameJ.test($("#c_name").val())){
				alert("이름을 확인하세요.")
			}
			
			if($("#c_nickname").val() == ""){
				
				alert("nickname은 필수 입력 입니다.");
				$("#c_nickname").focus();
				return;
				
			}// end if

			if(!$('input:radio[name=gender]').is(':checked')){
				
				alert("gernder을 선택해주세요.")
				return;
				
			}// end if
			
			if($("#c_tel").val()=="" && phoneJ.test($("#c_tel").val())){
				
				alert("휴대폰 번호를 확인해주세요");
				return;
				
			}// end if
			
			if($("#c_zipcode").val() == "" || $("#c_address").val() == "" ){
				
				alert("주소는 필수 입력입니다.");
				$("#c_zipcode").focus();
				return;
				
			}// end if
			
			$("#checkout2Frm").submit();
			
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
	            
	            
	            $("#c_zipcode").val(data.zonecode);
	            $("#c_address").val(fullRoadAddr);
	            
	            document.getElementById('c_zipcode').value = data.zonecode; //5자리 새우편번호 사용
	            document.getElementById('c_address').value = fullRoadAddr;

	            //document.getElementById('mem_detailaddress').value = data.jibunAddress; 
	        }
	     }).open();
	 }

</script>
</head>
<style type="text/css">
#chkBox{
			width : 15px;
			height : 15px;
			
			}
#loginBtn{
			width: 100px;			
			height: 50px;	
			text-align: center;		
			}
#memberBtn{
			width: 100px;			
			height: 50px;			
			text-align: center;		
			}

.search1{
			text-decoration: none;
			color: black;
		   }
		   
.search2{
			text-decoration: none;
			color: black;
		   }
.fpmgBt1{
			text-decoration: none;
			background-color: #7fad39;
			width: 100px;
			}
.fpmgBt2{
			text-decoration: none;
			background-color: #7fad39;
			}
</style>



<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

   
    	<%@ include file="/WEB-INF/views/include/header.jsp" %>
    

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>회원 가입</h2>
                        <div class="breadcrumb__option">
                        
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!--회원 가입 form 시작 -->
<div style="width: 500px; text-align: left; margin: 0px auto;">
 <form action="http://localhost/rocketkurly/signProcess.do" method="post" id="checkout2Frm" name="checkout2Frm">
    <div class="p-3 p-lg-5">
        <div class="form-group row">
            <div class="col-md-12">
                <label for="c_companyname" class="text-black">아이디<span class="text-danger">*</span> </label>
                <input type="text" class="form-control" id="c_id" name="id">
                <span style="float: right;color: red;font-size: 12px;display: none;" id="red1">중복 아이디가 있습니다.</span>
            </div>
            <div class="col-md-12">
                <label for="c_companyname" class="text-black">이메일<span class="text-danger">*</span> </label>
                <input type="text" class="form-control" id="c_email" name="email">
                <span style="float: right;color: red;font-size: 12px;display: none;" id="red1">중복 이메일이 있습니다.</span>
            </div>
            <div class="col-md-12">
                <label for="c_companyname" class="text-black">비밀번호<span class="text-danger">*</span> </label>
                <input type="password" class="form-control" name="pw" id="c_pass" >
                <span style="float: right;color: red;font-size: 12px;display: none;" id="red2">영문, 숫자 조합 8~16자로 적어주세요.</span>
            </div>
            <div class="col-md-12">
                <label for="c_companyname" class="text-black">비밀번호 확인<span class="text-danger">*</span> </label>
                <input type="password" class="form-control" name="c_pass2" id="c_pass2" >
                <span style="float: right;color: red;font-size: 12px;display: none;" id="red3">비밀번호 확인 문자가 다릅니다.</span>
            </div>
            <div class="col-md-12">
                <label for="c_companyname" class="text-black">이름<span class="text-danger">*</span> </label>
                <input type="text" class="form-control" name="name"  id="c_name"/>
            </div>
            <div class="col-md-12">
                <label for="c_companyname" class="text-black">닉네임<span class="text-danger">*</span> </label>
                <input type="text" class="form-control" name="nickname"  id="c_nickname"/>
                <span style="float: right;color: red;font-size: 12px; display: none;" id="red4">중복된 닉네임이 있습니다.</span>
            </div>
            <div style="margin: 18px">
                <label for="c_companyname" class="text-black">성별<span class="text-danger">*</span></label>
               
                    <label><input type="radio" name="gender" value="m"> 남</label>
                    <label><input type="radio" name="gender" value="f"> 여</label>
               
            </div>
        </div>
        <div class="form-group row">
            <div style="text-align: left;margin: 18px">
                <label class="text-black">휴대폰 번호 <span class="text-danger">*</span></label>
                <input type="text" class="form-control" id="c_tel" name="tel">
            </div>
        </div>
        
        
        <div class="form-group">
            <label for="c_country" class="text-black">주소<span class="text-danger">*</span></label>
            <input type="text" class="form-control" id="c_zipcode" name="addr" placeholder="우편번호">
            <button type="button" class="btn btn-default" onclick="execPostCode();"><i class="fa fa-search"></i>우편번호 찾기</button>                               
            <input type="text" class="form-control" id="c_address" name="address" placeholder="상세주소 입력" style="width: 600px;">
        </div>

        <!-- </form> -->
            <a href="index.do" class="primary-btn" >취소</a>
            <a href="javascript:void(0)" class="primary-btn" id="signup">가입</a>
    </div>
<input type="hidden" value="ok" id="hid" name="hid">
     </form>
</div>
    <!-- 회원가입 폼 끝 -->

    <!-- Footer Section Begin -->
    <%@ include file="/WEB-INF/views/include/footer.jsp" %>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>

	<!--회원 가입 약관 JS  -->
	<script src="js/jquery-ui.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/aos.js"></script>


</body>

</html>