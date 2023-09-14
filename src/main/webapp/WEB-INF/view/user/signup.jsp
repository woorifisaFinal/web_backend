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
  <%@include file = "/WEB-INF/view/include/header_sidebar.jsp" %>

<!-- Main -->
    <div class="container" style="margin-top: -100px">
      <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

              <div class="d-flex justify-content-center py-4">
                <a href="/main" class="logo d-flex align-items-center w-auto">
                  <img src="${pageContext.request.contextPath}/img/logo.png" alt="">
                  <span class="d-none d-lg-block">우리FISA</span>
                </a>
              </div><!-- End Logo -->

              <div class="card mb-3">

                <div class="card-body">

                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">회원가입</h5>

                  </div>

                  <form class="row g-3 needs-validation" novalidate action="/user/signup" method="post">
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
                      <label for="yourUsername" class="form-label">ID</label>
                      <div class="input-group has-validation">
<%--                        <span class="input-group-text" id="inputGroupPrepend">@</span>--%>
                        <input type="text" name="userId" class="form-control" id="yourUsername" required>
                        <div class="invalid-feedback">아이디를 입력하세요.</div>
                      </div>
                    </div>

                    <div class="col-12">
                      <label for="yourPassword" class="form-label">비밀번호</label>
                      <input type="password" name="password" class="form-control" id="yourPassword" required>
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
                      <p class="small mb-0">이미 계정이 있으신가요? <a href="/user/login">로그인</a></p>
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
