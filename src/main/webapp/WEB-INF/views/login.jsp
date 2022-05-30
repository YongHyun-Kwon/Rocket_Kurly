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
    <title>login</title>
    
    <!-- 모달 관련 cdn  -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
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
<!-- jQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javaScript">
$(function() {
	
	$("#login").click(function(){
		
		if($("#id").val() == ""){
			alert("ID는 필수 입력 입니다.");
			$("#id").focus();
			return;
		}// end if

		if($("#pw").val() == ""){
			alert("Password는 필수 입력 입니다.");
			$("#pw").focus();
			return;
		}// end if
		
		$("#custLoginFrm").submit();
		
	})// click
	
	//아이디 찾기
	$('#idBtn').click(function(e){
	e.preventDefault();
	$('#findIDModal').modal("show");
	
	$('#close').click(function(e){
	e.preventDefault();
	$('#findIDModal').modal("hide");
	});
	
	$('#sendBtn').click(function(e){
		e.preventDefault();
		
		if($("#recipient-name").val() == ""){
			alert("이름을 입력해주세요.");
			$("#recipient-name").focus();
			return;
		}// end if
		
		if($("#recipient-email").val() == ""){
			alert("이메일을 입력해주세요.");
			$("#recipient-email").focus();
			return;
		}// end if
		
		findID();
		
	});//sendBtnClick
	
	$('#goLogin').click(function(e){
		$('#idFindVerifyModal').modal("hide");
	});//goLoginClick
	
	$('#idFailBtn').click(function() {
		$('#idFindFailModal').modal("hide");
	})
	
	});//idBtnClick
	
	//비밀번호 찾기
	$('#pwBtn').click(function(e){
	e.preventDefault();
	$('#pwFindModal').modal("show");
	
	$('#cancel2').click(function(e){
	e.preventDefault();
	$('#pwFindModal').modal("hide");
	});
	
	$('#search').click(function(){
		
		if($("#pwRecipient-id").val() == ""){
			
			alert("아이디를 입력해주세요.");
			$("#pwRecipient-id").focus();
			return;
			
		}// end if
		
		if($("#pwRecipient-email").val() == ""){
			
			alert("이메일을 입력해주세요.");
			$("#pwRecipient-emai").focus();
			return;
			
		}// end if
		
		if($("#pwRecipient-tel").val() == ""){
			
			alert("전화번호를 입력해주세요.");
			$("#pwRecipient-tel").focus();
			return;
			
		}// end if
		
		findPW();
		
	});//searchClick
	
	$('#goLogin2').click(function(e){
		e.preventDefault();
		$('#getPassword').modal("hide");
	});//goLoginClick
	
	$('#cancel2').click(function(e){
		e.preventDefault();
		$('#pwFindModal').modal("hide");
	});//cancel2Click
	
	});//pwBtnClick
	




})//ready

function findID(){
	
	$.ajax({
		url : "http://localhost/rocketkurly/idfind.do",
		type : "POST",
		data : {
			name : $("#recipient-name").val(),
			email : $("#recipient-email").val()
		},
		async : true,
		dataType : 'text',
		error : function(xhr) {
			alert(xhr.text + "/" + xhr.status);
		},
		success : function( findID ) {
			
			if(findID == 'fail'){
				
				$('#findIDModal').modal("hide");
				$('#idFindFailModal').modal("show");
				$("#recipient-name").val("");
				$("#recipient-email").val("");
			
			} else {
				
				$('#findID').html(findID)
				$('#findIDModal').modal("hide");
				$('#idFindVerifyModal').modal("show");
				$("#recipient-name").val("");
				$("#recipient-email").val("");
				
			}// end else
			
		},
		
	}) // ajax
	
}// findID

function findPW(){
	
	$.ajax({
		url : "http://localhost/rocketkurly/pwfind.do",
		type : "POST",
		data : {
			id : $("#pwRecipient-id").val(),
			email : $("#pwRecipient-email").val(),
			tel : $("#pwRecipient-tel").val()
		},
		async : true,
		dataType : 'text',
		error : function(xhr) {
			alert(xhr.text + "/" + xhr.status);
		},
		success : function( changePW ) {
			
			if(changePW == 'fail'){
				
				$('#pwFindModal').modal("hide");
				$('#pwFindFailModal').modal("show");
				$("#pwRecipient-id").val("");
				$("#pwRecipient-email").val("");
				$("#pwRecipient-tel").val("");
			
			} else {
				
				$('#findPW').html(changePW)
				$('#pwFindModal').modal("hide");
				$('#getPassword').modal("show");
				$("#pwRecipient-id").val("");
				$("#pwRecipient-email").val("");
				$("#pwRecipient-tel").val("");
				
			}// end else
			
		},
		
	}) // ajax
	
}// findPW

</script>
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
.site-btn{
			font-size: 18px;
    		letter-spacing: 2px;
    		color:#ffffff;
    		padding: 13px 30px 12px;
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
                        <h2>Please Login</h2>
                        <div class="breadcrumb__option">
                            <span>로그인을 해야 서비스를 이용하실 수 있습니다.</span>
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
                        <h2>Login</h2>
                    </div>
                </div>
            </div>
            <form action="http://localhost/rocketkurly/loginProcess.do" id="custLoginFrm" method="post">
                <div class="row">
                    <div class="col-lg-6 col-md-6" style="margin:0px auto;">
                        <input type="text" id="id" name="id" placeholder="ID">
                        <input type="password" id="pw" name="pw" placeholder="Password">
                        <c:if test="${ msg == 'fail' }">
                        	<div style="color: red;">아이디 비밀번호를 확인해주세요</div>
                        </c:if>
                        <input type="checkbox" id="chkBox" value="idSave"><span style="font-size: 15px; padding:5px;">아이디 저장</span>
                   		 <br/>
                   		 <div style="text-align: center">
                   		<a href="javascript:void(0)" id="login" class="primary-btn" >로그인</a>
                   		<a href="http://localhost/rocketkurly/sign.do" id="register" class="primary-btn" >회원가입</a>
                    	 <div style="margin-top: 30px;">
                    	<a href="#" class="search1" id="idBtn">아이디 찾기</a>|<a href="#" class="search2" id="pwBtn">비밀번호 찾기</a>
                    	 </div>
                   		 </div>
                   		 
                    </div>
                    	
                </div>
            </form>
        </div>
    </div>
    <!-- Contact Form End -->
    
    <!-- 아이디 찾기 모달  -->
	    <div class="modal fade" id="findIDModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">아이디 찾기</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	        <form action="http://localhost/rocketkurly/idfind.do" id="idFindFrm" method="post">
	          <div class="form-group">
	            <label for="recipient-name" class="col-form-label">이름입력</label>
	            <input type="text" class="form-control" id="recipient-name" name="id" placeholder="가입시 입력하신 이름을 적어주세요.">
	            <label for="recipient-name" class="col-form-label">E-Mail입력</label>
	            <input type="text" class="form-control" id="recipient-email" name="email" placeholder="가입시 입력하신 이메일을 적어주세요.">
	          </div>
	        </form>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal" id="close">닫기</button>
	        <button type="button" class="btn btn-primary" id="sendBtn">계정 확인하기</button>
	      </div>
	    </div>
	  </div>
	</div>
	<!--아이디 찾기 모달 끝  -->
	
	<!-- 아이디 안내 -->
<div class="modal fade" id="idFindVerifyModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">회원님의 아이디 입니다.</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        아이디 : <span id="findID"></span>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" id="goLogin">확인</button>
      </div>
    </div>
  </div>
</div>
<!-- 아이디 안내  -->
	
	<!-- 아이디 틀렸을 때 모달 -->
<div class="modal fade" id="idFindFailModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">정보가 일치하지 않습니다.</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        다시 한 번 올바른 정보를 입력해주십시오
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" id="idFailBtn">확인</button>
      </div>
    </div>
  </div>
</div>
		<!-- 아이디 틀렸을때 모달 끝  -->

		<!--비밀번호 찾기 모달  -->
<div class="modal fade" id="pwFindModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">비밀번호 찾기</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">아이디 입력</label>
            <input type="text" class="form-control" id="pwRecipient-id" name="id" placeholder="아이디를 입력해주세요">
          </div>
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">가입시 입력하신 이메일을 적어주세요.</label>
            <input type="text" class="form-control" id="pwRecipient-email" name="eamil" placeholder="가입시 입력하신 이메일을 적어주세요.">
          </div>          
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">가입시 입력하신 휴대번호를 적어주세요.</label>
            <input type="text" class="form-control" id="pwRecipient-tel" name="tel" placeholder="가입시 입력하신 이메일을 적어주세요.">
          </div>          

        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal" id="cancel2">취소</button>
        <button type="button" class="btn btn-primary" id="search">찾기</button>
      </div>
    </div>
  </div>
</div>

<!-- 비밀번호 안내 -->
<div class="modal fade" id="getPassword" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">회원님의 임시비밀번호 입니다.</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        비밀번호 : <span id="findPW"></span>
        <br/>
        비밀번호를 꼭 변경해주세요!
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" id="goLogin2">확인</button>
      </div>
    </div>
  </div>
</div>
<!-- 비밀번호 안내  -->

<!-- 비밀번호 틀렸을 때 모달 -->
<div class="modal fade" id="pwFindFailModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">정보가 일치하지 않습니다.</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        다시 한 번 올바른 정보를 입력해주십시오
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" id="goBack">확인</button>
      </div>
    </div>
  </div>
</div>
		<!-- 비밀번호 틀렸을때 모달 끝  -->


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



</body>

</html>