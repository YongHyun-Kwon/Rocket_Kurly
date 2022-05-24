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
<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

	<%@ include file="/WEB-INF/views/include/header.jsp" %>

<form action="setting.do" id="frm" method="post">
<div class="site-wrap">
    <div class="site-section">
        <div class="container">
            <div class="row mb-5">
                <div class="col-md-9 order-2">
                    <div class="bg-white shadow rounded-lg d-block d-sm-flex" style="height: 500px">
                        <div class="tab-content p-4 p-md-5" id="v-pills-tabContent">
                            <div class="tab-pane fade show active" id="account" role="tabpanel" aria-labelledby="account-tab">
                                <h1 class="mb-4">1:1 문의</h1>
                                 <table style="border-bottom: 1px solid #dfdfdf;">
                                	<tr style="border-bottom: 1px solid #dfdfdf;">
                                		<th>문의 제목</th>
                                		<th>문의 유형</th>
                                		<th>작성일자</th>
                                		<th>답변 여부</th>
                                	</tr>
                                	<tr >
                                		<td>반품 문의</td>
                                		<td>주문/결제/반품/교환문의</td>
                                		<td>2022-05-23</td>
                                		<td><span>완료</span></td>
                                	</tr>
                                	<tr>
                                		<td>상품 교환 문의</td>
                                		<td>주문/결제/반품/교환문의</td>
                                		<td>2022-05-24</td>
                                	</tr>
                                	<tr >
                                		<td>기타 문의</td>
                                		<td>기타 문의</td>
                                		<td>2022-05-25</td>
                                	</tr>
                                </table>
                                </div>
                                <div align="right" style="padding: 5px">
                                <input type="button" value="문의 작성">
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