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
<style type="text/css">
th{padding: 3px; }
td{padding: 5px;}
table{width: 700px;}
span{font-weight: bold;}


		   
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
$(function () {


$("#write_inq").click(function() {
	if($("#title").val() == ""){
		alert("제목을 입력해 주세요.")
		$("#title").focus();
		event.preventDefault();
		return;
	}
	if($("#type").val() == "문의유형"){
		alert("문의유형을 선택해주세요.")
		event.preventDefault();
		return;
	}
	if($("#contents").val() == ""){
		alert("문의 내용을 입력해 주세요.")
		$("#contents").focus();
		event.preventDefault();
		return;
	}
	
	
$("#writeInquiry").submit();
 alert("문의가 등록되었습니다.");
})


})
</script>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

	<%@ include file="/WEB-INF/views/include/header.jsp" %>

<form action="write-inquiry1.do" method="post" id="writeInquiry" name="writeInquiry">
<div class="site-wrap">
    <div class="site-section">
        <div class="container">
            <div class="row mb-5">
                <div class="col-md-9 order-2">
                    <div class="bg-white shadow rounded-lg d-block d-sm-flex" style="height: 800px">
                        <div class="tab-content p-4 p-md-5" id="v-pills-tabContent">
                            <div class="tab-pane fade show active" id="account" role="tabpanel" aria-labelledby="account-tab">
                                <h1 class="mb-4">문의 작성</h1>
                                <div style="width: 700px; border: 1px soild #dfdfdf;"  >
                                	<label style="font-weight: bold">문의 제목</label>
                                <div >
                                <input id="title" name="title" type="text" placeholder="제목을 입력해주세요" style="width: 500px; border: 1px solid #dfdfdf; margin-bottom: 30px;">
                                <div style="float:right; ">
							    	<select id="type" name="type" style="width:400px; border: 1px solid #dfdfdf; height: 30px; ">
							    	<option value="문의 유형">문의 유형</option>
							    	<option value="주문/결제/반품/교환문의">주문/결제/반품/교환문의</option>
							    	<option value="이벤트/쿠폰 문의">이벤트/쿠폰 문의</option>
							    	<option value="상품 문의">상품 문의</option>
							    	<option value="배송 문의">배송 문의</option>
							    	<option value="상품 누락 문의">상품 누락 문의</option>
							    	<option value="기타 문의">기타 문의</option>
							    	</select>
                                </div>
                                </div>
                                <div>
                                </div>
                                </div>
                                <div>
                                <textarea id="contents" name="contents" placeholder="내용을 입력해주세요" style="border: 1px solid #dfdfdf; width:700px; height:500px; margin-top: 10px;"></textarea>
                                </div>
                                </div>
                                <div style="text-align: right;">
                                <input type="submit" id="write_inq" value="작성하기" >
                                </div>
                            </div>
                        </div>
                    </div>
                <%@include file="include/mypage_nav.jsp"%>
                </div>
            </div>
        </div>
    </div>
</form>

    

    

    

    

    

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