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
                                <h1 class="mb-4">주문 내역 조회</h1>
                                <table>
                                	<tr>
                                		<th>상품 정보</th>
                                		<th>주문 일자</th>
                                		<th>주문 번호</th>
                                		<th>주문 금액(수량)</th>
                                		<th>주문 상태</th>
                                	</tr>
                                	<tr style="border-top: 1px solid #dfdfdf;">
                                		<td>바나나</td>
                                		<td>2022-05-23</td>
                                		<td>12345</td>
                                		<td>1500원(1)</td>
                                		<td>배송중</td>
                                		<td><input type="button" value="1:1문의"/></td>
                                	</tr>
                                	<tr>
                                	<td>토마호크 스테이크</td>
                                		<td>2022-05-23</td>
                                		<td>12346</td>
                                		<td>30000원(1)</td>
                                		<td>배송완료</td>
                                		<td><input type="button" value="1:1문의"/></td>
                                		<td><a href="write-inquiry.do"><input type="button" value="리뷰쓰기"/></a></td>
                                	</tr>
                                	<tr>
                                	<td>닭강정</td>
                                		<td>2022-05-24</td>
                                		<td>12347</td>
                                		<td>9800원(1)</td>
                                		<td>배송준비중</td>
                                		<td><input type="button" value="1:1문의"/></td>
                                	</tr>
                                </table>
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