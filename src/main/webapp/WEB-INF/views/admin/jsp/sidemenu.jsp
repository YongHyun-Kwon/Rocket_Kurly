<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<head>
  <meta charset="utf-8" />
  <meta
          name="viewport"
          content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
  />

  <title>Tables - Basic Tables | Sneat - Bootstrap 5 HTML Admin Template - Pro</title>

  <meta name="description" content="" />

  <!-- Favicon -->
  <link rel="icon" type="image/x-icon" href="../assets/img/favicon/favicon.ico" />

  <!-- Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link
          href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
          rel="stylesheet"
  />

  <!-- Icons. Uncomment required icon fonts -->
  <link rel="stylesheet" href="../assets/vendor/fonts/boxicons.css" />

  <!-- Core CSS -->
  <link rel="stylesheet" href="../assets/vendor/css/core.css" class="template-customizer-core-css" />
  <link rel="stylesheet" href="../assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
  <link rel="stylesheet" href="../assets/css/demo.css" />

  <!-- Vendors CSS -->
  <link rel="stylesheet" href="../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

  <!-- Page CSS -->

  <!-- Helpers -->
  <script src="../assets/vendor/js/helpers.js"></script>

  <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
  <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
  <script src="../assets/js/config.js"></script>
</head>

<aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
  <div class="app-brand demo">
    <a href="index.do" class="app-brand-link">
      <img style="width: 200px" src="../assets/img/logo.png"/>
    </a>

    <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
      <i class="bx bx-chevron-left bx-sm align-middle"></i>
    </a>
  </div>

  <div class="menu-inner-shadow"></div>

  <ul class="menu-inner py-1">
    <!-- ???????????? -->
    <li class="menu-header small text-uppercase">
      <span class="menu-header-text">????????????</span>
    </li>
    <li class="menu-item">
      <a href="index.do" class="menu-link">
        <i class="menu-icon tf-icons bx bx-home-circle"></i>
        <div data-i18n="Analytics">????????????</div>
      </a>
    </li>
    <li class="menu-item">
      <a href="create_coupon.do" class="menu-link">
        <i class="menu-icon tf-icons bx bx-dock-top"></i>
        <div data-i18n="Account Settings">????????????</div>
      </a>
    </li>



      <!-- ???????????? -->
    <li class="menu-header small text-uppercase">
      <span class="menu-header-text">????????????</span>
    </li>
    <li class="menu-item">
      <a href="javascript:void(0);" class="menu-link menu-toggle">
        <i class="menu-icon bx bxs-grid-alt"></i>
        <div data-i18n="Layouts">????????????</div>
      </a>

      <ul class="menu-sub">
        <li class="menu-item">
          <a href="all_categories.do" class="menu-link">
            <div data-i18n="Without menu">???????????? ??????</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="add_categories.do" class="menu-link">
            <div data-i18n="add_categories.jsp">???????????? ??????</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="edit_categories.do" class="menu-link">
            <div data-i18n="Without menu">???????????? ??????</div>
          </a>
        </li>
      </ul>
    </li>


    <!-- ?????? -->
    <li class="menu-header small text-uppercase">
      <span class="menu-header-text">??????</span>
    </li>
    <li class="menu-item">
      <a href="javascript:void(0);" class="menu-link menu-toggle">
        <i class="menu-icon tf-icons bx bx-cube-alt"></i>
        <div data-i18n="Layouts">??????</div>
      </a>

      <ul class="menu-sub">
        <li class="menu-item">
          <a href="all_products.do" class="menu-link">
            <div data-i18n="Without menu">?????? ??????</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="add_product.do" class="menu-link">
            <div data-i18n="Without menu">?????? ??????</div>
          </a>
        </li>
      </ul>
    </li>

    <!-- ????????? -->
    <!-- <li class="menu-header small text-uppercase">
      <span class="menu-header-text">?????????</span>
    </li>
    <li class="menu-item">
      <a href="javascript:void(0);" class="menu-link menu-toggle">
        <i class="menu-icon tf-icons bx bxs-bowling-ball"></i>
        <div data-i18n="Layouts">?????????</div>
      </a>

      <ul class="menu-sub">
        <li class="menu-item">
          <a href="add_recipe.do" class="menu-link">
            <div data-i18n="Without menu">????????? ??????</div>
          </a>
        </li>
      </ul>
    </li> -->



  <!-- ???????????? -->
  <li class="menu-header small text-uppercase">
    <span class="menu-header-text">????????????</span>
  </li>
  <li class="menu-item">
    <a href="javascript:void(0);" class="menu-link menu-toggle">
      <i class="menu-icon tf-icons bx bx-user"></i>
      <div data-i18n="Layouts">????????????</div>
    </a>

    <ul class="menu-sub">
      <li class="menu-item">
        <a href="customer.do" class="menu-link">
          <div data-i18n="Without menu">?????? ??????</div>
        </a>
      </li>
      <li class="menu-item">
        <a href="order_status.do" class="menu-link">
          <div data-i18n="Without menu">?????? ??????</div>
        </a>
      </li>
      <!-- <li class="menu-item">
        <a href="customer_grade.do" class="menu-link">
          <div data-i18n="Without navbar">?????? ??????</div>
        </a>
      </li> -->
      <li class="menu-item">
        <a href="inquiry.do" class="menu-link">
          <div data-i18n="Container">?????? ??????</div>
        </a>
      </li>
    </ul>
  </li>


</aside>