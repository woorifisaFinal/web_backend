<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>

<html>
  <head>

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

    <div class="container">
      <div id="body" class="col-10" style="background-color: white">
        <div
                id="index-textbox"
                style="
                          background-color: white;
                          padding-top: 15px;
                          padding-left: 30px;
                          padding-right: 30px;
                      "
                      
        >  
          <!-- 메인 창 넘어가는 부분 -->
	          <div
	                  id="carouselExampleAutoplaying"
	                  class="carousel slide"
	                  data-bs-ride="carousel"
	                  style="justify-content: center; align-items: center; display: flex;"
	          >
	            <div class="carousel-inner">
	              <div class="carousel-item active">
	                <a href="survey">
	                  <img
	                          src="${pageContext.request.contextPath}/img/아이유_캐러셀_큰파일.png"
	                          class="d-block w-100"
	                          alt="메인아이유이미지"
	                  />
	                </a>
	              </div>
	              <div class="carousel-item">
	                <a href="symbol/list">
	                  <img
	                          src="${pageContext.request.contextPath}/img/searchstock.png"
	                          class="d-block w-100"
	                          alt="메인종목이미지"
	                  />
	                </a>
	              </div>
	            </div>
	            <button
	                    class="carousel-control-prev"
	                    type="button"
	                    data-bs-target="#carouselExampleAutoplaying"
	                    data-bs-slide="prev"
	            >
	              <span
	                      class="carousel-control-prev-icon"
	                      aria-hidden="true"
	              ></span>
	              <span class="visually-hidden">Previous</span>
	            </button>
	            <button
	                    class="carousel-control-next"
	                    type="button"
	                    data-bs-target="#carouselExampleAutoplaying"
	                    data-bs-slide="next"
	            >
	              <span
	                      class="carousel-control-next-icon"
	                      aria-hidden="true"
	              ></span>
	              <span class="visually-hidden">Next</span>
	            </button>
	          </div>

          <!-- 실험2 -->
          <div class="container" id="mid_cont_menu">
            <a href="survey">포트폴리오</a>
            <a href="portfolio/dashboard">대시보드</a>
            <a href="portfolio/comparePortfolios">상품비교</a>
            <a href="board/list">공지사항</a>
          </div>

          <table>
            <tr>
              <th colspan="8">주가지수</th>
              <th colspan="4">국채, 외국채</th>
              <th>&nbsp&nbsp금</th>
            </tr>
            <tr>
              <td>
                <a href="#">
                  <img
                          src="${pageContext.request.contextPath}/img/freepik_korea.png"
                          alt="이미지 수정 중"
                          width="50"
                          height="50"
                  />
                </a>
              </td>
              <td>
                <a href="#">
                  <img
                          src="${pageContext.request.contextPath}/img/freepik_usa.png"
                          alt="이미지 수정 중"
                          width="50"
                          height="50"
                  />
                </a>
              </td>
              <td>
                <a href="#">
                  <img
                          src="${pageContext.request.contextPath}/img/Flat_Icon_euro.png"
                          alt="이미지 수정 중"
                          width="50"
                          height="50"
                  />
                </a>
              </td>
              <td>
                <a href="#">
                  <img
                          src="${pageContext.request.contextPath}/img/By surang_UK.png"
                          alt="이미지 수정 중"
                          width="50"
                          height="50"
                  />
                </a>
              </td>
              <td>
                <a href="#">
                  <img
                          src="${pageContext.request.contextPath}/img/surang-japan-4482862.png"
                          alt="이미지 수정 중"
                          width="50"
                          height="50"
                  />
                </a>
              </td>
              <td>
                <a href="#">
                  <img
                          src="${pageContext.request.contextPath}/img/freepik_brazil-4087498.png"
                          alt="이미지 수정 중"
                          width="50"
                          height="50"
                  />
                </a>
              </td>
              <td>
                <a href="#">
                  <img
                          src="${pageContext.request.contextPath}/img/pim-mip-taiwan-8451326.png"
                          alt="이미지 수정 중"
                          width="50"
                          height="50"
                  />
                </a>
              </td>
              <td>
                <a href="#">
                  <img
                          src="${pageContext.request.contextPath}/img/free-icon-india-706256 (1).png"
                          alt="이미지 수정 중"
                          width="50"
                          height="50"
                  />
                </a>
              </td>
              <td>
                <a href="#">
                  <img
                          src="${pageContext.request.contextPath}/img/국채 3.png"
                          alt="이미지 수정 중"
                          width="50"
                          height="50"
                  />
                </a>
              </td>
              <td>
                <a href="#">
                  <img
                          src="${pageContext.request.contextPath}/img/국채 10.png"
                          alt="이미지 수정 중"
                          width="50"
                          height="50"
                  />
                </a>
              </td>
              <td>
                <a href="#">
                  <img
                          src="${pageContext.request.contextPath}/img/미국 3.png"
                          alt="이미지 수정 중"
                          width="50"
                          height="50"
                  />
                </a>
              </td>
              <td>
                <a href="#">
                  <img
                          src="${pageContext.request.contextPath}/img/미국 10.png"
                          alt="이미지 수정 중"
                          width="50"
                          height="50"
                  />
                </a>
              </td>
              <td>
                <a href="#">
                  <img
                          src="${pageContext.request.contextPath}/img/freepik_gold.png"
                          alt="이미지 수정 중"
                          width="50"
                          height="50"
                  />
                </a>
              </td>
            </tr>
          </table>
        </div>
      </div>
    </div>
    <!-- div id=body 끝 -->

    <!-- ======= Footer ======= -->
    	<%@include file = "/WEB-INF/view/include/footer.jsp" %>
	<!-- End Footer -->



  </body>
</html>