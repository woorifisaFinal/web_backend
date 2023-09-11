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
                     /* 전체 테이블의 너비를 절반으로 줄이기 */
  .table {
    width: 70%;
    margin-left: 70px;
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
<div class="container">
<br /> <br /><br />
<body>
    <div style="border-bottom: 2px solid blue;" class="d-flex align-items-center">
        <img class="mb-3 square"  src="${pageContext.request.contextPath}img/bluebox.jpg" alt="이미지 교체중입니다.">
        <h2 class="mb-4" style="display: inline-block; margin-left: 8px; font-weight: bold;">${symbolDetail.name}</h2>
        <p>${symbolDetail.detail}</p>
    </div>

 <div class="card">
        <div class="card-body d-flex">
            <div style="flex: 4;">
                <!-- Primary Color Bordered Table -->
<table class="table table-bordered border-2 border-primary">
    <thead>
        <tr>
            <br /> <br /> <br /> <br />
            <th scope="col" style="background-color: lightblue; width: 150px;">펀드명</th>
            <td>함수</td>
        </tr>
    </thead>
    <tbody>
        <tr>
            <th scope="row" style="background-color: lightblue;">운용사</th>
            <td>함수</td>
        </tr>
        <tr>
            <th scope="row" style="background-color: lightblue;">최초출시일</th>
            <td>함수</td>
        </tr>
        <tr>
            <th scope="row" style="background-color: lightblue;">시가총액</th>
            <td>함수</td>
        </tr>
        <tr>
            <th scope="row" style="background-color: lightblue;">특징</th>
            <td>함수</td>
        </tr>
    </tbody>
</table>
                <!-- End Primary Color Bordered Table -->
            </div>

            <!-- Website Traffic Chart -->
<div class="card-body pb-0">
    <div class="d-flex justify-content-between align-items-center">
        <h5 class="card-title">??뭘로할까 <span>| Today</span></h5>
        <div style="flex: 1;"></div>
    </div>
    <div id="trafficChart" style="min-height: 400px; margin-left: auto;" class="echart"></div>
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
            <!-- End Website Traffic Chart -->

    <div class="container">
    <div id="body" class="col-10" style="background-color: white">
        <br>
        <br>
        <br>
        <h3>${symbolDetail.name}</h3>
        <br />
        <div id="item-explanation" class="col-10">
            <p>
                아래는 symbolDetail테이블에서 가져온 detail <br>
                ${symbolDetail.detail}
            </p>
        </div>
        <div class="forAPI" style="background-color: white">

            <p>...</p>
            <p>...</p>
            <p>...</p>
            <p>...</p>
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
                                    }
                                };
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
<br />
<!-- Main (div id=main) 끝 -->

    <!-- ======= Footer ======= -->
    	<%@include file = "/WEB-INF/view/include/footer.jsp" %>
	<!-- End Footer -->
</body>
</html>

<!--
${pageContext.request.contextPath}





-->
