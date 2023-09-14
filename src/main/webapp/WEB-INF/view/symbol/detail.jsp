<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                     /* 전체 테이블의 너비를 절반으로 줄이기 */
  .table {
    width: 50%;
    margin-left: 50px;
  }

  /* 1열의 너비를 줄이기 */
  .table th:first-child,
  .table td:first-child {
    width: 30%; /* 원하는 너비로 조정하세요 */
  }


  /* 화면 폭이 768px 미만일 때 스타일 */
  @media (max-width: 767px) {
    body {
      margin: 10px; /* 작은 화면에서는 더 좁은 공백 */
    }
  }
    /* 텍스트를 가운데 정렬하기 */
    .card-title {
    text-align: center;
  }
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
    <div style="border-bottom: 2px solid blue;" class="d-flex align-items-center">

      <img class="mb-3" id="square" src="${pageContext.request.contextPath}/img/bluebox.jpg" alt="이미지 교체중입니다.">
      <h2 class="mb-4" style="display: inline-block; margin-left: 8px; font-weight: bold;"> 종목 </h2>

    </div>
    
    <div class="card">
    <div style="flex: 1;">
          <!-- End Website Traffic Chart -->
          <div class="card">
            <div class="card-body pb-1">
              <h5 class="card-title">수익률 차트</h5>
      
              
              <!-- Area Chart -->
              <div id="areaChart" style="width: 100%;"></div>
  
            <script>
          
  document.addEventListener("DOMContentLoaded", () => {
    // 'symbols' 리스트에서 데이터 추출
    const closePrices = [];
    const dates = [];
    <c:forEach items="${symbols}" var="symbol">
      closePrices.push(${symbol.close});
      dates.push("${symbol.date}");
    </c:forEach>
    // symbolDetail을 JavaScript 객체로 사용
    var symbolDetail = "<c:out value='${symbolDetail.name}' />";

    // 그래프 생성
    new ApexCharts(document.querySelector("#areaChart"), {
      series: [
        {
          name: symbolDetail,
          data: closePrices
        }
      ],
      chart: {
        type: 'area',
        height: 350,
        zoom: {
          enabled: false
        }
      },
      dataLabels: {
        enabled: false
      },
      stroke: {
        curve: 'smooth'
      },
      subtitle: {
        text: 'Price Movements',
        align: 'left'
      },
      labels: dates,
      xaxis: {
        type: 'datetime',
      },
      yaxis: {
        opposite: true
      },
      legend: {
        horizontalAlign: 'left'
      }
    }).render();
  });
</script>
  
              </div>
       
            </div>
          </div>
      <div class="card-body d-flex">
        <div style="flex: 4;">
          <!-- Primary Color Bordered Table -->
                 <table class="table table-bordered border-2 border-primary">
    <tr>
        <th>Date</th>
        <th>Open</th>
        <th>Close</th>
        <th>High</th>
        <th>Low</th>
       
    </tr>
    <c:forEach items="${symbols}" var="symbol">
        <tr>
            <td>${symbol.date}</td>
            <td>${symbol.open}</td>
            <td>${symbol.close}</td>
            <td>${symbol.high}</td>
            <td>${symbol.low}</td>
            <!-- 다른 컬럼 추가 -->
        </tr>
    </c:forEach>
</table>
          <!-- End Primary Color Bordered Table -->
        </div>
 
          <!-- Website Traffic Chart -->
          <div class="card-body pb-0">
            <h5 class="card-title">ㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤ수익률 <span>|</span></h5>
            <div id="trafficChart" style="min-height: 400px;" class="echart"></div>
            <script>
              document.addEventListener("DOMContentLoaded", () => {
                echarts.init(document.querySelector("#trafficChart")).setOption({
                  tooltip: {
                    trigger: 'item'
                  },
                  legend: {
                    top: '5%',
                    left: 'center'
                  },
                  series: [{
                    name: 'Access From',
                    type: 'pie',
                    radius: ['40%', '70%'],
                    avoidLabelOverlap: false,
                    label: {
                      show: false,
                      position: 'center'
                    },
                    emphasis: {
                      label: {
                        show: true,
                        fontSize: '18',
                        fontWeight: 'bold'
                      }
                    },
                    labelLine: {
                      show: false
                    },
                    data: [{
                      value: 1048,
                      name: 'Search Engine'
                    },
                    {
                      value: 735,
                      name: 'Direct'
                    },
                    {
                      value: 580,
                      name: 'Email'
                    },
                    {
                      value: 484,
                      name: 'Union Ads'
                    },
                    {
                      value: 300,
                      name: 'Video Ads'
                    }
                    ]
                  }]
                });
              });
            </script>
            </div>
          </div>
          

        </div>
   
    
<br /><br /><br />
<!-- Main (div id=main) 끝 -->

    <!-- ======= Footer ======= -->
    	<%@include file = "/WEB-INF/view/include/footer.jsp" %>
	<!-- End Footer -->
</body>
</html>

<!--
${pageContext.request.contextPath}





-->
