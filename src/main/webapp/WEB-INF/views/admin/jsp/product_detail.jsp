<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html
        lang="en"
        class="light-style layout-menu-fixed"
        dir="ltr"
        data-theme="theme-default"
        data-assets-path="../assets/"
        data-template="vertical-menu-template-free"
>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ogani | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="../../css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="../../css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="../../css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="../../css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="../../css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="../../css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="../../css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="../../css/style.css" type="text/css">

    <style type="text/css">
		
		table tr {
		height: 200px;
		}
		
		table td{
		width: 200px
		}
		
        table tr div{
            border: 1px solid #333333;
            height: 100px;
            width: 100px;
        }

      
        .buy-now .btn-buy-now{
            box-shadow: none !important;
        }
        
        .img{
        width: 300px;
        height: 300px;

        }
        
        .products{
        
        text-align: center;
        width: 200px;
        height: 230px;
        padding: 30px
        }
        
        h6{
        padding-top: 10px
        }
        
        .container{
        display: flex;
        flex-direction : row;
        flex-wrap:wrap;
        width: 900px
        
        }
    </style>
</head>


<body>


<%@ include file="nav.jsp" %>

<div class="layout-wrapper layout-content-navbar">
    <div class="layout-container">
        <!-- Menu -->
        <%@ include file="sidemenu.jsp" %>
        <!-- / Menu -->
        <div class="layout-page">
            <!-- Content wrapper -->
            <div class="content-wrapper">
                <!-- Content -->


                <!-- 상품 전체 조회 -->
                <div style="padding-left: 50px ;width: 950px;">
               
    <!-- Product Details Section Begin -->
    <section class="product-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__pic">
                        <div class="product__details__pic__item">
                            <img class="product__details__pic__item--large"
                                src="${productData.main_img }" alt="">
                        </div>
                  
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__text">
                        <h3>${productData.name}</h3>
                        <div class="product__details__rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-half-o"></i>
                            <span>(18 reviews)</span>
                        </div>
                        <div class="product__details__price">가격 : ${productData.price}원</div>
                        <div class="product__details__price">수량 : ${productData.sales}개</div>
                        <div class="product__details__price">등록일 : ${productData.reg_dt}</div>
                        <h3>상세 설명 : ${productData.detail}</h3>
                        <div class="product__details__quantity">
                            <div class="quantity">

                            </div>
                        </div>
                       
                     
                    </div>
                     
                </div>
             
            </div>
        </div>
        
    </section>
    <a href="shoping-cart.do" class="primary-btn">뒤로가기</a>
 </div>
                
                


            </div>
        </div>
    </div>
</div>


<!-- / Content -->


<script type="text/javascript">


</script>


<!-- / Layout wrapper -->

<!-- Core JS -->
<!-- build:js assets/vendor/js/core.js -->
<script src="../assets/vendor/libs/jquery/jquery.js"></script>
<script src="../assets/vendor/libs/popper/popper.js"></script>
<script src="../assets/vendor/js/bootstrap.js"></script>
<script src="../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

<script src="../assets/vendor/js/menu.js"></script>
<!-- endbuild -->

<!-- Vendors JS -->
<script src="../assets/vendor/libs/apex-charts/apexcharts.js"></script>

<!-- Main JS -->
<script src="../assets/js/main.js"></script>

<!-- Page JS -->
<script src="../assets/js/dashboards-analytics.js"></script>

<!-- Place this tag in your head or just before your close body tag. -->
<script async defer src="https://buttons.github.io/buttons.js"></script>

</body>
</html>