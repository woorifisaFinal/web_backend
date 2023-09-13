<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>

<html>
  <head>
  <link href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <script src="${pageContext.request.contextPath}/your-new-path/echarts.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/main.js"></script>
        <script src="${pageContext.request.contextPath}/cdn.jsdelivr.net/npm/echarts@5.3.2/dist/echarts.min.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/echarts@5.3.2/dist/echarts.min.js"></script>
    <!-- Favicons -->
    <link href="${pageContext.request.contextPath}/img/favicon.png" rel="icon">
    <link href="${pageContext.request.contextPath}/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.gstatic.com" rel="preconnect">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
      <link href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
      <link href="${pageContext.request.contextPath}/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
      <link href="${pageContext.request.contextPath}/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
      <link href="${pageContext.request.contextPath}/vendor/quill/quill.snow.css" rel="stylesheet">
      <link href="${pageContext.request.contextPath}/vendor/quill/quill.bubble.css" rel="stylesheet">
      <link href="${pageContext.request.contextPath}/vendor/remixicon/remixicon.css" rel="stylesheet">
      <link href="${pageContext.request.contextPath}/vendor/simple-datatables/style.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">


  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.18.0/font/bootstrap-icons.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">


 <!-- ECharts 라이브러리 스크립트 추가 -->
    <script src="${pageContext.request.contextPath}/cdn.jsdelivr.net/npm/echarts@5.3.2/dist/echarts.min.js"></script>

    <!-- 스타일 시트 및 다른 리소스 경로 추가 -->
    <link href="${pageContext.request.contextPath}/img/favicon.png" rel="icon">
    <link href="${pageContext.request.contextPath}/img/apple-touch-icon.png" rel="apple-touch-icon">
    <link href="https://fonts.gstatic.com" rel="preconnect">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/vendor/quill/quill.snow.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/vendor/quill/quill.bubble.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/vendor/simple-datatables/style.css" rel="stylesheet">


    <!-- =======================================================
    * Template Name: NiceAdmin
    * Updated: May 30 2023 with Bootstrap v5.3.0
    * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
    * Author: BootstrapMade.com
    * License: https://bootstrapmade.com/license/
    ======================================================== -->
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Final Project</title>
    <meta content="" name="description">
    <meta content="" name="keywords">
    <style>
      .custom-button-group {
        display: flex;
        justify-content: flex-end;
        margin-top: -30px; /* 버튼을 위로 올리는 여백 조정 */
      }
               /* 모달 스타일링 */
        /* 모달 스타일링 */
        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.7);
        }

        .modal-content {
            background-color: #fefefe;
            margin: 15% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
            max-width: 600px;
            text-align: center;
        }

        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }

        /* 버튼 디자인 수정 */
        .detail-button {
            background-color: rgba(17, 113, 193, 1); /* 색상 변경 */
            border: none;
            color: white;
            padding: 25px 30px; /* 크기 조절 */
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 14px; /* 폰트 크기 조절 */
            margin: 10px 90px;
            cursor: pointer;
            border-radius: 100px;

        }

        .detail-button:hover {
            background-color: rgba(17, 113, 193, 0.5); /* 호버 시 색상 변경 */
        }

    </style>
    <!-- Vendor JS Files -->
    <script src="${pageContext.request.contextPath}/vendor/apexcharts/apexcharts.min.js"></script>
    <script src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/vendor/chart.js/chart.umd.js"></script>
    <script src="${pageContext.request.contextPath}/vendor/echarts/echarts.min.js"></script>
    <script src="${pageContext.request.contextPath}/vendor/quill/quill.min.js"></script>
    <script src="${pageContext.request.contextPath}/vendor/simple-datatables/simple-datatables.js"></script>
    <script src="${pageContext.request.contextPath}/vendor/tinymce/tinymce.min.js"></script>
    <script src="${pageContext.request.contextPath}/vendor/php-email-form/validate.js"></script>

    <!-- Template Main JS File -->
    <script src="${pageContext.request.contextPath}/js/main.js"></script>
      <!-- Vendor JS Files -->
  <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.umd.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.min.js"></script>
  <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
    
  </head>

  <body>

    <!-- ======= Header ======= -->
    <header id="header" class="header fixed-top d-flex align-items-center">

      <div class="d-flex align-items-center justify-content-between">
        <i class="bi bi-list toggle-sidebar-btn" style="float: left; margin-right: 30px;"></i>
        <a href="/main" class="logo d-flex align-items-center">
          <img src="${pageContext.request.contextPath}/img/logo.png" alt="">
          <span class="d-none d-lg-block">우리FISA</span>
        </a>
      </div><!-- End Logo -->

      <div class="col-10">
        <div class="container">
          <div class="row">
            <div class="col-8">
  <%--            Search Bar--%>
              <div class="search-bar d-flex justify-content-start">

                <form class="search-form d-flex align-items-center" method="get" action="/symbol/search">
<%--                    name으로 준 keyword에 담아서 서버로 전달한다--%>
                    <input type="text" name="keyword" placeholder="종목을 검색하세요" title="Enter search keyword" class="form-control form-control-sm">
                    <button type="submit" title="Search"><i class="bi bi-search"></i></button>
                </form>
              </div>
              <!-- End Search Bar -->
            </div>
            <div class="col-4 text-end"></div>
            <!-- My Page Link -->
            <c:if test="${sessionScope.loginUser != null}">
            <div class="d-flex custom-button-group">
              <a href="/user/mypage" class="btn btn-custom" style="height: 45px; margin-right: 10px; color: grey; font-size: 14px;">
                마이페이지
                <a href="/user/logout" class="btn btn-custom" style="height: 45px; margin-right: 10px; color: grey; font-size: 14px;">
                  로그아웃
              </a>
              </c:if>
              <!-- End My Page Link -->
            </div>
          </div>
          <c:if test="${sessionScope.loginUser == null}">
<div class="custom-button-group">
    <a href="/user/login" class="btn btn-custom" style="height: 45px; margin-right: 10px; color: grey; font-size: 14px; margin-left: 120px;">
        로그인
    </a>
    <a href="/user/signup" class="btn btn" style="height: 45px; margin-right: 10px; color: grey; font-size: 14px;margin-right: 120px">
        회원가입
    </a>
</div>
          </c:if>
        </div>
    </header><!-- End Header -->


  <!-- ======= Sidebar ======= -->
    <aside id="sidebar" class="sidebar">
      <ul class="sidebar-nav" id="sidebar-nav">
        <li class="nav-item">
          <a class="nav-link " href="/portfolio/dashboard" >
            <i class="bi bi-grid"></i>
            <span>대시보드</span>
          </a>
        </li><!-- End Dashboard Nav -->

        <li class="nav-item">
          <a
                  class="nav-link collapsed"
                  data-bs-target="#components-nav"
                  data-bs-toggle="collapse"
                  href="/symbol/list"
          >
            <i class="bi bi-graph-up"></i><span>종목</span
          ><i class="bi bi-chevron-down ms-auto"></i>
          </a>
          <ul  id="components-nav" class=" nav-content collapse " data-bs-parent="#sidebar-nav">
            <li>
              <a href="/symbol/detail?id=100">
                <i class="bi bi-circle"></i><span>NASDAQ</span>
              </a>
            </li>
            <li>
              <a href="/symbol/detail?id=101">
                <i class="bi bi-circle"></i><span>FTSE</span>
              </a>
            </li>
            <li>
              <a href="/symbol/detail?id=102">
                <i class="bi bi-circle"></i><span>NIKKEI</span>
              </a>
            </li>

            <li>
              <a href="/symbol/detail?id=103">
                <i class="bi bi-circle"></i><span>EURO STOXX</span>
              </a>
            </li>
            <li>
              <a href="/symbol/detail?id=104">
                <i class="bi bi-circle"></i><span>KOSPI</span>
              </a>
            </li>
            <li>
              <a href="/symbol/detail?id=105">
                <i class="bi bi-circle"></i><span>NIFTY</span>
              </a>
            </li>
            <li>
              <a href="/symbol/detail?id=106">
                <i class="bi bi-circle"></i><span>TWII</span>
              </a>
            </li>
            <li>
              <a href="/symbol/detail?id=107">
                <i class="bi bi-circle"></i><span>BOVESPA</span>
              </a>
            </li>
            <li>
              <a href="/symbol/detail?id=108">
                <i class="bi bi-circle"></i><span>한국3년채권</span>
              </a>
            </li>
            <li>
              <a href="/symbol/detail?id=109">
                <i class="bi bi-circle"></i><span>한국10년채권</span>
              </a>
            </li>
            <li>
              <a href="/symbol/detail?id=110">
                <i class="bi bi-circle"></i><span>미국3년채권</span>
              </a>
            </li>
            <li>
              <a href="/symbol/detail?id=111">
                <i class="bi bi-circle"></i><span>미국10년채권</span>
              </a>
            </li>
            <li>
              <a href="/symbol/detail?id=112">
                <i class="bi bi-circle"></i><span>금</span>
              </a>
            </li>

          </ul>
        </li>
        <!-- End Components Nav -->
        <li class="nav-item">
          <a class="nav-link collapsed" href="/portfolio/comparePortfolios">
            <i class="bi bi-layout-text-window-reverse"></i><span>상품비교하기</span>
          </a>
        </li>

        <li class="nav-item">
          <a class="nav-link collapsed" href="/board/list">
              <i class="bi bi-bar-chart"></i><span>공지사항</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link collapsed" href="/survey">
            <i class="bi bi-card-checklist"></i><span>투자 성향 설문조사</span>
          </a>
        </li>
      </ul>
    </aside>
    <!-- End Sidebar-->
    <br>

  </body>
</html>