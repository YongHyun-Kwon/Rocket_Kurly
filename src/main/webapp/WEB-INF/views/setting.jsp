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
    <!-- daum 도로명주소 찾기 api -->
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<!-- jQuery CDN -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">

$(function () {

	$('#exit').click(function(e){
		e.preventDefault();
		$('#resignMemberModal').modal("show");
		
		$('#ok').click(function(e){
			resignMember();
		});//okClick
		
		$('#cancel').click(function(e){
			e.preventDefault();
			$('#resignMemberModal').modal("hide");
		});//okClick
		
	});//exitClick
	
	// 이메일 검사 정규식
	var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	// 휴대폰 번호 정규식
	var phoneJ = /^\d{3}-\d{3,4}-\d{4}$/;
	
	// 이메일 양식 확인
	$("#email").focusout(function() {
		
		if( !mailJ.test($("#email").val())) {
			
			$("#red1").html("이메일 양식을 확인해 주세요.");
			$("#red1").css({"display" : ""})
			return;
		 } else {
			$("#red1").html("");
			$("#red1").css({"display" : "none"})
			return;
		 }//end else
		
	})// focusout
	
	// 휴대폰 양식 확인
	$("#tel").focusout(function(){
		
		if(!phoneJ.test($("#tel").val())){
				
			$("#red4").html("휴대폰 번호를 확인해주세요.");
			$("#red4").css({"display" : ""})
			return;
			
		} else {
			
			$("#red4").html("");
			$("#red4").css({"display" : "none"})
			
		}// end else
		
	})// focusout
	
	// 비밀번호와 비밀번호 확인 값 확인
	$("#pass2").focusout(function() {
		
		if($("#pass").val() != $("#pass2").val()){
			
			$("#red5").html("비밀번호 확인 문자가 다릅니다.");
			$("#red5").css({"display" : ""})
			return
		} else {
			$("#red5").html("");
			$("#red5").css({"display" : "none"})
		}
		
	})// focusout
	
	$("#btn").click(function() {
		
		$("#frm").submit();
		
	})// click
	
	
})//ready

function resignMember(){
	
	$.ajax({
		url : "http://localhost/rocketkurly/resignmember.do",
		type : "GET",
		async : true,
		dataType : 'text',
		error : function(xhr) {
			alert(xhr.text + "/" + xhr.status);
		},
		success : function( msg ) {
			
			if(msg == 'success'){
				
				$('#resignMemberModal').modal("hide");
				alert("회원 탈퇴가 완료되었습니다.")
				window.location.href = "http://localhost/rocketkurly/logout.do";
			
			} else {
				
				$('#resignMemberModal').modal("hide");
				alert('실패 페이지');
				
			}// end else
			
		},
		
	}) // ajax
	
}// resignMember

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
            
            
            $("#zipcode").val(data.zonecode);
            $("#address").val(fullRoadAddr);
            
            document.getElementById('zipcode').value = data.zonecode; //5자리 새우편번호 사용
            document.getElementById('address').value = fullRoadAddr;

            //document.getElementById('mem_detailaddress').value = data.jibunAddress; 
        }
     }).open();
 }
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
                    <div class="bg-white shadow rounded-lg d-block d-sm-flex" style="width: 1000px">
                        <div class="tab-content p-4 p-md-5" id="v-pills-tabContent">
                            <div class="tab-pane fade show active" id="account" role="tabpanel" aria-labelledby="account-tab">
                                <h1 class="mb-4">계정 관리</h1>
                                <form action="http://localhost/rocketkurly/modifymember.do" method="post" id="frm">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>이메일</label> 
                                            <input type="text" class="form-control" value="${ custData.email }" id="email" name="email" >
                                            <span style="float: right;color: red;font-size: 12px; display: none;" id="red1" ></span>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>이름</label>
                                            <input type="text" class="form-control"  id="nick" name="nick" value="${ custData.name }" readonly="readonly">
                                            <span style="float: right;color: red;font-size: 12px" id="red2"></span>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>닉네임</label>
                                            <input type="text" class="form-control" value="${ custData.nickname }"  id="nick" name="nickname">
                                            <span style="float: right;color: red;font-size: 12px" id="red3"></span>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                       
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>휴대폰 번호</label>
                                            <input type="text" class="form-control" value="${ custData.tel }" id="tel" name="tel"></div>
                                    		<span style="float: right;color: red;font-size: 12px" id="red4"></span>
                                    </div>
                                    <div class="col-md-6">
                                       
                                    </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>새 비밀번호</label>
                                                <input type="password" class="form-control" id="pass" name="pw">
                                            </div>
                                        </div>
                                          <div class="col-md-6">
                                            <div class="form-group">
                                                <label>비밀번호 확인</label>
                                                <input type="password" class="form-control" id="pass2" name="pass2">
                                                <span style="float: right;color: red;font-size: 12px; width: 340px;" id="red5"></span>
                                            </div>
                                    </div>
                                          <div class="col-md-6">
                                            <div class="form-group">
                                                <label>우편번호</label>
                                                <button type="button" class="btn btn-default" onclick="execPostCode();"><i class="fa fa-search"></i>우편번호 찾기</button>    
                                                <input type="text" class="form-control" value="${ custData.addr }" id="zipcode" name="addr">
                                            </div>
                                    </div>
                                          <div class="col-md-6">
                                            <div class="form-group">
                                                <label>주소</label>
                                                <input type="text" class="form-control" value="${ custData.address }" id="address" name="address">
                                            </div>
                                    </div>
                                    </div>
                                  </form>
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
    
    <div class="modal fade" id="resignMemberModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
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