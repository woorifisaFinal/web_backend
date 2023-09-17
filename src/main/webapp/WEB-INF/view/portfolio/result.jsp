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
        /*@charset "UTF-8";*/
        @import url(https://fonts.googleapis.com/css?family=Open+Sans:300,400,700);
        .custom-button-group {
            display: flex;
            justify-content: flex-end;
            margin-top: -40px; /* 버튼을 위로 올리는 여백 조정 */
        }


        body {
          font-family: 'Open Sans', sans-serif;
          font-weight: 300;
          line-height: 1.42em;
          color:#A7A1AE;
          background-color:white;
        }

        h1 {
          font-size:3em;
          font-weight: 300;
          line-height:1em;
          text-align: center;
          color: black;
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

        .blue { color: #0879d4; }
        .yellow { color: #FFF842; }

        .container_ th h1 {
            font-weight: bold;
            font-size: 1em;
          text-align: left;
          color: black;
        }

        .container_ td {
            font-weight: normal;
            font-size: 1em;
          -webkit-box-shadow: 0 2px 2px -2px white;
             -moz-box-shadow: 0 2px 2px -2px white;
                  box-shadow: 0 2px 2px -2px white;
        }

        .container_ {
            text-align: left;
            overflow: hidden;
            width: 80%;
            margin: 0 auto;
          display: table;
          padding: 0 0 8em 0;
        }

        .container_ td, .container_ th {
            padding-bottom: 2%;
            padding-top: 2%;
          padding-left:2%;
        }

        /* Background-color of the odd rows */
        .container_ tr:nth-child(odd) {
            background-color: white;
        }

        /* Background-color of the even rows */
        .container_ tr:nth-child(even) {
            background-color: white;
        }

        .container_ th {
            background-color:white;
        }

        .container_ td{ color: black; }

        .container_ tr:hover {
           background-color: white;
        -webkit-box-shadow: 0 6px 6px -6px white;
             -moz-box-shadow: 0 6px 6px -6px white;
                  box-shadow: 0 6px 6px -6px white;
        }

        .container_ td:hover {
          background-color: #0879d4;
          color: #403E10;
          font-weight: bold;

          box-shadow: #7F7C21 -1px 1px, #7F7C21 -2px 2px, #7F7C21 -3px 3px, #7F7C21 -4px 4px, #7F7C21 -5px 5px, #7F7C21 -6px 6px;
          transform: translate3d(6px, -6px, 0);

          transition-delay: 0s;
            transition-duration: 0.4s;
            transition-property: all;
          transition-timing-function: line;
        }




        .btn-hover.color-9 {
            background-image: linear-gradient(to right, #25aae1, #4481eb, #04befe, #3f86ed);
            box-shadow: 0 4px 15px 0 rgba(65, 132, 234, 0.75);
        }

        * {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        .buttons {
            margin: 10%;
            text-align: center;
        }

        .btn-hover {
            width: 200px;
            font-size: 16px;
            font-weight: 600;
            color: #fff;
            cursor: pointer;
            margin: 20px;
            height: 55px;
            text-align:center;
            border: none;
            background-size: 300% 100%;

            border-radius: 50px;
            moz-transition: all .4s ease-in-out;
            -o-transition: all .4s ease-in-out;
            -webkit-transition: all .4s ease-in-out;
            transition: all .4s ease-in-out;
        }

        .btn-hover:hover {
            background-position: 100% 0;
            moz-transition: all .4s ease-in-out;
            -o-transition: all .4s ease-in-out;
            -webkit-transition: all .4s ease-in-out;
            transition: all .4s ease-in-out;
        }

        .btn-hover:focus {
            outline: none;
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
<div class="container_">

    <div class="col-12">
        <div class="d-flex justify-content-between" style="border-bottom: 2px solid blue;">
            <div>
                <img class="mb-3" id="square" src="${pageContext.request.contextPath}/img/bluebox.jpg" alt="이미지 교체중입니다.">
                &nbsp;<h2 style="display: inline-block" class="fs-2 fw-bold" >투자성향 결과</h2>
            </div>
        </div>
    </div>

    <div id="result-container" class="col-12" style="background-color: white; padding: 20px; border-radius: 10px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);">
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
                            labels: ['BOVESPA', 'EUROSTOXX', '금', 'NIFTY', 'NIKKEI', 'KOSPI', '한국채권10년물', '한국채권3년물', 'TWII', 'FTSE', 'NASDAQ', '미국채권10년물', '미국채권3년물'],
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
                <h3>표:</h3>

                <table class="container_">
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
                        <td>NASDAQ</td>
                        <td>${portfolio.us}</td>
                        <td>FTSE</td>
                        <td>${portfolio.uk}</td>
                    </tr>
                    <tr>
                        <td>NIKKEI</td>
                        <td>${portfolio.jp}</td>
                        <td>EUROSTOXX</td>
                        <td>${portfolio.euro}</td>
                    </tr>
                    <tr>
                        <td>KOSPI</td>
                        <td>${portfolio.kor}</td>
                        <td>NIFTY</td>
                        <td>${portfolio.ind}</td>
                    </tr>
                    <tr>
                        <td>TWII</td>
                        <td>${portfolio.tw}</td>
                        <td>BOVESPA</td>
                        <td>${portfolio.br}</td>
                    </tr>
                    <tr>
                        <td>한국채권3년물</td>
                        <td>${portfolio.kor3y}</td>
                        <td>한국국채10년물</td>
                        <td>${portfolio.kor10y}</td>
                    </tr>
                    <tr>
                        <td>미국채권3년물</td>
                        <td>${portfolio.us3y}</td>
                        <td>미국채권10년물</td>
                        <td>${portfolio.us10y}</td>
                    </tr>
                    <tr>
                        <td>금</td>
                        <td>${portfolio.gold}</td>
                      </tr>
                  </tbody>
                </table>
            </div>
        </div>   

        <div class="row mt-4">
            <div class="col-md-12 text-center">
                <br />
                <div class="d-flex align-items-center justify-content-center">

                    <h1 style="margin-right: 30px;"></h1> <!-- 여기에 margin-right 추가 -->
                    <button class="btn-hover color-9" onclick="window.location.href='/portfolio/compare'">비교하기</button>
                </div>
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