<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%> <%@page import="java.util.*"%>

<html>
  <head>
  <!-- Favicons -->
  <link
          href="${pageContext.request.contextPath}/img/favicon.png"
          rel="icon"
  />
  <link
          href="${pageContext.request.contextPath}/img/apple-touch-icon.png"
          rel="apple-touch-icon"
  />

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect" />
  <link
          href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
          rel="stylesheet"
  />

  <!-- Vendor CSS Files -->
  <link
          href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css"
          rel="stylesheet"
  />
  <link
          href="${pageContext.request.contextPath}/vendor/bootstrap-icons/bootstrap-icons.css"
          rel="stylesheet"
  />
  <link
          href="${pageContext.request.contextPath}/vendor/boxicons/css/boxicons.min.css"
          rel="stylesheet"
  />
  <link
          href="${pageContext.request.contextPath}/vendor/quill/quill.snow.css"
          rel="stylesheet"
  />
  <link
          href="${pageContext.request.contextPath}/vendor/quill/quill.bubble.css"
          rel="stylesheet"
  />
  <link
          href="${pageContext.request.contextPath}/vendor/remixicon/remixicon.css"
          rel="stylesheet"
  />
  <link
          href="${pageContext.request.contextPath}/vendor/simple-datatables/style.css"
          rel="stylesheet"
  />

  <!-- Template Main CSS File -->
  <link
          href="${pageContext.request.contextPath}/css/style.css"
          rel="stylesheet"
  />

  <!-- =======================================================
* Template Name: NiceAdmin
* Updated: May 30 2023 with Bootstrap v5.3.0
* Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
* Author: BootstrapMade.com
* License: https://bootstrapmade.com/license/
======================================================== -->
  <meta charset="utf-8" />
  <meta content="width=device-width, initial-scale=1.0" name="viewport" />

  <title>Final Project</title>
  <meta content="" name="description" />
  <meta content="" name="keywords" />
  <style>
    .custom-button-group {
      display: flex;
      justify-content: flex-end;
      margin-top: -40px; /* 버튼을 위로 올리는 여백 조정 */
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
</head>

  <body>
<!-- ======= Header ======= -->
    <header id="header" class="header fixed-top d-flex align-items-center">
  <div class="d-flex align-items-center justify-content-between">
    <i
            class="bi bi-list toggle-sidebar-btn"
            style="float: left; margin-right: 30px"
    ></i>
    <a href="main" class="logo d-flex align-items-center">
      <img src="${pageContext.request.contextPath}img/logo.png" alt="" />
      <span class="d-none d-lg-block">우리FISA</span>
    </a>
  </div>
  <!-- End Logo -->

  <div class="col-10">
    <div class="container">
      <div class="row">
        <div class="col-8">
          <%-- Search Bar--%>
          <div class="search-bar d-flex justify-content-start">
            <form
                    class="search-form d-flex align-items-center"
                    method="post"
                    action="symbol/search"
            >
              <%-- name으로 준 keyword에 담아서 서버로 전달한다--%>
              <input
                      type="text"
                      name="keyword"
                      placeholder="종목을 검색하세요"
                      title="Enter search keyword"
                      class="form-control form-control-sm"
              />
              <button type="submit" title="Search">
                <i class="bi bi-search"></i>
              </button>
            </form>
          </div>
          <!-- End Search Bar -->
        </div>
        <div class="col-4 text-end"></div>
      </div>
      <div class="d-flex custom-button-group">
        <a
                href="user/login"
                class="btn btn-custom"
                style="
								height: 45px;
								margin-right: 10px;
								color: grey;
								font-size: 14px;
							"
        >
          로그인
        </a>
        <a
                href="user/signup"
                class="btn btn"
                style="height: 45px; color: grey; font-size: 14px"
        >
          회원가입
        </a>
      </div>
    </div>
  </div>
</header>
<!-- End Header -->

<!-- ======= Sidebar ======= -->
    <aside id="sidebar" class="sidebar">
  <ul class="sidebar-nav" id="sidebar-nav">
    <li class="nav-item">
      <a
              class="nav-link"
              href="portfolio/dashboard"
      >
        <i class="bi bi-grid"></i>
        <span>대시보드</span>
      </a>
    </li>
    <!-- End Dashboard Nav -->

    <li class="nav-item">
      <a
              class="nav-link collapsed"
              data-bs-target="#components-nav"
              data-bs-toggle="collapse"
              href="#"
      >
        <i class="bi bi-graph-up"></i><span>종목</span
      ><i class="bi bi-chevron-down ms-auto"></i>
      </a>
      <ul
              id="components-nav"
              class="nav-content collapse"
              data-bs-parent="#sidebar-nav"
      >
        <li>
          <a href="symbol/detail">
            <i class="bi bi-circle"></i><span>코스피</span>
          </a>
        </li>
        <li>
          <a href="symbol/detail">
            <i class="bi bi-circle"></i><span>나스닥</span>
          </a>
        </li>
        <li>
          <a href="symbol/detail">
            <i class="bi bi-circle"></i><span>유로 스탁스</span>
          </a>
        </li>

        <li>
          <a href="symbol/detail">
            <i class="bi bi-circle"></i><span>영국</span>
          </a>
        </li>
        <li>
          <a href="symbol/detail">
            <i class="bi bi-circle"></i><span>니케이</span>
          </a>
        </li>
        <li>
          <a href="symbol/detail">
            <i class="bi bi-circle"></i><span>국채 3년</span>
          </a>
        </li>
        <li>
          <a href="symbol/detail">
            <i class="bi bi-circle"></i><span>국채 10년</span>
          </a>
        </li>
        <li>
          <a href="symbol/detail">
            <i class="bi bi-circle"></i><span>미국채 3년</span>
          </a>
        </li>
        <li>
          <a href="symbol/detail">
            <i class="bi bi-circle"></i><span>미국채 10년</span>
          </a>
        </li>
        <li>
          <a href="symbol/detail">
            <i class="bi bi-circle"></i><span>금</span>
          </a>
        </li>
        <li>
          <a href="symbol/detail">
            <i class="bi bi-circle"></i><span>브라질</span>
          </a>
        </li>
        <li>
          <a href="symbol/detail">
            <i class="bi bi-circle"></i><span>대만</span>
          </a>
        </li>
        <li>
          <a href="symbol/detail">
            <i class="bi bi-circle"></i><span>인도</span>
          </a>
        </li>
      </ul>
    </li>
    <!-- End Components Nav -->
    <li class="nav-item">
      <a class="nav-link collapsed" href="portfolio/comparePortfolios">
        <i class="bi bi-layout-text-window-reverse"></i
        ><span>상품비교함</span>
      </a>
    </li>

    <li class="nav-item">
      <a class="nav-link collapsed" href="board/list">
        <i class="bi bi-bar-chart"></i><span>공지사항</span>
      </a>
    </li>
    <li class="nav-item">
      <a class="nav-link collapsed" href="survey">
        <i class="bi bi-card-checklist"></i><span>투자 성향 설문조사</span>
      </a>
    </li>
  </ul>
</aside>
<!-- End Sidebar-->

<!-- Main -->
    <div id="main" class="container">


      <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

              <div class="d-flex justify-content-center py-4">
                <a href="main" class="logo d-flex align-items-center w-auto">
                  <img src="${pageContext.request.contextPath}img/logo.png" alt="">
                  <span class="d-none d-lg-block">우리FISA</span>
                </a>
              </div><!-- End Logo -->

              <div class="card mb-3">

                <div class="card-body">

                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">회원가입</h5>

                  </div>

                  <form class="row g-3 needs-validation" novalidate action="user/signup" method="post">
                    <div class="col-12">
                      <label for="yourName" class="form-label">이름</label>
                      <input type="text" name="userName" class="form-control" id="yourName" required>
                      <div class="invalid-feedback">이름을 입력하세요.</div>
                    </div>

                    <div class="col-12">
                      <label for="yourEmail" class="form-label">이메일</label>
                      <input type="email" name="userEmail" class="form-control" id="yourEmail" required>
                      <div class="invalid-feedback">이메일을 입력하세요.</div>
                    </div>

                    <div class="col-12">
                      <label for="yourUsername" class="form-label">닉네임</label>
                      <div class="input-group has-validation">
                        <span class="input-group-text" id="inputGroupPrepend">@</span>
                        <input type="text" name="userId" class="form-control" id="yourUsername" required>
                        <div class="invalid-feedback">아이디를 입력하세요.</div>
                      </div>
                    </div>

                    <div class="col-12">
                      <label for="yourPassword" class="form-label">비밀번호</label>
                      <input type="password" name="userPw" class="form-control" id="yourPassword" required>
                      <div class="invalid-feedback">비밀번호를 입력하세요.</div>
                    </div>

                    <div class="col-12">
                      <div class="form-check">
                        <input class="form-check-input" name="terms" type="checkbox" value="" id="acceptTerms" required>
                        <label class="form-check-label" for="acceptTerms">이용약관에 <a href="#">동의합니다</a></label>
                        <div class="invalid-feedback">체크해주세요.</div>
                      </div>
                    </div>
                    <div class="col-12">
                      <button class="btn btn-primary w-100" type="submit">확인</button>
                    </div>
                    <div class="col-12">
                      <p class="small mb-0">이미 계정이 있으신가요? <a href="user/login">로그인</a></p>
                    </div>
                  </form>

                </div>
              </div>


            </div>
          </div>
        </div>

      </section>
    </div>
<!-- Main (div id=main) 끝 -->

    <!-- ======= Footer ======= -->
    	<%@include file = "/WEB-INF/view/include/footer.jsp" %>
	<!-- End Footer -->
  </body>
</html>

<!--






-->
