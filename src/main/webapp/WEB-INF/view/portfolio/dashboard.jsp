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
<div id="main" class="container">

    <!-- 원래는 col-lg-6이엇는데 일단 걍 늘려놓음 -->
    <div class="col-lg">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">Column Chart</h5>

                <!-- Column Chart -->
                <div id="columnChart"></div>

                <!-- Modal 1 -->
                <div class="modal fade" id="modal1" tabindex="-1" role="dialog" aria-labelledby="modal1Label" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="modal1Label">블-안</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                모달1 내용
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Modal 1 -->

                <!-- Modal 2 -->
                <div class="modal fade" id="modal2" tabindex="-1" role="dialog" aria-labelledby="modal2Label" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="modal2Label">블-위</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                모달2 내용
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Modal 2 -->

                <!-- Modal 3 -->
                <div class="modal fade" id="modal3" tabindex="-1" role="dialog" aria-labelledby="modal3Label" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="modal3Label">알-안</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                모달3 내용
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Modal 3 -->

                <!-- Modal 4 -->
                <div class="modal fade" id="modal4" tabindex="-1" role="dialog" aria-labelledby="modal4Label" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="modal4Label">알-위</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                모달4 내용
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Modal 4 -->

                <!-- Modal 5 -->
                <div class="modal fade" id="modal5" tabindex="-1" role="dialog" aria-labelledby="modal5Label" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="modal5Label">나-안</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                모달5 내용
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Modal 5 -->

                <!-- Modal 6 -->
                <div class="modal fade" id="modal6" tabindex="-1" role="dialog" aria-labelledby="modal6Label" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="modal6Label">나-위</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                모달6 내용
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Modal 6 -->

                <script>
                    document.addEventListener("DOMContentLoaded", () => {
                        new ApexCharts(document.querySelector("#columnChart"), {
                            series: [{
                                name: '주식',
                                data: [100, 100, 100, 100, 100, 100]
                            }, {
                                name: '채권',
                                data: [76, 85, 101, 25, 90, 40]
                            }, {
                                name: '안전자산',
                                data: [35, 41, 36, 70, 30, 40]
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
                                categories: ['블-안전', '블-위험', '알-안전', '알-위험', '나-안전', '나-위험']
                            },
                            yaxis: {
                                title: {
                                    text: '$ (thousands)'
                                }
                            },
                            fill: {
                                opacity: 1
                            },
                            tooltip: {
                                y: {
                                    formatter: function (val) {
                                        return "$ " + val + " thousands"
                                    }
                                }
                            }
                        }).render();

                        // 모달 1 열기
                        $('#modal1').on('hidden.bs.modal', function () {
                            $('#modal1').modal('dispose');
                        });
                        $('#modal1').on('show.bs.modal', function () {
                            $('#modal1').modal({backdrop: 'static', keyboard: false});
                        });

                        // 모달 2 열기
                        $('#modal2').on('hidden.bs.modal', function () {
                            $('#modal2').modal('dispose');
                        });
                        $('#modal2').on('show.bs.modal', function () {
                            $('#modal2').modal({backdrop: 'static', keyboard: false});
                        });

                        // 모달 3 열기
                        $('#modal3').on('hidden.bs.modal', function () {
                            $('#modal3').modal('dispose');
                        });
                        $('#modal3').on('show.bs.modal', function () {
                            $('#modal3').modal({backdrop: 'static', keyboard: false});
                        });

                        // 모달 4 열기
                        $('#modal4').on('hidden.bs.modal', function () {
                            $('#modal4').modal('dispose');
                        });
                        $('#modal4').on('show.bs.modal', function () {
                            $('#modal4').modal({backdrop: 'static', keyboard: false});
                        });

                        // 모달 5 열기
                        $('#modal5').on('hidden.bs.modal', function () {
                            $('#modal5').modal('dispose');
                        });
                        $('#modal5').on('show.bs.modal', function () {
                            $('#modal5').modal({backdrop: 'static', keyboard: false});
                        });

                        // 모달 6 열기
                        $('#modal6').on('hidden.bs.modal', function () {
                            $('#modal6').modal('dispose');
                        });
                        $('#modal6').on('show.bs.modal', function () {
                            $('#modal6').modal({backdrop: 'static', keyboard: false});
                        });
                    });
                </script>
                <!-- End Column Chart 스크립트 -->
            </div>
        </div>
    </div>
    <!-- TODO : 여기는 누구 자리인가여,,?? -->
    <!-- 첫번째 차트 줄: 차트 1,2 -->
    <div class="container">
        <div class="row">
            <h4>블랙</h4>
            <!-- 첫 번째 카드: 차트 1 -->
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <!-- ECharts Pie Chart 1 -->
                        <div id="echartsPieChart1" style="min-height: 400px;" class="echart"></div>

                        <script>
                            document.addEventListener("DOMContentLoaded", () => {
                                const chartData = [
                                    { value: 44, name: 'us' },
                                    { value: 55, name: 'uk' },
                                    { value: 13, name: 'jp' },
                                    { value: 43, name: 'euro' },
                                    { value: 22, name: 'kor' },
                                    { value: 30, name: 'ind' },
                                    { value: 45, name: 'tw' },
                                    { value: 80, name: 'br' },
                                    { value: 90, name: 'kor3y' },
                                    { value: 14, name: 'kor10y' },
                                    { value: 19, name: 'us3y' },
                                    { value: 33, name: 'us10y' },
                                    { value: 14, name: 'gold' }
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
                                        text: '위험형',
                                        subtext: 'Data',
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
                </div>
            </div>

            <!-- 두 번째 카드: 차트 2 -->
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <!-- ECharts Pie Chart 2 -->
                        <div id="echartsPieChart2" style="min-height: 400px;" class="echart"></div>

                        <script>
                            document.addEventListener("DOMContentLoaded", () => {
                                const chartData = [
                                    { value: 10, name: 'us' },
                                    { value: 30, name: 'uk' },
                                    { value: 25, name: 'jp' },
                                    { value: 15, name: 'euro' },
                                    { value: 20, name: 'kor' },
                                    { value: 30, name: 'ind' },
                                    { value: 45, name: 'tw' },
                                    { value: 80, name: 'br' },
                                    { value: 90, name: 'kor3y' },
                                    { value: 14, name: 'kor10y' },
                                    { value: 19, name: 'us3y' },
                                    { value: 33, name: 'us10y' },
                                    { value: 14, name: 'gold' }
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
                                const chart2 = echarts.init(document.querySelector("#echartsPieChart2"));
                                chart2.setOption({
                                    title: {
                                        text: '안전형',
                                        subtext: 'Data',
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
                        <!-- End ECharts Pie Chart 2 -->

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 두 번째 차트 줄: 차트 3,4 -->
    <div class="container">
        <div class="row">
            <h4>블랙알파</h4>
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-body">

                        <!-- ECharts Pie Chart 3 -->
                        <div id="echartsPieChart3" style="min-height: 400px;" class="echart"></div>
                        <script>
                            document.addEventListener("DOMContentLoaded", () => {
                                const chartData = [
                                    { value: 30, name: 'us' },
                                    { value: 20, name: 'uk' },
                                    { value: 40, name: 'jp' },
                                    { value: 10, name: 'euro' },
                                    { value: 50, name: 'kor' },
                                    { value: 30, name: 'ind' },
                                    { value: 45, name: 'tw' },
                                    { value: 80, name: 'br' },
                                    { value: 90, name: 'kor3y' },
                                    { value: 14, name: 'kor10y' },
                                    { value: 19, name: 'us3y' },
                                    { value: 33, name: 'us10y' },
                                    { value: 14, name: 'gold' }
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
                                const chart3 = echarts.init(document.querySelector("#echartsPieChart3"));
                                chart3.setOption({
                                    title: {
                                        text: '위험형',
                                        subtext: 'Data',
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
                        <!-- End ECharts Pie Chart 3 -->

                    </div>
                </div>
            </div>

            <!-- 네 번째 카드: 차트 4 -->
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <!-- ECharts Pie Chart 4 -->
                        <div id="echartsPieChart4" style="min-height: 400px;" class="echart"></div>

                        <script>
                            document.addEventListener("DOMContentLoaded", () => {
                                const chartData = [
                                    { value: 44, name: 'us' },
                                    { value: 55, name: 'uk' },
                                    { value: 13, name: 'jp' },
                                    { value: 43, name: 'euro' },
                                    { value: 22, name: 'kor' },
                                    { value: 30, name: 'ind' },
                                    { value: 45, name: 'tw' },
                                    { value: 80, name: 'br' },
                                    { value: 90, name: 'kor3y' },
                                    { value: 14, name: 'kor10y' },
                                    { value: 19, name: 'us3y' },
                                    { value: 33, name: 'us10y' },
                                    { value: 14, name: 'gold' }
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
                                const chart4 = echarts.init(document.querySelector("#echartsPieChart4"));
                                chart4.setOption({
                                    title: {
                                        text: '안전형',
                                        subtext: 'Data',
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
                        <!-- End ECharts Pie Chart 4 -->

                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- 세번째 차트 줄: 차트 5,6 -->
    <div class="container">
        <div class="row">
            <h4>나누리</h4>
            <!-- 다섯 번째 카드: 차트 5 -->
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <!-- ECharts Pie Chart 5 -->
                        <div id="echartsPieChart5" style="min-height: 400px;" class="echart"></div>
                        <script>
                            document.addEventListener("DOMContentLoaded", () => {
                                const chartData = [
                                    { value: 10, name: 'us' },
                                    { value: 30, name: 'uk' },
                                    { value: 25, name: 'jp' },
                                    { value: 15, name: 'euro' },
                                    { value: 20, name: 'kor' },
                                    { value: 30, name: 'ind' },
                                    { value: 45, name: 'tw' },
                                    { value: 80, name: 'br' },
                                    { value: 90, name: 'kor3y' },
                                    { value: 14, name: 'kor10y' },
                                    { value: 19, name: 'us3y' },
                                    { value: 33, name: 'us10y' },
                                    { value: 14, name: 'gold' }
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
                                const chart5 = echarts.init(document.querySelector("#echartsPieChart5"));
                                chart5.setOption({
                                    title: {
                                        text: '위험형',
                                        subtext: 'Data',
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
                        <!-- End ECharts Pie Chart 5 -->
                    </div>
                </div>
            </div>

            <!-- 여섯 번째 카드: 차트 6 -->
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <!-- ECharts Pie Chart 6 -->
                        <div id="echartsPieChart6" style="min-height: 400px;" class="echart"></div>
                        <script>
                            document.addEventListener("DOMContentLoaded", () => {
                                const chartData = [
                                    { value: 60, name: 'us' },
                                    { value: 15, name: 'uk' },
                                    { value: 10, name: 'jp' },
                                    { value: 5, name: 'euro' },
                                    { value: 20, name: 'kor' },
                                    { value: 30, name: 'ind' },
                                    { value: 45, name: 'tw' },
                                    { value: 80, name: 'br' },
                                    { value: 90, name: 'kor3y' },
                                    { value: 14, name: 'kor10y' },
                                    { value: 19, name: 'us3y' },
                                    { value: 33, name: 'us10y' },
                                    { value: 14, name: 'gold' }
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
                                const chart6 = echarts.init(document.querySelector("#echartsPieChart6"));
                                chart6.setOption({
                                    title: {
                                        text: '안전형',
                                        subtext: 'Data',
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
                        <!-- End ECharts Pie Chart 6 -->
                    </div>
                </div>
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
${pageContext.request.contextPath}





-->
