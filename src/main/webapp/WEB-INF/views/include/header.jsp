 <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="header__top__left">
                            <ul>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="header__top__right">
                            <div class="header__top__right__social">
                            </div>
                            <div class="header__top__right__auth">
                            	<% 
                            	String custID = (String)session.getAttribute("custID");
                            		if(custID == null){
                            	%>
                            	<a href="login.do"><i class="fa fa-user"></i> Login</a>
                            	<%		
                            		} else {
                            			%>
                            			 <i class="fa fa-user"></i> <%= custID %>님 안녕하세요
                            			<%
                            		}
                            	%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="index.do"><img src="http://localhost/rocketkurly/img/rocketKurly.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li><a href="index.do">홈</a></li>
                            <li><a href="shop-grid.do">상품</a></li>
                                <!-- <ul class="header__menu__dropdown">
                                    <li><a href="shop-details.do">Shop Details</a></li>
                                    <li><a href="shoping-cart.do">Shoping Cart</a></li>
                                    <li><a href="checkout.do">Check Out</a></li>
                                    <li><a href="blog-details.do">Blog Details</a></li>
                                </ul> -->
                            </li> 
                            <li class="active"><a href="blog.do">레시피</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__cart">
                        <ul>
                            <li><a href="favorite.do"><i class="fa fa-heart"></i></a></li>
                            <li><a href="shoping-cart.do"><i class="fa fa-shopping-bag"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->