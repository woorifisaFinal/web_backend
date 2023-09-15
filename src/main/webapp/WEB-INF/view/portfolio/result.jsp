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
                <p style="display: inline-block;font-size: 30px">고객님은</p>
                <p class="hanna-font">${User.type}</p>
                </br>
                </br>

                <!-- 안정형 일때 -->
                <c:if test="${User.type == '안정형'}">
                    <p style="font-weight: normal; font-size: 15px">원금 손실 위험을 최소화하면서 이자, 배당소득 수준을 목표로 하는 포트폴리오입니다. </p>
                </c:if>

                <!-- 위험형 일때 -->
                <c:if test="${User.type == '공격형'}">
                    <p style="font-weight: normal; font-size: 15px">원금 보전보다는 위험을 감수하더라도 높은 투자수익을 추구하는 투자자를 위한 포트폴리오입니다.</p>
                </c:if>
                <div id="result"></div>
                <h3>유형점수:</h3>
                <p id="score-p"></p>
                <script src="result.js"></script>
                <div id="score"></div>
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