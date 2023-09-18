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
     <script src="https://cdnjs.cloudflare.com/ajax/libs/echarts/5.2.2/echarts.min.js"></script>
  </head>
<body>
    <!-- ======= Header ======= -->
   	<%@include file = "/WEB-INF/view/include/header_sidebar.jsp" %>
    <!-- End Sidebar-->
    </br>
    </br>
    <div style="border-bottom: 2px solid blue;">
        <img class="mb-3 square"  src="${pageContext.request.contextPath}/img/bluebox.jpg" alt="이미지 교체중입니다.">
        <h2 class="mb-4" style="display: inline-block; margin-left:8px; font-weight: bold" >   상품 비교 결과</h2>
    </div>
    </br>
    </br>
<!-- test pie chart -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
	<div style="display: flex; justify-content: space-around;">
        <!-- First Pie Chart -->
        <div>
            <h2>Type ${resultA.type}</h2>
            <canvas id="chartA" width="500" height="500"></canvas>
        </div>

        <!-- Second Pie Chart -->
        <div>
            <h2>Type ${resultB.type}</h2>
            <canvas id="chartB" width="500" height="500"></canvas>
        </div>
    </div>
		<script>
		  // First Pie Chart Data
		  const ctxA = document.getElementById('chartA');
		  new Chart(ctxA, {
		    type: 'pie',
		    data: {
		      labels: ['BOVESPA', 'EUROSTOXX', '금', 'NIFTY', 'NIKKEI', 'KOSPI', '한국10년채권', '한국3년채권', 'TWII', 'FTSE', 'NASDAQ', '미국10년채권', '미국3년채권'],
		      datasets: [{
		        label: '# of Votes',
		        data: [
		          ${resultA.br},
		          ${resultA.euro},
		          ${resultA.gold},
		          ${resultA.ind},
		          ${resultA.jp},
		          ${resultA.kor},
		          ${resultA.kor10y},
		          ${resultA.kor3y},
		          ${resultA.tw},
		          ${resultA.uk},
		          ${resultA.us},
		          ${resultA.us10y},
		          ${resultA.us3y}
		        ],
		        borderWidth: 1
		      }]
		    },
		    options: {
		      responsive: false,
		      scales: {
		        y: {
		          beginAtZero: true
		        }
		      },
		      plugins: {
		        title: {
		          display: true,
		         // First Pie Chart Title
		        }
		      }
		    }
		  });
		
		  // Second Pie Chart Data
		  const ctxB = document.getElementById('chartB');
		  new Chart(ctxB, {
		    type: 'pie',
		    data: {
		      labels: ['BOVESPA', 'EUROSTOXX', '금', 'NIFTY', 'NIKKEI', 'KOSPI', '한국10년채권', '한국3년채권', 'TWII', 'FTSE', 'NASDAQ', '미국10년채권', '미국3년채권'],
		      datasets: [{
		        label: '# of Votes',
		        data: [
		          ${resultB.br},
		          ${resultB.euro},
		          ${resultB.gold},
		          ${resultB.ind},
		          ${resultB.jp},
		          ${resultB.kor},
		          ${resultB.kor10y},
		          ${resultB.kor3y},
		          ${resultB.tw},
		          ${resultB.uk},
		          ${resultB.us},
		          ${resultB.us10y},
		          ${resultB.us3y}
		        ],
		        borderWidth: 1
		      }]
		    },
		    options: {
		      responsive: false,
		      scales: {
		        y: {
		          beginAtZero: true
		        }
		      },
		      plugins: {
		        title: {
		          display: true,
		      // Second Pie Chart Title
		        }
		      }
		    }
		  });
		</script>
<!-- test pie chart end -->
	
	<!-- ======= Footer ======= -->
    	<%@include file = "/WEB-INF/view/include/footer.jsp" %>
	<!-- End Footer -->
	
	
</body>	
</html>
