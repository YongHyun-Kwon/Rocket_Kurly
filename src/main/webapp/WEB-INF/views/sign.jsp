<!DOCTYPE html>
<html lang="zxx">

<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta charset="UTF-8">
	<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>회원가입 약관</title>

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
    <link rel="stylesheet" href="css2/jquery-ui.css">
    <link rel="stylesheet" href="css2/magnific-popup.css">
    <link rel="stylesheet" href="css2/owl.carousel.min.css">
    <link rel="stylesheet" href="css2/owl.theme.default.min.css">


    <link rel="stylesheet" href="../css/aos.css">

    <link rel="stylesheet" href="../css/style.css">
    
    <script type="text/javascript">
$(function () {
	
	$("#fpmgBt2").click(function() {
		var cnt=0;	
		$("[name='chk']:checked").each(function (idx,ele) {
			cnt++;
		})
		if(cnt!=3){
			alert("필수항목을 체크해주세요")
			return false;
		}
		
		location.href="sign2.do";
		//$("#joinForm").submit();	
	})
	$("[name='chkAll']").click(function () {
		var obj=document.joinForm;
		for(var i=0;i<obj.chk.length;i++){
			obj.chk[i].checked=obj.chkAll.checked;
		}
	})
	$(".fpmgBt1").click(function () {
		document.joinForm.action="index.do";
	})

})


</script>
</head>
<style type="text/css">

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
                        <h2>회원 가입 약관</h2>
                        <div class="breadcrumb__option">
                        
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Contact Form Begin -->
    <div class="contact-form spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="contact__form__title">
                    </div>
                </div>
            </div>
           <form action="sign2.do" id="joinForm" name="joinForm">
    <ul class="join_box"style="text-align: left; list-style: none;">
        <li class="checkBox check01" style="text-align: left;">
            <ul class="clearfix">
                <li style="text-align: left; list-style: none">바다사자 이용약관, 개인정보 수집 및 이용,
                    위치정보 이용약관에 모두 동의합니다.</li>
                <li class="checkAllBtn" style="list-style: none">
                    <input type="checkbox" name="chkAll" id="chk" class="chkAll"style="width: 20px;height: 20px;">
                </li>
            </ul>

        </li>
        <li class="checkBox check02">
            <ul class="clearfix" style="list-style: none">
                <li>이용약관 동의<span style="color: #1e7e34;font-size: small">(필수)</span></li>
                <li class="checkBtn">
                    <input type="checkbox" name="chk"style="width: 20px;height: 20px;">
                </li>
            </ul>
            <textarea name="" id=""style="text-align: left">여러분을 환영합니다.
바다사자 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 바다사자 서비스의 이용과 관련하여 바다사자 서비스를 제공하는 바다사자 주식회사(이하 ‘바다사자’)와 이를 이용하는 바다사자 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 바다사자 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
       </textarea>
        </li>
        <li class="checkBox check03">
            <ul class="clearfix" style="list-style: none">
                <li>개인정보 수집 및 이용에 대한 안내<span style="color: #1e7e34;font-size: small">(필수)</span></li>
                <li class="checkBtn">
                    <input type="checkbox" name="chk"style="width: 20px;height: 20px;">
                </li>
            </ul>

            <textarea >여러분을 환영합니다.
바다사자 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 바다사자 서비스의 이용과 관련하여 바다사자 서비스를 제공하는 바다사자 주식회사(이하 ‘바다사자’)와 이를 이용하는 바다사자 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 바다사자 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
       </textarea>
        </li>
        <li class="checkBox check03">

            <ul class="clearfix" style="list-style: none">
                <li>위치정보 이용약관 동의<span style="color: #1e7e34;font-size: small">(필수)</span></li>
                <li class="checkBtn">
                    <input type="checkbox" name="chk"style="width: 20px;height: 20px;">
                </li>
            </ul>

            <textarea name="" id="">여러분을 환영합니다.
바다사자 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 바다사자 서비스의 이용과 관련하여 바다사자 서비스를 제공하는 바다사자 주식회사(이하 ‘바다사자’)와 이를 이용하는 바다사자 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 바다사자 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
       </textarea>
        </li>
        
    </ul>
        
        <a href="index.do" class="primary-btn" >취소</a>
        <a href="sign2.do" class="primary-btn" id="goSign2">다음</a>
   
</form>
        </div>
    </div>
    <!-- Contact Form End -->

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
	<script src="js2/jquery-ui.js"></script>
	<script src="js2/popper.min.js"></script>
	<script src="js2/aos.js"></script>


</body>

</html>