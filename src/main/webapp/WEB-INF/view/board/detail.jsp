<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
  	<%@include file = "/WEB-INF/view/include/header_sidebar.jsp" %>
   <!-- End Sidebar-->

<!-- Main -->
<div class="container" >

	<div class="d-flex justify-content-between" style="border-bottom: 2px solid blue; margin-top: 10px">
      <div>
        <img class="mb-3" id="square" src="${pageContext.request.contextPath}/img/bluebox.jpg" alt="이미지 교체중입니다.">
        &nbsp;<h2 style="display: inline-block" class="fs-2 fw-bold" >공지사항</h2>
      </div>

    </div>
  <br>
  <div style="border: 2px solid rgb(240, 240,240);">
    <br>
    <h3 class="fw-bold" style="padding-left:80px;">&nbsp;&nbsp;${board.title }</h3>
    <div class="d-flex justify-content-end">
      <p class="d-flex align-items-end" style="color: rgb(140,140,140); margin-right:100px">
        게시글 번호 : ${board.no }
      </p>

    </div>

    <br>
    <br>
    <p class="h6" style="padding-left:100px;padding-right:100px;font-size:20px">${board.content}</p>
    </br>
    <br>
  </div>


</div>
<!-- Main (div id=main) 끝 -->

    <!-- ======= Footer ======= -->
    	<%@include file = "/WEB-INF/view/include/footer.jsp" %>
	<!-- End Footer -->

</body>
</html>

<!--
${pageContext.request.contextPath}





-->
