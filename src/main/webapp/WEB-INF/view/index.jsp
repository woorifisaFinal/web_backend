<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@page import="java.util.*"%>
<html lang="en">

<head>

  <!-- Favicons -->
  <link href="${pageContext.request.contextPath}img/favicon.png" rel="icon">
  <link href="${pageContext.request.contextPath}img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
	<link href="${pageContext.request.contextPath}vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}vendor/quill/quill.snow.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}vendor/quill/quill.bubble.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}vendor/remixicon/remixicon.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="${pageContext.request.contextPath}css/style.css" rel="stylesheet">

  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Final Project</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

<%--  <!-- Favicons -->--%>
<%--  <link href="assets/img/favicon.png" rel="icon">--%>
<%--  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">--%>

  <!-- Google Fonts -->
<%--  <link href="https://fonts.gstatic.com" rel="preconnect">--%>
<%--  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">--%>

  <!-- Vendor CSS Files -->
<%--  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">--%>
<%--  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">--%>
<%--  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">--%>
<%--  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">--%>
<%--  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">--%>
<%--  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">--%>
<%--  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">--%>

  <!-- Template Main CSS File -->
<%--  <link href="assets/css/style.css" rel="stylesheet">--%>

  <!-- =======================================================

    
  * Template Name: Resi
  * Updated: Aug 30 2023 with Bootstrap v5.3.1
  * Template URL: https://bootstrapmade.com/resi-free-bootstrap-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
  <style>
    body, html {
      height: 100%;
      margin: 0;
      padding: 0;
      overflow: hidden;
      background-color: white; /* 바탕색을 흰색으로 설정 */
    }
  
    #hero {
      height: 100%;
      display: flex;
      align-items: center;
    }
  
    #hero .container {
      width: 100%;
      padding: 0;
    }
  
    #hero .col-lg-6 {
      height: 100%;
      display: flex;
      flex-direction: column;
      justify-content: center;
      text-align: center; /* 가운데 정렬을 위해 추가 */
    }
  
    #hero h1 {
      font-size: 36px;
      margin-bottom: 15px;
    }
  
    #hero ul {
      list-style: none;
      padding-left: 0;
    }
  
    #hero ul li {
      margin-bottom: 10px;
    }
  
    #hero .btn-get-started {
      margin-top: 20px;
    }
  
    #hero .hero-img {
      height: 100%;
      display: flex;
      align-items: center;
    }
  
    #hero img {
      max-height: 100%;
    }
    #hero .btn-get-started {
    display: inline-block; /* 인라인 블록 요소로 변경 */
    padding: 10px 30px; /* 버튼 패딩 조정 */
    font-size: 18px; /* 버튼 폰트 크기 조정 */
    background-color: #007bff; /* 버튼 배경색 설정 */
    color: white; /* 버튼 글자색 설정 */
    border: none; /* 버튼 테두리 없애기 */
    border-radius: 5px; /* 버튼 테두리 둥글게 설정 */
    margin-top: 20px;
    text-decoration: none; /* 링크 텍스트 밑줄 제거 */
  }

  #hero .btn-get-started:hover {
    background-color: #0056b3; /* 버튼 호버 시 배경색 변경 */
  }
  .btn-get-started {
    margin-right: 10px; /* 원하는 간격 크기로 조절하세요 */
}
  </style>

</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <a href="/main" class="logo d-flex align-items-center">
        <img src="${pageContext.request.contextPath}/img/logo.png" alt="">
        <span class="d-none d-lg-block">우리FISA</span>
      </a>
    </div><!-- End Logo -->

  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center">

    <div class="container">
      <div class="row">
        <div class="col-lg-6 pt-2 pt-lg-0 order-2 order-lg-1 d-flex flex-column justify-content-center">
          <h1> </h1>
          <h1> </h1>
          <h1> </h1>
          <h1> </h1>
          <h1> </h1>
          <h1> </h1>
          <h1>나누리</h1>
          <h1> </h1>
          <h1> </h1>
          <h1> </h1>
          <h1> </h1>
          <h1> </h1>
        
          <ul>
            <li><i class="ri-check-line"></i> 금융 및 공공데이터를 활용해 최적의 투자 포트폴리오 추천 전략</li>
            <li><i class="ri-check-line"></i> 투자 성향에 따라 여러 자산에 대한 종목별 투자비율을 효율적 배분</li>
            
            <li><i class="ri-check-line"></i> 향후 은행권 상품 추천 서비스와 연계할 수 있는 확장된 서비스</li>
          </ul>
          <div class="mt-3">
            <a href="/survey" class="btn btn-lg btn-get-started scrollto">나누리 시작하기</a>


          </div>
          <div class="mt-3">
            <a href="/main" class=" btn btn-light scrollto">홈페이지</a>
          </div>

        </div>
        <div class="col-lg-6 order-1 order-lg-2 hero-img">
          <img src="${pageContext.request.contextPath}/img/hero-img.png" class="img-fluid" alt="">
        </div>
      </div>
    </div>

  </section><!-- End Hero -->

  <main id="main">

   
    </section><!-- End About Section -->

    <!-- ======= Why Us Section ======= -->

    
    

    

   
    <!-- ======= Team Section ======= -->
    <!-- <section id="team" class="team section-bg">
      <div class="container">

        <div class="section-title">
          <h2>Team</h2>
          <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
        </div>

        <div class="row">

          <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
            <div class="member">
              <div class="member-img">
                <img src="assets/img/team/team-1.jpg" class="img-fluid" alt="">
                <div class="social">
                  <a href=""><i class="bi bi-twitter"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
              <div class="member-info">
                <h4>Walter White</h4>
                <span>Chief Executive Officer</span>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
            <div class="member">
              <div class="member-img">
                <img src="assets/img/team/team-2.jpg" class="img-fluid" alt="">
                <div class="social">
                  <a href=""><i class="bi bi-twitter"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
              <div class="member-info">
                <h4>Sarah Jhonson</h4>
                <span>Product Manager</span>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
            <div class="member">
              <div class="member-img">
                <img src="assets/img/team/team-3.jpg" class="img-fluid" alt="">
                <div class="social">
                  <a href=""><i class="bi bi-twitter"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
              <div class="member-info">
                <h4>William Anderson</h4>
                <span>CTO</span>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
            <div class="member">
              <div class="member-img">
                <img src="assets/img/team/team-4.jpg" class="img-fluid" alt="">
                <div class="social">
                  <a href=""><i class="bi bi-twitter"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
              <div class="member-info">
                <h4>Amanda Jepson</h4>
                <span>Accountant</span>
              </div>
            </div>
          </div>

        </div>

      </div>
    </section>End Team Section -->

   
 
  </main><!-- End #main -->


  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="${pageContext.request.contextPath}vendor/apexcharts/apexcharts.min.js"></script>
  <script src="${pageContext.request.contextPath}vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="${pageContext.request.contextPath}vendor/chart.js/chart.umd.js"></script>
  <script src="${pageContext.request.contextPath}vendor/echarts/echarts.min.js"></script>
  <script src="${pageContext.request.contextPath}vendor/quill/quill.min.js"></script>
  <script src="${pageContext.request.contextPath}vendor/simple-datatables/simple-datatables.js"></script>
  <script src="${pageContext.request.contextPath}vendor/tinymce/tinymce.min.js"></script>
  <script src="${pageContext.request.contextPath}vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>


</body>

</html>