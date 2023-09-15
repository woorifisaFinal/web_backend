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
        @charset "UTF-8";
@import url(https://fonts.googleapis.com/css?family=Open+Sans:300,400,700);
body {
  font-family: 'Open Sans', sans-serif;
  font-weight: 300;
  line-height: 1.42em;
  color:#A7A1AE;
  background-color:#1F2739;
}

h1 {
  font-size:3em; 
  font-weight: 300;
  line-height:1em;
  text-align: center;
  color: #4DC3FA;
}

h2 {
  font-size:1em; 
  font-weight: 300;
  text-align: center;
  display: block;
  line-height:1em;
  padding-bottom: 2em;
  color: #FB667A;
}

h2 a {
  font-weight: 700;
  text-transform: uppercase;
  color: #FB667A;
  text-decoration: none;
}

.blue { color: #185875; }
.yellow { color: #FFF842; }

.container th h1 {
    font-weight: bold;
    font-size: 1em;
  text-align: left;
  color: #185875;
}

.container td {
    font-weight: normal;
    font-size: 1em;
  -webkit-box-shadow: 0 2px 2px -2px #0E1119;
     -moz-box-shadow: 0 2px 2px -2px #0E1119;
          box-shadow: 0 2px 2px -2px #0E1119;
}

.container {
    text-align: left;
    overflow: hidden;
    width: 80%;
    margin: 0 auto;
  display: table;
  padding: 0 0 8em 0;
}

.container td, .container th {
    padding-bottom: 2%;
    padding-top: 2%;
  padding-left:2%;  
}

/* Background-color of the odd rows */
.container tr:nth-child(odd) {
    background-color: #solid blue;
}

/* Background-color of the even rows */
.container tr:nth-child(even) {
    background-color: white;
}

.container th {
    background-color: #1F2739;
}

.container td:first-child { color: #FB667A; }

.container tr:hover {
   background-color: #464A52;
-webkit-box-shadow: 0 6px 6px -6px #0E1119;
     -moz-box-shadow: 0 6px 6px -6px #0E1119;
          box-shadow: 0 6px 6px -6px #0E1119;
}

.container td:hover {
  background-color: #FFF842;
  color: #403E10;
  font-weight: bold;
  
  box-shadow: #7F7C21 -1px 1px, #7F7C21 -2px 2px, #7F7C21 -3px 3px, #7F7C21 -4px 4px, #7F7C21 -5px 5px, #7F7C21 -6px 6px;
  transform: translate3d(6px, -6px, 0);
  
  transition-delay: 0s;
    transition-duration: 0.4s;
    transition-property: all;
  transition-timing-function: line;
}

@media (max-width: 800px) {
.container td:nth-child(4),
.container th:nth-child(4) { display: none; }
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

    <div class="col-15">
        <div class="d-flex justify-content-between" style="border-bottom: 2px solid blue;">
            <div>
                <img class="mb-3" id="square" src="${pageContext.request.contextPath}/img/bluebox.jpg" alt="이미지 교체중입니다.">
                &nbsp;<h2 style="display: inline-block" class="fs-2 fw-bold" >투자성향 결과</h2>
            </div>
        </div>
    </div>

    <div id="result-container" class="col-15" style="background-color: white; padding: 20px; border-radius: 10px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);">
        <div class="row">
            <div class="col-md-6" style="border-bottom: 3px solid rgb(240, 240,240);">

                <p style="display: inline-block;font-size: 30px">${User.userName}님의 투자성향은 </p>
                <p class="hanna-font">${User.type}입니다.</p>
                </br>
                <!-- 안정형 일때 -->
                <c:if test="${User.type == '안정형'}">
                    <p style="font-weight: normal; font-size: 15px">원금 손실 위험을 최소화하면서 이자, 배당소득 수준을 목표로 하는 포트폴리오입니다. </p>
                </c:if>

                <!-- 위험형 일때 -->
                <c:if test="${User.type == '공격형'}">
                    <p style="font-weight: normal; font-size: 15px">원금 보전보다는 위험을 감수하더라도 높은 투자수익을 추구하는 투자자를 위한 포트폴리오입니다.</p>
                </c:if>
<%--                <div id="result"></div>--%>
                <h3>유형점수 : ${score}</h3>
<%--                <p id="score-p">${score}</p>--%>
<%--                <script src="${pageContext.request.contextPath}/js/result.js"></script>--%>
<%--                <div id="score"></div>--%>
            </div>
            <div class="col-md-6" style="border-bottom: 3px solid rgb(240, 240,240);">

                <!-- 이미지 -->
                <c:if test="${User.type == '안정형'}">
                    <img style="display: block;-webkit-user-select: none;margin: auto;" src="${pageContext.request.contextPath}/img/ferris_wheel.png" alt="이미지 교체중입니다.">
                </c:if>

                <!-- 위험형 일때 -->
                <c:if test="${User.type == '공격형'}">
                    <img style="display: block;-webkit-user-select: none;margin: auto;" src="${pageContext.request.contextPath}/img/roller.png" alt="이미지 교체중입니다.">
                </c:if>

                <!-- 이미지 -->

            </div>
        </div>
        <div class="row mt-4">
            <div class="col-md-6">
                <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
                <h3>파이차트:</h3>
                <div style="display: flex; justify-content: space-around;">
                    <div>
                        <h2>${portfolio.type}</h2>
                        <canvas id="chartB" width="300" height="300"></canvas>
                    </div>
                </div>
                <script>
                    // Pie Chart Data
                    const ctxB = document.getElementById('chartB');
                    new Chart(ctxB, {
                        type: 'pie',
                        data: {
                            labels: ['br', 'euro', 'gold', 'ind', 'jp', 'kor', 'kor10y', 'kor3y', 'tw', 'uk', 'us', 'us10y', 'us3y'],
                            datasets: [{
                                label: '# of Votes',
                                data: [
                                    ${portfolio.br},
                                    ${portfolio.euro},
                                    ${portfolio.gold},
                                    ${portfolio.ind},
                                    ${portfolio.jp},
                                    ${portfolio.kor},
                                    ${portfolio.kor10y},
                                    ${portfolio.kor3y},
                                    ${portfolio.tw},
                                    ${portfolio.uk},
                                    ${portfolio.us},
                                    ${portfolio.us10y},
                                    ${portfolio.us3y}
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
                                    text: 'Pie Chart B Title' // Second Pie Chart Title
                                }
                            }
                        }
                    });
                </script>
            </div>
            <div class="col-md-6">
<h1><span class="blue">&lt;</span>표<span class="blue">&gt;</span>

<table class="container">
  <thead>
    <tr>
      <th><h1>종목</h1></th>
      <th><h1>비율</h1></th>
      <th><h1>종목</h1></th>
      <th><h1>비율</h1></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>br</td>
      <td>${portfolio.br}</td>
      <td>euro</td>
      <td>${portfolio.euro}</td>
    </tr>
    <tr>
      <td>gold</td>
      <td>${portfolio.gold}</td>
      <td>ind</td>
      <td>${portfolio.ind}</td>
    </tr>
    <tr>
      <td>jp</td>
      <td>${portfolio.jp}</td>
      <td>kor</td>
      <td>${portfolio.kor}</td>
    </tr>
    <tr>
      <td>kor3y</td>
      <td>${portfolio.kor3y}</td>
      <td>kor10y</td>
      <td>${portfolio.kor10y}</td>
    </tr>
    <tr>
      <td>tw</td>
      <td>${portfolio.tw}</td>
      <td>uk</td>
      <td>${portfolio.uk}</td>
    </tr>
    <tr>
      <td>us</td>
      <td>${portfolio.us}</td>
      <td>us3y</td>
      <td>${portfolio.us3y}</td>
      <td>us10y</td>
      <td>${portfolio.us10y}</td>
    </tr>
  </tbody>
</table>
            </div>
        </div>
        
                  <div class="col-xxl-4 col-md-6">
          
            <div class="card info-card revenue-card">
              <div class="card-body">
                <h5 class="card-title" href="/portfolio/compare" class="btn btn-primary" >상품비교하기</h5>

                <div class="d-flex align-items-center">
                  <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <i class="bi bi-currency-dollar"></i>
                  </div>
                  <div class="ps-3">
                    <h6>$ ${nasdaq }</h6>
                    <span class="text-success small pt-1 fw-bold">${nasdaqVariance }%</span> <span class="text-muted small pt-2 ps-1">increase</span>

                  </div>
                </div>
              </div>

            </div>
          </div><!-- End Revenue Card -->
        <div class="row mt-4">
            <div class="col-md-12 text-center">
                <h3>상품비교해보기:</h3>
                <a href="/portfolio/compare" class="btn btn-primary">비교하기</a>
            </div>
        </div>
    </div>
    </br>
    </br>
    </br>
    </br>
    </br>
</div>
<!-- Main (div id=main) 끝 -->

<!-- ======= Footer ======= -->
<%@include file = "/WEB-INF/view/include/footer.jsp" %>
<!-- End Footer -->
</body>
</html>

<!--






-->