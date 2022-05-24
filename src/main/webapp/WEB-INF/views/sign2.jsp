<!DOCTYPE html>
<html lang="zxx">

<head>
	<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		
		location.href="checkout2.jsp";
		//$("#joinForm").submit();	
	})
	$("[name='chkAll']").click(function () {
		var obj=document.joinForm;
		for(var i=0;i<obj.chk.length;i++){
			obj.chk[i].checked=obj.chkAll.checked;
		}
	})
	$("#fpmgBt2").click(function () {
		document.joinForm.action="sign2.do";
	})

})


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
 <form action="sign3.do" method="post" id="checkout2Frm" name="checkout2Frm">
    <div class="p-3 p-lg-5">
        <div class="form-group row">
            <div class="col-md-12">
                <label for="c_companyname" class="text-black">아이디<span class="text-danger">*</span> </label>
                <input type="text" class="form-control" id="c_id" name="c_id">
                <span style="float: right;color: red;font-size: 12px;display: none;" id="red1">중복 아이디가 있습니다.</span>
            </div>
            <div class="col-md-12">
                <label for="c_companyname" class="text-black">이메일<span class="text-danger">*</span> </label>
                <input type="text" class="form-control" id="c_email" name="c_email">
                <span style="float: right;color: red;font-size: 12px;display: none;" id="red1">중복 이메일이 있습니다.</span>
            </div>
            <div class="col-md-12">
                <label for="c_companyname" class="text-black">비밀번호<span class="text-danger">*</span> </label>
                <input type="password" class="form-control" name="c_pass" id="c_pass" >
                <span style="float: right;color: red;font-size: 12px;display: none;" id="red2">영문, 숫자 조합 8~16자로 적어주세요.</span>
            </div>
            <div class="col-md-12">
                <label for="c_companyname" class="text-black">비밀번호 확인<span class="text-danger">*</span> </label>
                <input type="password" class="form-control" name="c_pass2" id="c_pass2" >
                <span style="float: right;color: red;font-size: 12px;display: none;" id="red3">비밀번호 확인 문자가 다릅니다.</span>
            </div>
            <div class="col-md-12">
                <label for="c_companyname" class="text-black">닉네임<span class="text-danger">*</span> </label>
                <input type="text" class="form-control" name="c_nickname"  id="c_nickname"/>
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
                <input type="text" class="form-control" id="c_id" name="c_id">
            </div>
        </div>
        
        
        <div class="form-group">
            <label for="c_country" class="text-black">주소 <span class="text-danger">*</span></label>
            <input type="text" class="form-control" id="c_zipcode" name="c_zipcode" placeholder="우편번호 입력">
            <input type="text" class="form-control" id="c_address" name="c_address" placeholder="상세주소 입력">
        </div>

        <!-- </form> -->
            <a href="index.do" class="primary-btn" >취소</a>
            <a href="sign3.do" class="primary-btn" id="signup">가입</a>
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