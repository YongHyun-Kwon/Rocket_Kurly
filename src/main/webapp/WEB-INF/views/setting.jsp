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