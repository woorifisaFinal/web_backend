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

    <script>
        // Pie chart data example
        var pieData = {
            labels: ["주식", "채권", "안전자산"],
            datasets: [{
                data: [30, 40, 30], // 데이터 값 설정
                backgroundColor: ["#FF6384", "#36A2EB", "#FFCE56"], // 각 섹션의 색상
                hoverBackgroundColor: ["#FF6384", "#36A2EB", "#FFCE56"]
            }]
        };

        // create pie chart
        var ctx = document.getElementById("pie-chart").getContext("2d");
        var pieChart = new Chart(ctx, {
            type: 'doughnut',
            data: pieData,
            options: {
                responsive: true,
                maintainAspectRatio: false
            }
        });
    </script>
</head>

<body>
   <!-- ======= Header ======= -->
  	<%@include file = "/WEB-INF/view/include/header_sidebar.jsp" %>
   <!-- End Sidebar-->

<!-- Main -->
<div id="main" class="container">

    <div class="col-10">
        <div class="d-flex justify-content-between" style="border-bottom: 2px solid blue;">
            <div>
                <img class="mb-3" id="square" src="${pageContext.request.contextPath}img/bluebox.jpg" alt="이미지 교체중입니다.">
                &nbsp;<h2 style="display: inline-block" class="fs-2 fw-bold" >투자성향 결과</h2>
            </div>
        </div>
    </div>
    <div id="result-container" class="col-10" style="background-color: white; padding: 20px; border-radius: 10px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);">
        <div class="row">
            <div class="col-md-6">
                <h3>투자유형:</h3>
                <div id="result"></div>
            </div>
            <div class="col-md-6">
                <h3>유형점수:</h3>
                <p id="score-p"></p>
                <script src="result.js"></script>
                <div id="score"></div>
            </div>
        </div>
        <div class="row mt-4">
            <div class="col-md-6">
                <h3>파이차트:</h3>
                <div class="chart-container">
                    <canvas id="pie-chart" width="400" height="400"></canvas>
                </div>
            </div>
            <div class="col-md-6">
                <h3>상품비교해보기:</h3>
                <a href="portfolio/comparePortfolios" class="btn btn-primary">비교하기</a>
            </div>
        </div>
    </div>
</div>
<!-- Main (div id=main) 끝 -->

    <!-- ======= Footer ======= -->
    	<%@include file = "/WEB-INF/view/include/footer.jsp" %>
	<!-- End Footer -->
</body>
</html>

<!--






-->
