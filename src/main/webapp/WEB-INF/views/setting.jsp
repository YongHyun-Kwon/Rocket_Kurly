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
    
     <!-- 모달 관련 cdn  -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

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
</head>
<script type="text/javascript">

$(function () {

	$('#exit').click(function(e){
		e.preventDefault();
		$('#testModal7').modal("show");
		
		$('#ok').click(function(e){
			e.preventDefault();
			$('#testModal7').modal("hide");
		});//okClick
		
		$('#cancel').click(function(e){
			e.preventDefault();
			$('#testModal7').modal("hide");
		});//okClick
		
	});//exitClick
	
	
})//ready
</script>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

	<%@ include file="/WEB-INF/views/include/header.jsp" %>

	<div class="site-wrap">

    <div class="site-section">
        <div class="container">
            <div class="row mb-5">
                <div class="col-md-9 order-2">
                    <div class="bg-white shadow rounded-lg d-block d-sm-flex">
                        <div class="tab-content p-4 p-md-5" id="v-pills-tabContent">
                            <div class="tab-pane fade show active" id="account" role="tabpanel" aria-labelledby="account-tab">
                                <h1 class="mb-4">계정 관리</h1>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>이메일</label>
                                            <input type="text" class="form-control" id="id" name="id" >
                                            <span style="float: right;color: red;font-size: 12px;" id="red1"></span>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>이름</label>
                                            <input type="text" class="form-control"  id="nick" name="nick" readonly="readonly">
                                            <span style="float: right;color: red;font-size: 12px" id="red2"></span>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>닉네임</label>
                                            <input type="text" class="form-control"  id="nick" name="nick">
                                            <span style="float: right;color: red;font-size: 12px" id="red2"></span>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                       
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>휴대폰 번호</label>
                                            <input type="text" class="form-control" id="tel" maxlength="11" name="tel"  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                       
                                    </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>비밀번호 확인</label>
                                                <input type="password" class="form-control" id="pass2">
                                                <span style="float: right;color: red;font-size: 12px" id="red4"></span>
                                            </div>
                                        </div>
                                          <div class="col-md-6">
                                            <div class="form-group">
                                                <label>새 비밀번호</label>
                                                <input type="password" class="form-control" id="pass" name="pass">
                                                <span style="float: right;color: red;font-size: 12px; width: 340px;" id="red3"></span>
                                            </div>
                                    </div>
                                          <div class="col-md-6">
                                            <div class="form-group">
                                                <label>우편번호</label>
                                                <input type="password" class="form-control" id="pass" name="pass">
                                                <span style="float: right;color: red;font-size: 12px; width: 340px;" id="red3"></span>
                                            </div>
                                    </div>
                                          <div class="col-md-6">
                                            <div class="form-group">
                                                <label>배송지</label>
                                                <input type="password" class="form-control" id="pass" name="pass">
                                                <span style="float: right;color: red;font-size: 12px; width: 340px;" id="red3"></span>
                                            </div>
                                    </div>
                                    </div>
                                  
                                </div>
                                <div>
                                <input type="hidden" id="hid" name="hid" value="ok">
                                    <button class="btn btn-primary" id="btn">변경하기</button>
                                    <button class="btn btn-danger" style="float:right" id="exit">탈퇴</button>
                                </div>
                            </div>

                        </div>

                    </div>
                <%@include file="include/mypage_nav.jsp"%>
                </div>
            </div>
        </div>
    </div>
    
	<!-- 회원 탈퇴 모달  -->
    
    <div class="modal fade" id="testModal7" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">회원 탈퇴</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <input type="checkbox" value="exit">
      탈퇴 확인 버튼을 누르시면 회원 복구가 불가능합니다.
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal" id="cancel">취소</button>
        <button type="button" class="btn btn-primary" id="ok">탈퇴 확인</button>
      </div>
    </div>
  </div>
</div>

    

    

    

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