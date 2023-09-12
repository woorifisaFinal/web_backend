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
      <div class="card-body d-flex">
        <div style="flex: 4;">
          <!-- Primary Color Bordered Table -->
          <table class="table table-bordered border-2 border-primary">
        <tr>
            <th>Date</th>
            <th>US Open</th>
            <!-- 다른 컬럼 추가 -->
        </tr>
        <c:forEach items="${nasdaqList}" var="nasdaq">
            <tr>
                <td>${nasdaq.date}</td>
                <td>${nasdaq.usOpen}</td>
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
          <div style="flex: 1;">
          <!-- End Website Traffic Chart -->
          <div class="card">
            <div class="card-body pb-1">
              <h5 class="card-title">수익률 차트</h5>
              <!-- Area Chart -->
              <div id="areaChart" style="width: 100%;"></div>
  
                <script>
                  document.addEventListener("DOMContentLoaded", () => {
                    const series = {
                      "monthDataSeries1": {
                        "prices": [
                          8107.85,
                          8128.0,
                          8122.9,
                          8165.5,
                          8340.7,
                          8423.7,
                          8423.5,
                          8514.3,
                          8481.85,
                          8487.7,
                          8506.9,
                          8626.2,
                          8668.95,
                          8602.3,
                          8607.55,
                          8512.9,
                          8496.25,
                          8600.65,
                          8881.1,
                          9340.85
                        ],
                        "dates": [
                          "13 Nov 2017",
                          "14 Nov 2017",
                          "15 Nov 2017",
                          "16 Nov 2017",
                          "17 Nov 2017",
                          "20 Nov 2017",
                          "21 Nov 2017",
                          "22 Nov 2017",
                          "23 Nov 2017",
                          "24 Nov 2017",
                          "27 Nov 2017",
                          "28 Nov 2017",
                          "29 Nov 2017",
                          "30 Nov 2017",
                          "01 Dec 2017",
                          "04 Dec 2017",
                          "05 Dec 2017",
                          "06 Dec 2017",
                          "07 Dec 2017",
                          "08 Dec 2017"
                        ]
                      },
                      "monthDataSeries2": {
                        "prices": [
                          8423.7,
                          8423.5,
                          8514.3,
                          8481.85,
                          8487.7,
                          8506.9,
                          8626.2,
                          8668.95,
                          8602.3,
                          8607.55,
                          8512.9,
                          8496.25,
                          8600.65,
                          8881.1,
                          9040.85,
                          8340.7,
                          8165.5,
                          8122.9,
                          8107.85,
                          8128.0
                        ],
                        "dates": [
                          "13 Nov 2017",
                          "14 Nov 2017",
                          "15 Nov 2017",
                          "16 Nov 2017",
                          "17 Nov 2017",
                          "20 Nov 2017",
                          "21 Nov 2017",
                          "22 Nov 2017",
                          "23 Nov 2017",
                          "24 Nov 2017",
                          "27 Nov 2017",
                          "28 Nov 2017",
                          "29 Nov 2017",
                          "30 Nov 2017",
                          "01 Dec 2017",
                          "04 Dec 2017",
                          "05 Dec 2017",
                          "06 Dec 2017",
                          "07 Dec 2017",
                          "08 Dec 2017"
                        ]
                      },
                      "monthDataSeries3": {
                        "prices": [
                          7114.25,
                          7126.6,
                          7116.95,
                          7203.7,
                          7233.75,
                          7451.0,
                          7381.15,
                          7348.95,
                          7347.75,
                          7311.25,
                          7266.4,
                          7253.25,
                          7215.45,
                          7266.35,
                          7315.25,
                          7237.2,
                          7191.4,
                          7238.95,
                          7222.6,
                          7217.9,
                          7359.3,
                          7371.55,
                          7371.15,
                          7469.2,
                          7429.25,
                          7434.65,
                          7451.1,
                          7475.25,
                          7566.25,
                          7556.8,
                          7525.55,
                          7555.45,
                          7560.9,
                          7490.7,
                          7527.6,
                          7551.9,
                          7514.85,
                          7577.95,
                          7592.3,
                          7621.95,
                          7707.95,
                          7859.1,
                          7815.7,
                          7739.0,
                          7778.7,
                          7839.45,
                          7756.45,
                          7669.2,
                          7580.45,
                          7452.85,
                          7617.25,
                          7701.6,
                          7606.8,
                          7620.05,
                          7513.85,
                          7498.45,
                          7575.45,
                          7601.95,
                          7589.1,
                          7525.85,
                          7569.5,
                          7702.5,
                          7812.7,
                          7803.75,
                          7816.3,
                          7851.15,
                          7912.2,
                          7972.8,
                          8145.0,
                          8161.1,
                          8121.05,
                          8071.25,
                          8088.2,
                          8154.45,
                          8148.3,
                          8122.05,
                          8132.65,
                          8074.55,
                          7952.8,
                          7885.55,
                          7733.9,
                          7897.15,
                          7973.15,
                          7888.5,
                          7842.8,
                          7838.4,
                          7909.85,
                          7892.75,
                          7897.75,
                          7820.05,
                          7904.4,
                          7872.2,
                          7847.5,
                          7849.55,
                          7789.6,
                          7736.35,
                          7819.4,
                          7875.35,
                          7871.8,
                          8076.5,
                          8114.8,
                          8193.55,
                          8217.1,
                          8235.05,
                          8215.3,
                          8216.4,
                          8301.55,
                          8235.25,
                          8229.75,
                          8201.95,
                          8164.95,
                          8107.85,
                          8128.0,
                          8122.9,
                          8165.5,
                          8340.7,
                          8423.7,
                          8423.5,
                          8514.3,
                          8481.85,
                          8487.7,
                          8506.9,
                          8626.2
                        ],
                        "dates": [
                          "02 Jun 2017",
                          "05 Jun 2017",
                          "06 Jun 2017",
                          "07 Jun 2017",
                          "08 Jun 2017",
                          "09 Jun 2017",
                          "12 Jun 2017",
                          "13 Jun 2017",
                          "14 Jun 2017",
                          "15 Jun 2017",
                          "16 Jun 2017",
                          "19 Jun 2017",
                          "20 Jun 2017",
                          "21 Jun 2017",
                          "22 Jun 2017",
                          "23 Jun 2017",
                          "27 Jun 2017",
                          "28 Jun 2017",
                          "29 Jun 2017",
                          "30 Jun 2017",
                          "03 Jul 2017",
                          "04 Jul 2017",
                          "05 Jul 2017",
                          "06 Jul 2017",
                          "07 Jul 2017",
                          "10 Jul 2017",
                          "11 Jul 2017",
                          "12 Jul 2017",
                          "13 Jul 2017",
                          "14 Jul 2017",
                          "17 Jul 2017",
                          "18 Jul 2017",
                          "19 Jul 2017",
                          "20 Jul 2017",
                          "21 Jul 2017",
                          "24 Jul 2017",
                          "25 Jul 2017",
                          "26 Jul 2017",
                          "27 Jul 2017",
                          "28 Jul 2017",
                          "31 Jul 2017",
                          "01 Aug 2017",
                          "02 Aug 2017",
                          "03 Aug 2017",
                          "04 Aug 2017",
                          "07 Aug 2017",
                          "08 Aug 2017",
                          "09 Aug 2017",
                          "10 Aug 2017",
                          "11 Aug 2017",
                          "14 Aug 2017",
                          "16 Aug 2017",
                          "17 Aug 2017",
                          "18 Aug 2017",
                          "21 Aug 2017",
                          "22 Aug 2017",
                          "23 Aug 2017",
                          "24 Aug 2017",
                          "28 Aug 2017",
                          "29 Aug 2017",
                          "30 Aug 2017",
                          "31 Aug 2017",
                          "01 Sep 2017",
                          "04 Sep 2017",
                          "05 Sep 2017",
                          "06 Sep 2017",
                          "07 Sep 2017",
                          "08 Sep 2017",
                          "11 Sep 2017",
                          "12 Sep 2017",
                          "13 Sep 2017",
                          "14 Sep 2017",
                          "15 Sep 2017",
                          "18 Sep 2017",
                          "19 Sep 2017",
                          "20 Sep 2017",
                          "21 Sep 2017",
                          "22 Sep 2017",
                          "25 Sep 2017",
                          "26 Sep 2017",
                          "27 Sep 2017",
                          "28 Sep 2017",
                          "29 Sep 2017",
                          "03 Oct 2017",
                          "04 Oct 2017",
                          "05 Oct 2017",
                          "06 Oct 2017",
                          "09 Oct 2017",
                          "10 Oct 2017",
                          "11 Oct 2017",
                          "12 Oct 2017",
                          "13 Oct 2017",
                          "16 Oct 2017",
                          "17 Oct 2017",
                          "18 Oct 2017",
                          "19 Oct 2017",
                          "23 Oct 2017",
                          "24 Oct 2017",
                          "25 Oct 2017",
                          "26 Oct 2017",
                          "27 Oct 2017",
                          "30 Oct 2017",
                          "31 Oct 2017",
                          "01 Nov 2017",
                          "02 Nov 2017",
                          "03 Nov 2017",
                          "06 Nov 2017",
                          "07 Nov 2017",
                          "08 Nov 2017",
                          "09 Nov 2017",
                          "10 Nov 2017",
                          "13 Nov 2017",
                          "14 Nov 2017",
                          "15 Nov 2017",
                          "16 Nov 2017",
                          "17 Nov 2017",
                          "20 Nov 2017",
                          "21 Nov 2017",
                          "22 Nov 2017",
                          "23 Nov 2017",
                          "24 Nov 2017",
                          "27 Nov 2017",
                          "28 Nov 2017"
                        ]
                      }
                    }
                    new ApexCharts(document.querySelector("#areaChart"), {
                      series: [{
                        name: "STOCK ABC",
                        data: series.monthDataSeries1.prices
                      }],
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
                      labels: series.monthDataSeries1.dates,
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
                <!-- End Area Chart -->
  
              </div>
       
            </div>
          </div>

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
