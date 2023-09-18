<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%> <%@page import="java.util.*"%>

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
  <script src="${pageContext.request.contextPath}/js/echarts.min.js"></script>
  
  <!-- 계산식 -->
  <script>
    // 공통 함수: 증감률 계산과 텍스트 업데이트
    function updatePercentageInfo(currentClose, previousClose, percentageValueId, changeTextId) {
        const percentageValueElement = document.getElementById(percentageValueId);
        const changeTextElement = document.getElementById(changeTextId);

        // 증감률 계산
        const percentageChange = ((currentClose - previousClose) / previousClose) * 100;

        // 값을 화면에 표시 (소수점 2자리까지 반올림)
        percentageValueElement.textContent = percentageChange.toFixed(2) + "%";

        // 증감률에 따라 텍스트 변경
        if (percentageChange > 0) {
            changeTextElement.textContent = "increase";
        } else if (percentageChange < 0) {
            changeTextElement.textContent = "decrease";
        } else {
            changeTextElement.textContent = "no change";
        }
    }
  </script>
  
  <!-- 계산식 -->
  
  
  </head>

<body>
   <!-- ======= Header ======= -->
  	<%@include file = "/WEB-INF/view/include/Newheader.jsp" %>
  	    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   <!-- End Sidebar-->

<!-- Main -->
<main id="main" class="main">
<!-- 메인자리임 -->
<p></p>
<div class="card-body" style="padding: 0px">

        <div style="border-bottom: 2px solid blue;">
          <img class="mb-3 square"  src="${pageContext.request.contextPath}/img/bluebox.jpg" alt="이미지 교체중입니다.">
          <h1 class="mb-4" style="display: inline-block; margin-left:8px; font-weight: bold" > 비교 </h1>
        </div>
    <!-- Column Chart -->
    <div id="columnChart"></div>

    <!-- "자세히보기" 버튼 추가 -->
<div class="details-button row align-items-center">
    <button type="button" class="detail-button col"  id="modal-블랙-안전형" data-bs-toggle="modal" data-bs-target="#exampleModal">블랙-안전형</button>
    <button type="button" class="detail-button col" id="modal-블랙-위험형" data-bs-toggle="modal" data-bs-target="#exampleModal2">블랙-위험형</button>
    <button type="button" class="detail-button col" id="modal-알파-안전형" data-bs-toggle="modal" data-bs-target="#exampleModal3">알파-안전형</button>
    <button type="button" class="detail-button col" id="modal-안파-위험형" data-bs-toggle="modal" data-bs-target="#exampleModal4">알파-위험형</button>
    <button type="button" class="detail-button col" id="modal-나누리-안전형" data-bs-toggle="modal" data-bs-target="#exampleModal5">누리-안전형</button>
    <button type="button" class="detail-button col" id="modal-나누리-위험형" data-bs-toggle="modal" data-bs-target="#exampleModal6">누리-위험형</button>
</div>
    <!-- 각각의 모달 -->

    <!-- 모달 샘플 1  -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">블랙-안전형</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
                               <!-- ECharts Pie Chart 1 -->
        <div id="echartsPieChart1" style="min-height: 550px;" class="echart"></div>
        <script>
        $('#exampleModal').on('shown.bs.modal', function () {
                const chartData = [
                    { value: ${firstPortfolio.us}, name: '나스닥' },
                    { value: ${firstPortfolio.uk}, name: '영국' },
                    { value: ${firstPortfolio.jp}, name: '니케이' },
                    { value: ${firstPortfolio.euro}, name: '유료스탁스' },
                    { value: ${firstPortfolio.kor}, name: '코스피' },
                    { value: ${firstPortfolio.ind}, name: '인도' },
                    { value: ${firstPortfolio.tw}, name: '대만' },
                    { value: ${firstPortfolio.br}, name: '브라질' },
                    { value: ${firstPortfolio.kor3y}, name: '국채 3년' },
                    { value: ${firstPortfolio.kor10y}, name: '국채 10년' },
                    { value: ${firstPortfolio.us3y}, name: '미국채 3년' },
                    { value: ${firstPortfolio.us10y}, name: '미국채 10년' },
                    { value: ${firstPortfolio.gold}, name: '금' }
                ];

                // 비중이 5% 미만인 항목을 필터링하여 새로운 항목 생성
                const threshold = 5;
                let filteredData = [];
                let otherData = 0;

                chartData.forEach(item => {
                    if ((item.value / chartData.reduce((acc, curr) => acc + curr.value, 0)) * 100 >= threshold) {
                        filteredData.push(item);
                    } else {
                        otherData += item.value;
                    }
                });

                // 남은 항목들을 더해서 "기타" 항목 생성
                if (otherData > 0) {
                    filteredData.push({ value: otherData, name: '기타' });
                }

                // ECharts를 사용하여 Pie 차트 생성
                const chart1 = echarts.init(document.querySelector("#echartsPieChart1"));
                chart1.setOption({
                    title: {
                        left: 'center'
                    },
                    tooltip: {
                        trigger: 'item'
                    },
                    legend: {
                        orient: 'vertical',
                        left: 'left'
                    },
                    series: [{
                        name: 'Access From',
                        type: 'pie',
                        radius: '50%',
                        data: filteredData,
                        emphasis: {
                            itemStyle: {
                                shadowBlur: 10,
                                shadowOffsetX: 0,
                                shadowColor: 'rgba(0, 0, 0, 0.5)'
                            }
                        }
                    }]
                });
            });


        </script>
        <!-- End ECharts Pie Chart 1 -->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<!--  모달 샘플 1 끝 -->
<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">블랙-위험형</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
                               <!-- ECharts Pie Chart 1 -->
        <div id="echartsPieChart12" style="min-height: 550px;" class="echart"></div>
        <script>
        $('#exampleModal2').on('shown.bs.modal', function () {
                const chartData = [
                	{ value: ${secondPortfolio.us}, name: '나스닥' },
                    { value: ${secondPortfolio.uk}, name: '영국' },
                    { value: ${secondPortfolio.jp}, name: '니케이' },
                    { value: ${secondPortfolio.euro}, name: '유료스탁스' },
                    { value: ${secondPortfolio.kor}, name: '코스피' },
                    { value: ${secondPortfolio.ind}, name: '인도' },
                    { value: ${secondPortfolio.tw}, name: '대만' },
                    { value: ${secondPortfolio.br}, name: '브라질' },
                    { value: ${secondPortfolio.kor3y}, name: '국채 3년' },
                    { value: ${secondPortfolio.kor10y}, name: '국채 10년' },
                    { value: ${secondPortfolio.us3y}, name: '미국채 3년' },
                    { value: ${secondPortfolio.us10y}, name: '미국채 10년' },
                    { value: ${secondPortfolio.gold}, name: '금' }
                ];

                // 비중이 5% 미만인 항목을 필터링하여 새로운 항목 생성
                const threshold = 5;
                let filteredData = [];
                let otherData = 0;

                chartData.forEach(item => {
                    if ((item.value / chartData.reduce((acc, curr) => acc + curr.value, 0)) * 100 >= threshold) {
                        filteredData.push(item);
                    } else {
                        otherData += item.value;
                    }
                });

                // 남은 항목들을 더해서 "기타" 항목 생성
                if (otherData > 0) {
                    filteredData.push({ value: otherData, name: '기타' });
                }

                // ECharts를 사용하여 Pie 차트 생성
                const chart1 = echarts.init(document.querySelector("#echartsPieChart12"));
                chart1.setOption({
                    title: {

                        left: 'center'
                    },
                    tooltip: {
                        trigger: 'item'
                    },
                    legend: {
                        orient: 'vertical',
                        left: 'left'
                    },
                    series: [{
                        name: 'Access From',
                        type: 'pie',
                        radius: '50%',
                        data: filteredData,
                        emphasis: {
                            itemStyle: {
                                shadowBlur: 10,
                                shadowOffsetX: 0,
                                shadowColor: 'rgba(0, 0, 0, 0.5)'
                            }
                        }
                    }]
                });
            });


        </script>
        <!-- End ECharts Pie Chart 1 -->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>



<!--  모달 샘플 1 끝 -->
<div class="modal fade" id="exampleModal3" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">알파-안전형</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
                               <!-- ECharts Pie Chart 1 -->
        <div id="echartsPieChart123" style="min-height: 550px;" class="echart"></div>
        <script>
        $('#exampleModal3').on('shown.bs.modal', function () {
                const chartData = [
                	{ value: ${thirdPortfolio.us}, name: '나스닥' },
                    { value: ${thirdPortfolio.uk}, name: '영국' },
                    { value: ${thirdPortfolio.jp}, name: '니케이' },
                    { value: ${thirdPortfolio.euro}, name: '유료스탁스' },
                    { value: ${thirdPortfolio.kor}, name: '코스피' },
                    { value: ${thirdPortfolio.ind}, name: '인도' },
                    { value: ${thirdPortfolio.tw}, name: '대만' },
                    { value: ${thirdPortfolio.br}, name: '브라질' },
                    { value: ${thirdPortfolio.kor3y}, name: '국채 3년' },
                    { value: ${thirdPortfolio.kor10y}, name: '국채 10년' },
                    { value: ${thirdPortfolio.us3y}, name: '미국채 3년' },
                    { value: ${thirdPortfolio.us10y}, name: '미국채 10년' },
                    { value: ${thirdPortfolio.gold}, name: '금' }
                ];

                // 비중이 5% 미만인 항목을 필터링하여 새로운 항목 생성
                const threshold = 5;
                let filteredData = [];
                let otherData = 0;

                chartData.forEach(item => {
                    if ((item.value / chartData.reduce((acc, curr) => acc + curr.value, 0)) * 100 >= threshold) {
                        filteredData.push(item);
                    } else {
                        otherData += item.value;
                    }
                });

                // 남은 항목들을 더해서 "기타" 항목 생성
                if (otherData > 0) {
                    filteredData.push({ value: otherData, name: '기타' });
                }

                // ECharts를 사용하여 Pie 차트 생성
                const chart1 = echarts.init(document.querySelector("#echartsPieChart123"));
                chart1.setOption({
                    title: {
                        left: 'center'
                    },
                    tooltip: {
                        trigger: 'item'
                    },
                    legend: {
                        orient: 'vertical',
                        left: 'left'
                    },
                    series: [{
                        name: 'Access From',
                        type: 'pie',
                        radius: '50%',
                        data: filteredData,
                        emphasis: {
                            itemStyle: {
                                shadowBlur: 10,
                                shadowOffsetX: 0,
                                shadowColor: 'rgba(0, 0, 0, 0.5)'
                            }
                        }
                    }]
                });
            });


        </script>
        <!-- End ECharts Pie Chart 1 -->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>


<!--  모달 샘플 1 끝 -->
<div class="modal fade" id="exampleModal4" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">알파-위험형</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
                               <!-- ECharts Pie Chart 1 -->
        <div id="echartsPieChart1234" style="min-height: 550px;" class="echart"></div>
        <script>
        $('#exampleModal4').on('shown.bs.modal', function () {
                const chartData = [
                	{ value: ${fourthPortfolio.us}, name: '나스닥' },
                    { value: ${fourthPortfolio.uk}, name: '영국' },
                    { value: ${fourthPortfolio.jp}, name: '니케이' },
                    { value: ${fourthPortfolio.euro}, name: '유료스탁스' },
                    { value: ${fourthPortfolio.kor}, name: '코스피' },
                    { value: ${fourthPortfolio.ind}, name: '인도' },
                    { value: ${fourthPortfolio.tw}, name: '대만' },
                    { value: ${fourthPortfolio.br}, name: '브라질' },
                    { value: ${fourthPortfolio.kor3y}, name: '국채 3년' },
                    { value: ${fourthPortfolio.kor10y}, name: '국채 10년' },
                    { value: ${fourthPortfolio.us3y}, name: '미국채 3년' },
                    { value: ${fourthPortfolio.us10y}, name: '미국채 10년' },
                    { value: ${fourthPortfolio.gold}, name: '금' }
                ];

                // 비중이 5% 미만인 항목을 필터링하여 새로운 항목 생성
                const threshold = 5;
                let filteredData = [];
                let otherData = 0;

                chartData.forEach(item => {
                    if ((item.value / chartData.reduce((acc, curr) => acc + curr.value, 0)) * 100 >= threshold) {
                        filteredData.push(item);
                    } else {
                        otherData += item.value;
                    }
                });

                // 남은 항목들을 더해서 "기타" 항목 생성
                if (otherData > 0) {
                    filteredData.push({ value: otherData, name: '기타' });
                }

                // ECharts를 사용하여 Pie 차트 생성
                const chart1 = echarts.init(document.querySelector("#echartsPieChart1234"));
                chart1.setOption({
                    title: {
                        left: 'center'
                    },
                    tooltip: {
                        trigger: 'item'
                    },
                    legend: {
                        orient: 'vertical',
                        left: 'left'
                    },
                    series: [{
                        name: 'Access From',
                        type: 'pie',
                        radius: '50%',
                        data: filteredData,
                        emphasis: {
                            itemStyle: {
                                shadowBlur: 10,
                                shadowOffsetX: 0,
                                shadowColor: 'rgba(0, 0, 0, 0.5)'
                            }
                        }
                    }]
                });
            });


        </script>
        <!-- End ECharts Pie Chart 1 -->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>




<!--  모달 샘플 1 끝 -->
<div class="modal fade" id="exampleModal5" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">나누리-안전형</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
                               <!-- ECharts Pie Chart 1 -->
        <div id="echartsPieChart12345" style="min-height: 550px;" class="echart"></div>
        <script>
        $('#exampleModal5').on('shown.bs.modal', function () {
                const chartData = [
                	{ value: ${fifthPortfolio.us}, name: '나스닥' },
                    { value: ${fifthPortfolio.uk}, name: '영국' },
                    { value: ${fifthPortfolio.jp}, name: '니케이' },
                    { value: ${fifthPortfolio.euro}, name: '유료스탁스' },
                    { value: ${fifthPortfolio.kor}, name: '코스피' },
                    { value: ${fifthPortfolio.ind}, name: '인도' },
                    { value: ${fifthPortfolio.tw}, name: '대만' },
                    { value: ${fifthPortfolio.br}, name: '브라질' },
                    { value: ${fifthPortfolio.kor3y}, name: '국채 3년' },
                    { value: ${fifthPortfolio.kor10y}, name: '국채 10년' },
                    { value: ${fifthPortfolio.us3y}, name: '미국채 3년' },
                    { value: ${fifthPortfolio.us10y}, name: '미국채 10년' },
                    { value: ${fifthPortfolio.gold}, name: '금' }
                ];

                // 비중이 5% 미만인 항목을 필터링하여 새로운 항목 생성
                const threshold = 5;
                let filteredData = [];
                let otherData = 0;

                chartData.forEach(item => {
                    if ((item.value / chartData.reduce((acc, curr) => acc + curr.value, 0)) * 100 >= threshold) {
                        filteredData.push(item);
                    } else {
                        otherData += item.value;
                    }
                });

                // 남은 항목들을 더해서 "기타" 항목 생성
                if (otherData > 0) {
                    filteredData.push({ value: otherData, name: '기타' });
                }

                // ECharts를 사용하여 Pie 차트 생성
                const chart1 = echarts.init(document.querySelector("#echartsPieChart12345"));
                chart1.setOption({
                    title: {
                        left: 'center'
                    },
                    tooltip: {
                        trigger: 'item'
                    },
                    legend: {
                        orient: 'vertical',
                        left: 'left'
                    },
                    series: [{
                        name: 'Access From',
                        type: 'pie',
                        radius: '50%',
                        data: filteredData,
                        emphasis: {
                            itemStyle: {
                                shadowBlur: 10,
                                shadowOffsetX: 0,
                                shadowColor: 'rgba(0, 0, 0, 0.5)'
                            }
                        }
                    }]
                });
            });


        </script>
        <!-- End ECharts Pie Chart 1 -->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>



<!--  모달 샘플 1 끝 -->
<div class="modal fade" id="exampleModal6" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">나누리-위험형</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
                               <!-- ECharts Pie Chart 1 -->
        <div id="echartsPieChart123456" style="min-height: 550px;" class="echart"></div>
        <script>
        $('#exampleModal6').on('shown.bs.modal', function () {
                const chartData = [
                   	{ value: ${sixthPortfolio.us}, name: '나스닥' },
                    { value: ${sixthPortfolio.uk}, name: '영국' },
                    { value: ${sixthPortfolio.jp}, name: '니케이' },
                    { value: ${sixthPortfolio.euro}, name: '유료스탁스' },
                    { value: ${sixthPortfolio.kor}, name: '코스피' },
                    { value: ${sixthPortfolio.ind}, name: '인도' },
                    { value: ${sixthPortfolio.tw}, name: '대만' },
                    { value: ${sixthPortfolio.br}, name: '브라질' },
                    { value: ${sixthPortfolio.kor3y}, name: '국채 3년' },
                    { value: ${sixthPortfolio.kor10y}, name: '국채 10년' },
                    { value: ${sixthPortfolio.us3y}, name: '미국채 3년' },
                    { value: ${sixthPortfolio.us10y}, name: '미국채 10년' },
                    { value: ${sixthPortfolio.gold}, name: '금' }
                ];

                // 비중이 5% 미만인 항목을 필터링하여 새로운 항목 생성
                const threshold = 5;
                let filteredData = [];
                let otherData = 0;

                chartData.forEach(item => {
                    if ((item.value / chartData.reduce((acc, curr) => acc + curr.value, 0)) * 100 >= threshold) {
                        filteredData.push(item);
                    } else {
                        otherData += item.value;
                    }
                });

                // 남은 항목들을 더해서 "기타" 항목 생성
                if (otherData > 0) {
                    filteredData.push({ value: otherData, name: '기타' });
                }

                // ECharts를 사용하여 Pie 차트 생성
                const chart1 = echarts.init(document.querySelector("#echartsPieChart123456"));
                chart1.setOption({
                    title: {
                        left: 'center'
                    },
                    tooltip: {
                        trigger: 'item'
                    },
                    legend: {
                        orient: 'vertical',
                        left: 'left'
                    },
                    series: [{
                        name: 'Access From',
                        type: 'pie',
                        radius: '50%',
                        data: filteredData,
                        emphasis: {
                            itemStyle: {
                                shadowBlur: 10,
                                shadowOffsetX: 0,
                                shadowColor: 'rgba(0, 0, 0, 0.5)'
                            }
                        }
                    }]
                });
            });


        </script>
        <!-- End ECharts Pie Chart 1 -->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>



    <!-- 필요한 JavaScript 코드를 추가하세요. -->
    <script>
        function openModal(category) {
            var modal = document.getElementById("modal-" + category);
            modal.style.display = "block";
        }

        function closeModal(category) {
            var modal = document.getElementById("modal-" + category);
            modal.style.display = "none";
        }

    </script>

      </div>
    <script>

 // 주식 데이터
    const firststockData = (${firstPortfolio.us} + ${firstPortfolio.uk} + ${firstPortfolio.jp} + ${firstPortfolio.euro} + ${firstPortfolio.kor} + ${firstPortfolio.ind} + ${firstPortfolio.tw} + ${firstPortfolio.br}).toFixed(4);
    const secondstockData = (${secondPortfolio.us} + ${secondPortfolio.uk} + ${secondPortfolio.jp} + ${secondPortfolio.euro} + ${secondPortfolio.kor} + ${secondPortfolio.ind} + ${secondPortfolio.tw} + ${secondPortfolio.br}).toFixed(4);
    const thirdstockData = (${thirdPortfolio.us} + ${thirdPortfolio.uk} + ${thirdPortfolio.jp} + ${thirdPortfolio.euro} + ${thirdPortfolio.kor} + ${thirdPortfolio.ind} + ${thirdPortfolio.tw} + ${thirdPortfolio.br}).toFixed(4);
    const fourthstockData = (${fourthPortfolio.us} + ${fourthPortfolio.uk} + ${thirdPortfolio.jp} + ${thirdPortfolio.euro} + ${thirdPortfolio.kor} + ${thirdPortfolio.ind} + ${thirdPortfolio.tw} + ${thirdPortfolio.br}).toFixed(4);
    const fifthstockData = (${fifthPortfolio.us} + ${fifthPortfolio.uk} + ${fifthPortfolio.jp} + ${fifthPortfolio.euro} + ${fifthPortfolio.kor} + ${fifthPortfolio.ind} + ${fifthPortfolio.tw} + ${fifthPortfolio.br}).toFixed(4);
    const sixthstockData = (${sixthPortfolio.us} + ${sixthPortfolio.uk} + ${sixthPortfolio.jp} + ${sixthPortfolio.euro} + ${sixthPortfolio.kor} + ${sixthPortfolio.ind} + ${sixthPortfolio.tw} + ${sixthPortfolio.br}).toFixed(4);

    // 채권 데이터
    const firstbondData = (${firstPortfolio.kor3y} + ${firstPortfolio.kor10y} + ${firstPortfolio.us3y} + ${firstPortfolio.us10y}).toFixed(4);
    const secondbondData = (${secondPortfolio.kor3y} + ${secondPortfolio.kor10y} + ${secondPortfolio.us3y} + ${secondPortfolio.us10y}).toFixed(4);
    const thirdbondData = (${thirdPortfolio.kor3y} + ${thirdPortfolio.kor10y} + ${thirdPortfolio.us3y} + ${thirdPortfolio.us10y}).toFixed(4);
    const fourthbondData = (${fourthPortfolio.kor3y} + ${fourthPortfolio.kor10y} + ${fourthPortfolio.us3y} + ${fourthPortfolio.us10y}).toFixed(4);
    const fifthbondData = (${fifthPortfolio.kor3y} + ${fifthPortfolio.kor10y} + ${fifthPortfolio.us3y} + ${fifthPortfolio.us10y}).toFixed(4);
    const sixthbondData = (${sixthPortfolio.kor3y} + ${sixthPortfolio.kor10y} + ${sixthPortfolio.us3y} + ${sixthPortfolio.us10y}).toFixed(4);


    // 안전자산 데이터
    const firstsafeAssetsData = (${firstPortfolio.gold}).toFixed(4);
    const secondsafeAssetsData = (${secondPortfolio.gold}).toFixed(4);
    const thirdsafeAssetsData = (${thirdPortfolio.gold}).toFixed(4);
    const fourthsafeAssetsData = (${fourthPortfolio.gold}).toFixed(4);
    const fifthsafeAssetsData = (${fifthPortfolio.gold}).toFixed(4);
    const sixthsafeAssetsData = (${sixthPortfolio.gold}).toFixed(4);

    

    
    
    document.addEventListener("DOMContentLoaded", function () {
        const chart = new ApexCharts(document.querySelector("#columnChart"), {
            series: [{
                name: '주식',
                data: [firststockData,
                	secondstockData,
                	thirdstockData,
                	fourthstockData,
                	fifthstockData,
                	sixthstockData
                ]
            }, {
                name: '채권',
                data: [firstbondData,
                	secondbondData,
                	thirdbondData,
                	fourthbondData,
                	fifthbondData,
                	sixthbondData
                ]
            }, {
                name: '안전자산',
                data: [firstsafeAssetsData,
                	secondsafeAssetsData,
                	thirdsafeAssetsData,
                	fourthsafeAssetsData,
                	fifthsafeAssetsData,
                	sixthsafeAssetsData
                	
                ]
            }],
            chart: {
                type: 'bar',
                height: 350
            },
            plotOptions: {
                bar: {
                    horizontal: false,
                    columnWidth: '55%',
                    endingShape: 'rounded'
                },
            },
            dataLabels: {
                enabled: false
            },
            stroke: {
                show: true,
                width: 2,
                colors: ['transparent']
            },
            xaxis: {
                categories: ['블랙-안전형', '블랙-위험형', '알파-안전형', '알파-위험형', '나누리-안전형', '나누리-위험형']
            },
            yaxis: {
            	min : 0.00,
            	max : 1.00,
                title: {
                   
                }
            },
            fill: {
                opacity: 1
            },
            tooltip: {
                y: {
                    formatter: function (val) {
                        return "$ " + val + " thousands";
                    }
                }
            }
        });

        chart.render();

        // "자세히보기" 버튼 클릭 시 해당 카테고리에 대한 모달 열기
        const detailButtons = document.querySelectorAll(".detail-button");

        detailButtons.forEach(button => {
            button.addEventListener("click", function () {
                const category = this.getAttribute("data-category");
                const modal = document.getElementById(`modal-${category}`);
                const modalContent = document.getElementById(`modalContent-${category}`);
                modal.style.display = "block";
            });
        });

        // 모달 닫기
        const closeButtons = document.querySelectorAll(".close");

        closeButtons.forEach(button => {
            button.addEventListener("click", function () {
                 const category = this.getAttribute("id").replace("closeModal-", "");
                const modal = document.getElementById(`modal-${category}`);
                 modal.style.display = "none";
            });
        });

        window.addEventListener("click", function (event) {
            if (event.target.className === "modal") {
                const category = event.target.getAttribute("id").replace("modal-", "");
                const modal = document.getElementById(`modal-${category}`);
                modal.style.display = "none";
            }
        });
    });
</script>
</div><br /><br />
<!-- 나누리 안전형 시작문병근 -->
<!-- 차트 -->
        <div style="border-bottom: 2px solid blue;">
          <img class="mb-3 square"  src="${pageContext.request.contextPath}/img/bluebox.jpg" alt="이미지 교체중입니다.">
          <h1 class="mb-4" style="display: inline-block; margin-left:8px; font-weight: bold" > 나누리 -안전형</h1>
        </div>

  <section class="section dashboard">
    <div class="row">

      <!-- Left side columns -->
      <div class="col-lg-8">
        <div class="row">

          <!-- Sales Card -->
          <div class="col-xxl-4 col-md-6">
            <div class="card info-card sales-card">
              <div class="card-body">
                <h5 class="card-title">${stableTop1Name} <span>| Recent Close</span></h5>

                <div class="d-flex align-items-center">
             <!-- <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                 	 <i class="fa-solid fa-won-sign"></i>
                  </div> -->  
                  <div class="ps-3">
				    <h6>${stableLastClose1}</h6>
				    <span class="text-success small pt-1 fw-bold" id="percentageValue1">%</span>
				    <span class="text-muted small pt-2 ps-1" id="changeText1">increase</span>
				    <script>
				        // 첫 번째 div에 대한 함수 호출
				        updatePercentageInfo(${stableLastClose1}, ${stableLastClose1before}, "percentageValue1", "changeText1");
				    </script>
				</div>
                </div>
              </div>

            </div>
          </div><!-- End Sales Card -->

          <!-- Revenue Card -->
          <div class="col-xxl-4 col-md-6">
            <div class="card info-card revenue-card">
              <div class="card-body">
                <h5 class="card-title">${stableTop2Name} <span>| Recent Close</span></h5>

                <div class="d-flex align-items-center">
               <!--<div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <i class="bi bi-currency-dollar"></i>
                  </div>-->
                  <div class="ps-3">
					    <h6>${stableLastClose2}</h6>
					    <span class="text-success small pt-1 fw-bold" id="percentageValue2">%</span>
					    <span class="text-muted small pt-2 ps-1" id="changeText2">increase</span>
					    <script>
					        // 두 번째 div에 대한 함수 호출
					        updatePercentageInfo(${stableLastClose2}, ${stableLastClose2before}, "percentageValue2", "changeText2");
					    </script>
					</div>
                </div>
              </div>

            </div>
          </div><!-- End Revenue Card -->

          <!-- Customers Card -->
          <div class="col-xxl-4 col-xl-12">

            <div class="card info-card customers-card">
              <div class="card-body">
                <h5 class="card-title">${stableTop3Name} <span>| Recent Close</span></h5>

                <div class="d-flex align-items-center">
              <!-- <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <i class="bi bi-currency-euro"></i>
                  </div> -->
                  <div class="ps-3">
					    <h6>${stableLastClose3}</h6>
					    <span class="text-success small pt-1 fw-bold" id="percentageValue3">%</span>
					    <span class="text-muted small pt-2 ps-1" id="changeText3">increase</span>
					    <script>
					        // 세 번째 div에 대한 함수 호출
					        updatePercentageInfo(${stableLastClose3}, ${stableLastClose3before}, "percentageValue3", "changeText3");
					    </script>
					</div>
                </div>

              </div>
            </div>

          </div><!-- End Customers Card -->

          <!-- Reports -->
          <div class="col-12">
              <div class="card">
			    <div class="card-body" style="padding: 0px">
			    	<div class="container">
  						<div class="row">
					      <!-- 첫 번째 컬럼 -->
					      <div class="col">
					      <p style="font-size: 24px; font-weight: bold;">${stableTop1Name}</p>
					        <!-- Area Chart -->
					      	<div id="areaChart1" style="width: 98%; "></div>
					
							    <script>
							    	document.addEventListener("DOMContentLoaded", () => {
							    	  // 'symbols' 리스트에서 데이터 추출
							    	  const closePrices = [];
							    	  const dates = [];
							    	  
							    	  <c:forEach var="stableclose1" items="${stableclose1}">
							    	    closePrices.push(${stableclose1});
							    	  </c:forEach>
							    	  
							    	  <c:forEach var="stabledate1" items="${stabledate1}" varStatus="loop">
							    	      dates.push("${stabledate1}");
							    	  </c:forEach>
						
							    	  // symbolDetail을 JavaScript 객체로 사용
							    	  var symbolDetail = "<c:out value='${stableTop1Name}' />";
						
							    	  // 그래프 생성
							    	  new ApexCharts(document.querySelector("#areaChart1"), {
							    	    series: [
							    	      {
							    	        name: symbolDetail,
							    	        data: closePrices.slice(-30) // closePrices 배열도 최근 30일 데이터만 유지
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
							    	      text: '${stableTop1Name} movement',
							    	      align: 'left'
							    	    },
							    	    labels: dates.slice(-30), // dates 배열에서도 최근 30일 데이터만 유지
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
					      
					      <!-- 두 번째 컬럼 -->
					      <div class="col">
					        <!-- 두 번째 컬럼 내용 -->
					        <p style="font-size: 24px; font-weight: bold;">${stableTop2Name}</p>
					        <!-- 안정형 top2 그려보기 -->
							      <!-- Area Chart -->
							      <div id="areaChart2" style="width: 98%;"></div>
							
							    <script>
							    	document.addEventListener("DOMContentLoaded", () => {
							    	  // 'symbols' 리스트에서 데이터 추출
							    	  const closePrices = [];
							    	  const dates = [];
							    	  
							    	  <c:forEach var="stableclose2" items="${stableclose2}">
							    	    closePrices.push(${stableclose2});
							    	  </c:forEach>
							    	  
							    	  <c:forEach var="stabledate2" items="${stabledate2}" varStatus="loop">
							    	      dates.push("${stabledate2}");
							    	  </c:forEach>
						
							    	  // symbolDetail을 JavaScript 객체로 사용
							    	  var symbolDetail = "<c:out value='${stableTop2Name}' />";
						
							    	  // 그래프 생성
							    	  new ApexCharts(document.querySelector("#areaChart2"), {
							    	    series: [
							    	      {
							    	        name: symbolDetail,
							    	        data: closePrices.slice(-30) // closePrices 배열도 최근 30일 데이터만 유지
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
							    	      text: '${stableTop2Name} movement',
							    	      align: 'left'
							    	    },
							    	    labels: dates.slice(-30), // dates 배열에서도 최근 30일 데이터만 유지
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
							
						
						<!-- 안정형 top2 그려보기 끝 -->
					      </div>
					      
					      <!-- 세 번째 컬럼 -->
					      <div class="col">
					        <p style="font-size: 24px; font-weight: bold;">${stableTop3Name}</p>
					        <!-- 안정형 top3 그려보기 -->
								      <!-- Area Chart -->
							      <div id="areaChart3" style="width: 98%;"></div>
								
								    <script>
								    	document.addEventListener("DOMContentLoaded", () => {
								    	  // 'symbols' 리스트에서 데이터 추출
								    	  const closePrices = [];
								    	  const dates = [];
								    	  
								    	  <c:forEach var="stableclose3" items="${stableclose3}">
								    	    closePrices.push(${stableclose3});
								    	  </c:forEach>
								    	  
								    	  <c:forEach var="stabledate3" items="${stabledate3}" varStatus="loop">
								    	      dates.push("${stabledate3}");
								    	  </c:forEach>
							
								    	  // symbolDetail을 JavaScript 객체로 사용
								    	  var symbolDetail = "<c:out value='${stableTop3Name}' />";
							
								    	  // 그래프 생성
								    	  new ApexCharts(document.querySelector("#areaChart3"), {
								    	    series: [
								    	      {
								    	        name: symbolDetail,
								    	        data: closePrices.slice(-30) // closePrices 배열도 최근 30일 데이터만 유지
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
								    	      text: '${stableTop3Name} movement',
								    	      align: 'left'
								    	    },
								    	    labels: dates.slice(-30), // dates 배열에서도 최근 30일 데이터만 유지
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
								
							
							<!-- 안정형 top3 그려보기 끝 -->
					      </div>
				      </div>
			      </div>
			    </div>
			  </div>
          </div>
          <!-- End Reports -->

          <!-- Top Selling -->
        </div>
      </div><!-- End Left side columns -->

      <!-- Right side columns -->
      <div class="col-lg-4">

	       <!-- Website Traffic -->
	   <div class="card">
	    <div class="card-body pb-0">
	        <h5 class="card-title">나누리 안정형<span>| </span></h5>
	      
	        <!-- Doughnut Chart -->
	        <canvas id="doughnutChart" style="max-height: 400px;"></canvas>
	        <script>
	          document.addEventListener("DOMContentLoaded", () => {
	            // 원래 데이터
	            const originalData = 
	            	[${fifthPortfolio.kor},
	            	${fifthPortfolio.us},
	            	${fifthPortfolio.euro},
	            	${fifthPortfolio.uk},
	            	${fifthPortfolio.jp},
	            	${fifthPortfolio.kor3y},
	            	${fifthPortfolio.kor10y},
	            	${fifthPortfolio.us3y},
	            	${fifthPortfolio.us10y},
	            	${fifthPortfolio.gold},
	            	${fifthPortfolio.br},
	            	${fifthPortfolio.tw},
	            	${fifthPortfolio.ind}];
	      
	            // 데이터의 합계 계산
	            const total = originalData.reduce((acc, value) => acc + value, 0);
	      
	            // 데이터가 전체 비중의 10% 미만인 경우 기타로 묶음
	            const threshold = total * 0.04;
	            const data = originalData.map((value, index) => (value < threshold) ? 0 : value);
	      
	            // 기타 항목 추가
	            const other = total - data.reduce((acc, value) => acc + value, 0);
	            data.push(other);
	      
	            new Chart(document.querySelector('#doughnutChart'), {
	              type: 'doughnut',
	              data: {
	                labels: [
	                  '코스피',
	                  '나스닥',
	                  '유료스탁스',
	                  '영국',
	                  '니케이',
	                  '국채 3년',
	                  '국채 10년',
	                  '미국채 3년',
	                  '미국채 10년',
	                  '금',
	                  '브라질',
	                  '대만',
	                  '인도',
	                  
	
	                ],
	                datasets: [{
	                  label: '기타',
	                  data: data,
	                  backgroundColor: [
	                  'rgb(255, 99, 132)',
	        'rgb(54, 162, 235)',
	        'rgb(255, 205, 86)',
	        'rgb(192, 192, 192)',
	        'rgb(75, 192, 192)',
	        'rgb(153, 102, 255)',
	        'rgb(255, 159, 64)',
	        'rgb(255, 77, 148)',
	        'rgb(106, 168, 79)',
	        'rgb(33, 150, 243)',
	        'rgb(255, 235, 59)',
	        'rgb(233, 30, 99)',
	        'rgb(0, 188, 212)',
	        'rgb(205, 220, 57)'// 기타 항목의 색상
	                  ],
	                  hoverOffset: 4
	                }]
	              }
	            });
	          });
	        </script>
	        <!-- End Doughnut CHart -->
	        <br />
	        <br />
	        <br />
	        <br />
			<br />
	      </div>
	      </div>
    <!-- End Website Traffic -->
      <br />
    </div>
 </div>
 
<!-- 나누리 안정형 끝문병근 -->
<!-- 나누리 위험형 시작문병근 -->
<!-- 차트 -->
        <div style="border-bottom: 2px solid blue;">
          <img class="mb-3 square"  src="${pageContext.request.contextPath}/img/bluebox.jpg" alt="이미지 교체중입니다.">
          <h1 class="mb-4" style="display: inline-block; margin-left:8px; font-weight: bold" > 나누리 -위험형</h1>
        </div>

  <section class="section dashboard">
    <div class="row">

      <!-- Left side columns -->
      <div class="col-lg-8">
        <div class="row">

          <!-- Sales Card -->
          <div class="col-xxl-4 col-md-6">
            <div class="card info-card sales-card">
              <div class="card-body">
                <h5 class="card-title">${dangerTop1Name} <span>| Recent Close</span></h5>

                <div class="d-flex align-items-center">
             <!-- <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                 	 <i class="fa-solid fa-won-sign"></i>
                  </div> -->  
                  <div class="ps-3">
				    <h6>${dangerLastClose1}</h6>
				    <span class="text-success small pt-1 fw-bold" id="percentageValue4">%</span>
				    <span class="text-muted small pt-2 ps-1" id="changeText4">increase</span>
				    <script>
				        // 첫 번째 div에 대한 함수 호출
				        updatePercentageInfo(${dangerLastClose1}, ${dangerLastClose1before}, "percentageValue4", "changeText4");
				    </script>
				</div>
                </div>
              </div>

            </div>
          </div><!-- End Sales Card -->

          <!-- Revenue Card -->
          <div class="col-xxl-4 col-md-6">
            <div class="card info-card revenue-card">
              <div class="card-body">
                <h5 class="card-title">${dangerTop2Name} <span>| Recent Close</span></h5>

                <div class="d-flex align-items-center">
               <!--<div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <i class="bi bi-currency-dollar"></i>
                  </div>-->
                  <div class="ps-3">
					    <h6>${dangerLastClose2}</h6>
					    <span class="text-success small pt-1 fw-bold" id="percentageValue5">%</span>
					    <span class="text-muted small pt-2 ps-1" id="changeText5">increase</span>
					    <script>
					        // 두 번째 div에 대한 함수 호출
					        updatePercentageInfo(${dangerLastClose2}, ${dangerLastClose2before}, "percentageValue5", "changeText5");
					    </script>
					</div>
                </div>
              </div>

            </div>
          </div><!-- End Revenue Card -->

          <!-- Customers Card -->
          <div class="col-xxl-4 col-xl-12">

            <div class="card info-card customers-card">
              <div class="card-body">
                <h5 class="card-title">${dangerTop3Name} <span>| Recent Close</span></h5>

                <div class="d-flex align-items-center">
              <!-- <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <i class="bi bi-currency-euro"></i>
                  </div> -->
                  <div class="ps-3">
					    <h6>${dangerLastClose3}</h6>
					    <span class="text-success small pt-1 fw-bold" id="percentageValue6">%</span>
					    <span class="text-muted small pt-2 ps-1" id="changeText6">increase</span>
					    <script>
					        // 세 번째 div에 대한 함수 호출
					        updatePercentageInfo(${dangerLastClose3}, ${dangerLastClose3before}, "percentageValue6", "changeText6");
					    </script>
					</div>
                </div>

              </div>
            </div>

          </div><!-- End Customers Card -->

          <!-- Reports -->
          <div class="col-12">
              <div class="card">
			    <div class="card-body" style="padding: 0px">
			    	<div class="container">
  						<div class="row">
					      <!-- 첫 번째 컬럼 -->
					      <div class="col">
					      <p style="font-size: 24px; font-weight: bold;">${dangerTop1Name}</p>
					        <!-- Area Chart -->
					      	<div id="areaChart4" style="width: 98%; "></div>
					
							    <script>
							    	document.addEventListener("DOMContentLoaded", () => {
							    	  // 'symbols' 리스트에서 데이터 추출
							    	  const closePrices = [];
							    	  const dates = [];
							    	  
							    	  <c:forEach var="dangerclose1" items="${dangerclose1}">
							    	    closePrices.push(${dangerclose1});
							    	  </c:forEach>
							    	  
							    	  <c:forEach var="dangerdate1" items="${dangerdate1}" varStatus="loop">
							    	      dates.push("${dangerdate1}");
							    	  </c:forEach>
						
							    	  // symbolDetail을 JavaScript 객체로 사용
							    	  var symbolDetail = "<c:out value='${dangerTop1Name}' />";
						
							    	  // 그래프 생성
							    	  new ApexCharts(document.querySelector("#areaChart4"), {
							    	    series: [
							    	      {
							    	        name: symbolDetail,
							    	        data: closePrices.slice(-30) // closePrices 배열도 최근 30일 데이터만 유지
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
							    	      text: '${dangerTop1Name} movement',
							    	      align: 'left'
							    	    },
							    	    labels: dates.slice(-30), // dates 배열에서도 최근 30일 데이터만 유지
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
					      
					      <!-- 두 번째 컬럼 -->
					      <div class="col">
					        <!-- 두 번째 컬럼 내용 -->
					        <p style="font-size: 24px; font-weight: bold;">${dangerTop2Name}</p>
					        <!-- 안정형 top2 그려보기 -->
							      <!-- Area Chart -->
							      <div id="areaChart5" style="width: 98%;"></div>
							
							    <script>
							    	document.addEventListener("DOMContentLoaded", () => {
							    	  // 'symbols' 리스트에서 데이터 추출
							    	  const closePrices = [];
							    	  const dates = [];
							    	  
							    	  <c:forEach var="dangerclose2" items="${dangerclose2}">
							    	    closePrices.push(${dangerclose2});
							    	  </c:forEach>
							    	  
							    	  <c:forEach var="dangerdate2" items="${dangerdate2}" varStatus="loop">
							    	      dates.push("${dangerdate2}");
							    	  </c:forEach>
						
							    	  // symbolDetail을 JavaScript 객체로 사용
							    	  var symbolDetail = "<c:out value='${dangerTop2Name}' />";
						
							    	  // 그래프 생성
							    	  new ApexCharts(document.querySelector("#areaChart5"), {
							    	    series: [
							    	      {
							    	        name: symbolDetail,
							    	        data: closePrices.slice(-30) // closePrices 배열도 최근 30일 데이터만 유지
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
							    	      text: '${dangerTop2Name} movement',
							    	      align: 'left'
							    	    },
							    	    labels: dates.slice(-30), // dates 배열에서도 최근 30일 데이터만 유지
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
							
						
						<!-- 안정형 top2 그려보기 끝 -->
					      </div>
					      
					      <!-- 세 번째 컬럼 -->
					      <div class="col">
					        <p style="font-size: 24px; font-weight: bold;">${dangerTop3Name}</p>
					        <!-- 안정형 top3 그려보기 -->
								      <!-- Area Chart -->
							      <div id="areaChart6" style="width: 98%;"></div>
								
								    <script>
								    	document.addEventListener("DOMContentLoaded", () => {
								    	  // 'symbols' 리스트에서 데이터 추출
								    	  const closePrices = [];
								    	  const dates = [];
								    	  
								    	  <c:forEach var="dangerclose3" items="${dangerclose3}">
								    	    closePrices.push(${dangerclose3});
								    	  </c:forEach>
								    	  
								    	  <c:forEach var="dangerdate3" items="${dangerdate3}" varStatus="loop">
								    	      dates.push("${dangerdate3}");
								    	  </c:forEach>
							
								    	  // symbolDetail을 JavaScript 객체로 사용
								    	  var symbolDetail = "<c:out value='${dangerTop3Name}' />";
							
								    	  // 그래프 생성
								    	  new ApexCharts(document.querySelector("#areaChart6"), {
								    	    series: [
								    	      {
								    	        name: symbolDetail,
								    	        data: closePrices.slice(-30) // closePrices 배열도 최근 30일 데이터만 유지
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
								    	      text: '${dangerTop3Name} movement',
								    	      align: 'left'
								    	    },
								    	    labels: dates.slice(-30), // dates 배열에서도 최근 30일 데이터만 유지
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
								
							
							<!-- 안정형 top3 그려보기 끝 -->
					      </div>
				      </div>
			      </div>
			    </div>
			  </div>
          </div>
          <!-- End Reports -->

          <!-- Top Selling -->
        </div>
      </div><!-- End Left side columns -->

      <!-- Right side columns -->
      <div class="col-lg-4">

       <!-- Website Traffic -->
	   <div class="card">
	    <div class="card-body pb-0">
	        <h5 class="card-title">나누리 위험형<span>| </span></h5>
	      
	        <!-- Doughnut Chart -->
	        <canvas id="doughnutChart2" style="max-height: 400px;"></canvas>
	        <script>
	          document.addEventListener("DOMContentLoaded", () => {
	            // 원래 데이터
	            const originalData = 
	            	[${sixthPortfolio.kor},
	            	${sixthPortfolio.us},
	            	${sixthPortfolio.euro},
	            	${sixthPortfolio.uk},
	            	${sixthPortfolio.jp},
	            	${sixthPortfolio.kor3y},
	            	${sixthPortfolio.kor10y},
	            	${sixthPortfolio.us3y},
	            	${sixthPortfolio.us10y},
	            	${sixthPortfolio.gold},
	            	${sixthPortfolio.br},
	            	${sixthPortfolio.tw},
	            	${sixthPortfolio.ind}];
	      
	            // 데이터의 합계 계산
	            const total = originalData.reduce((acc, value) => acc + value, 0);
	      
	            // 데이터가 전체 비중의 10% 미만인 경우 기타로 묶음
	            const threshold = total * 0.04;
	            const data = originalData.map((value, index) => (value < threshold) ? 0 : value);
	      
	            // 기타 항목 추가
	            const other = total - data.reduce((acc, value) => acc + value, 0);
	            data.push(other);
	      
	            new Chart(document.querySelector('#doughnutChart2'), {
	              type: 'doughnut',
	              data: {
	                labels: [
	                  '코스피',
	                  '나스닥',
	                  '유료스탁스',
	                  '영국',
	                  '니케이',
	                  '국채 3년',
	                  '국채 10년',
	                  '미국채 3년',
	                  '미국채 10년',
	                  '금',
	                  '브라질',
	                  '대만',
	                  '인도',
	                  
	
	                ],
	                datasets: [{
	                  label: '기타',
	                  data: data,
	                  backgroundColor: [
	                  'rgb(255, 99, 132)',
	        'rgb(54, 162, 235)',
	        'rgb(255, 205, 86)',
	        'rgb(192, 192, 192)',
	        'rgb(75, 192, 192)',
	        'rgb(153, 102, 255)',
	        'rgb(255, 159, 64)',
	        'rgb(255, 77, 148)',
	        'rgb(106, 168, 79)',
	        'rgb(33, 150, 243)',
	        'rgb(255, 235, 59)',
	        'rgb(233, 30, 99)',
	        'rgb(0, 188, 212)',
	        'rgb(205, 220, 57)'// 기타 항목의 색상
	                  ],
	                  hoverOffset: 4
	                }]
	              }
	            });
	          });
	        </script>
	        <!-- End Doughnut CHart -->
	        <br />
	        <br />
	        <br />
	        <br />
			<br />
	      </div>
	      </div>
    <!-- End Website Traffic -->
      <br />
    </div>
 </div>

<!-- 나누리 위험형 끝문병근 -->






<br /><br /><br /><br /><br />
  </section>
</main>

<br /><br /><br /><br /><br />
<!-- Main (div id=main) 끝 -->

    <!-- ======= Footer ======= -->
    	<%@include file = "/WEB-INF/view/include/footer.jsp" %>
	<!-- End Footer -->
</body>
</html>

<!--
${pageContext.request.contextPath}





-->
