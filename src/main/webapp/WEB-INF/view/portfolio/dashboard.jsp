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
  </head>

<body>
   <!-- ======= Header ======= -->
  	<%@include file = "/WEB-INF/view/include/Newheader.jsp" %>
  	    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   <!-- End Sidebar-->

<!-- Main -->
<main id="main" class="main">
<!-- 메인자리임 -->
<div class="pagetitle">
    <h1>수익률</h1>

  </div><!-- End Page Title -->

  <section class="section dashboard">
    <div class="row">

      <!-- Left side columns -->
      <div class="col-lg-8">
        <div class="row">

          <!-- Sales Card -->
          <div class="col-xxl-4 col-md-6">
            <div class="card info-card sales-card">
              <div class="card-body">
                <h5 class="card-title">주식 <span>| Today</span></h5>

                <div class="d-flex align-items-center">
                  <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <i class="bi bi-currency-dollar"></i>
                  </div>
                  <div class="ps-3">
                    <h6>145</h6>
                    <span class="text-success small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">increase</span>

                  </div>
                </div>
              </div>

            </div>
          </div><!-- End Sales Card -->

          <!-- Revenue Card -->
          <div class="col-xxl-4 col-md-6">
            <div class="card info-card revenue-card">
              <div class="card-body">
                <h5 class="card-title">채권 <span>| This Month</span></h5>

                <div class="d-flex align-items-center">
                  <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <i class="bi bi-currency-dollar"></i>
                  </div>
                  <div class="ps-3">
                    <h6>$3,264</h6>
                    <span class="text-success small pt-1 fw-bold">8%</span> <span class="text-muted small pt-2 ps-1">increase</span>

                  </div>
                </div>
              </div>

            </div>
          </div><!-- End Revenue Card -->

          <!-- Customers Card -->
          <div class="col-xxl-4 col-xl-12">

            <div class="card info-card customers-card">
              <div class="card-body">
                <h5 class="card-title">안전자산 <span>| This Year</span></h5>

                <div class="d-flex align-items-center">
                  <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <i class="bi bi-currency-dollar"></i>
                  </div>
                  <div class="ps-3">
                    <h6>1244</h6>
                    <span class="text-danger small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">decrease</span>

                  </div>
                </div>

              </div>
            </div>

          </div><!-- End Customers Card -->

          <!-- Reports -->
          <div class="col-12">
            <div class="card">
              <div class="card-body">
                <h5 class="card-title">종목 수익률 <span>/Today</span></h5>

                <!-- Line Chart -->
                <div id="reportsChart"></div>

                <script>
                  document.addEventListener("DOMContentLoaded", () => {
                    new ApexCharts(document.querySelector("#reportsChart"), {
                      series: [{
                        name: '주식',
                        data: [31, 40, 28, 51, 42, 82, 56],
                      }, {
                        name: '채권',
                        data: [11, 32, 45, 32, 34, 52, 41]
                      }, {
                        name: '안전자산',
                        data: [15, 11, 32, 18, 9, 24, 11]
                      }],
                      chart: {
                        height: 350,
                        type: 'area',
                        toolbar: {
                          show: false
                        },
                      },
                      markers: {
                        size: 4
                      },
                      colors: ['#4154f1', '#2eca6a', '#ff771d'],
                      fill: {
                        type: "gradient",
                        gradient: {
                          shadeIntensity: 1,
                          opacityFrom: 0.3,
                          opacityTo: 0.4,
                          stops: [0, 90, 100]
                        }
                      },
                      dataLabels: {
                        enabled: false
                      },
                      stroke: {
                        curve: 'smooth',
                        width: 2
                      },
                      xaxis: {
                        type: 'datetime',
                        categories: ["2018-09-19T00:00:00.000Z", "2018-09-19T01:30:00.000Z", "2018-09-19T02:30:00.000Z", "2018-09-19T03:30:00.000Z", "2018-09-19T04:30:00.000Z", "2018-09-19T05:30:00.000Z", "2018-09-19T06:30:00.000Z"]
                      },
                      tooltip: {
                        x: {
                          format: 'dd/MM/yy HH:mm'
                        },
                      }
                    }).render();
                  });
                </script>
                <!-- End Line Chart -->

              </div>

            </div>
          </div><!-- End Reports -->

          <!-- Recent Sales -->
          <div class="col-12">
            <div class="card recent-sales overflow-auto">
              <div class="card-body">
                <h5 class="card-title">종목 검색 <span>| Today</span></h5>

                <table class="table table-borderless datatable">
                  <thead>
                    <tr>
                      <th scope="col">종목코드</th>
                      <th scope="col">종목명</th>
                      <th scope="col">상품설명</th>
                      <th scope="col">가격</th>
                      <th scope="col">안전도</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th scope="row"><a href="#">#2457</a></th>
                      <td>Brandon Jacob</td>
                      <td><a href="#" class="text-primary">At praesentium minu</a></td>
                      <td>$64</td>
                      <td><span class="badge bg-success">Approved</span></td>
                    </tr>
                    <tr>
                      <th scope="row"><a href="#">#2147</a></th>
                      <td>Bridie Kessler</td>
                      <td><a href="#" class="text-primary">Blanditiis dolor omnis similique</a></td>
                      <td>$47</td>
                      <td><span class="badge bg-warning">Pending</span></td>
                    </tr>
                    <tr>
                      <th scope="row"><a href="#">#2049</a></th>
                      <td>Ashleigh Langosh</td>
                      <td><a href="#" class="text-primary">At recusandae consectetur</a></td>
                      <td>$147</td>
                      <td><span class="badge bg-success">Approved</span></td>
                    </tr>
                    <tr>
                      <th scope="row"><a href="#">#2644</a></th>
                      <td>Angus Grady</td>
                      <td><a href="#" class="text-primar">Ut voluptatem id earum et</a></td>
                      <td>$67</td>
                      <td><span class="badge bg-danger">Rejected</span></td>
                    </tr>
                    <tr>
                      <th scope="row"><a href="#">#2644</a></th>
                      <td>Raheem Lehner</td>
                      <td><a href="#" class="text-primary">Sunt similique distinctio</a></td>
                      <td>$165</td>
                      <td><span class="badge bg-success">Approved</span></td>
                    </tr>
                  </tbody>
                </table>

              </div>

            </div>
          </div><!-- End Recent Sales -->

          <!-- Top Selling -->
          <div class="col-12">
            <div class="card top-selling overflow-auto">
              <div class="card-body pb-0">
                <h5 class="card-title">최고 수익률<span>| Today</span></h5>

                <table class="table table-borderless">
                  <thead>
                    <tr>
                      <th scope="col">종목코드</th>
                      <th scope="col">종목명</th>
                      <th scope="col">가격</th>

                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                        <th scope="row"><a href="#">#2147</a></th>
                      <td><a href="#" class="text-primary fw-bold">Ut inventore ipsa voluptas nulla</a></td>
                      <td>$64</td>

                    </tr>
                    <tr>
                        <th scope="row"><a href="#">#2147</a></th>
                      <td><a href="#" class="text-primary fw-bold">Exercitationem similique doloremque</a></td>
                      <td>$46</td>

                    </tr>
                    <tr>
                        <th scope="row"><a href="#">#2147</a></th>
                      <td><a href="#" class="text-primary fw-bold">Doloribus nisi exercitationem</a></td>
                      <td>$59</td>

                    </tr>
                    <tr>
                        <th scope="row"><a href="#">#2147</a></th>
                      <td><a href="#" class="text-primary fw-bold">Officiis quaerat sint rerum error</a></td>
                      <td>$32</td>

                    </tr>
                    <tr>
                        <th scope="row"><a href="#">#2147</a></th>
                      <td><a href="#" class="text-primary fw-bold">Sit unde debitis delectus repellendus</a></td>
                      <td>$79</td>

                    </tr>
                  </tbody>
                </table>

              </div>
            </div>
          </div><!-- End Top Selling -->


        </div>
      </div><!-- End Left side columns -->

      <!-- Right side columns -->
      <div class="col-lg-4">

       <!-- Website Traffic -->
       <div class="card">
      <div class="card-body pb-0">
        <h5 class="card-title">3종목 수익률 <span>| </span></h5>

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
                    name: '주식'
                  },

                  {
                    value: 484,
                    name: '채권'
                  },
                  {
                    value: 300,
                    name: '안전자산'
                  }
                ]
              }]
            });
          });
        </script>

      </div>
      </div>
    <!-- End Website Traffic -->
    <div class="card">
    <div class="card-body pb-0">
        <h5 class="card-title">전체 종목 차트<span>| </span></h5>

        <!-- Doughnut Chart -->
        <canvas id="doughnutChart" style="max-height: 400px;"></canvas>
        <script>
          document.addEventListener("DOMContentLoaded", () => {
            // 원래 데이터
            const originalData = [50,40,30,80,60,70,90,55,44,66,77,55,33,44];

            // 데이터의 합계 계산
            const total = originalData.reduce((acc, value) => acc + value, 0);

            // 데이터가 전체 비중의 10% 미만인 경우 기타로 묶음
            const threshold = total * 0.08;
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
      </div>
      </div>
      <br />
        <!-- Budget Report -->
        <div class="card">
          <div class="card-body pb-0">
            <h5 class="card-title">성향분석 <span>| This Month</span></h5>

            <div id="budgetChart" style="min-height: 400px;" class="echart"></div>

            <script>
              document.addEventListener("DOMContentLoaded", () => {
                var budgetChart = echarts.init(document.querySelector("#budgetChart")).setOption({
                  legend: {
                    data: ['공격형', '안전형']
                  },
                  radar: {
                    // shape: 'circle',
                    indicator: [{
                        name: 'Sales',
                        max: 6500
                      },
                      {
                        name: 'Administration',
                        max: 16000
                      },
                      {
                        name: 'Information Technology',
                        max: 30000
                      },
                      {
                        name: 'Customer Support',
                        max: 38000
                      },
                      {
                        name: 'Development',
                        max: 52000
                      },
                      {
                        name: 'Marketing',
                        max: 25000
                      }
                    ]
                  },
                  series: [{
                    name: 'Budget vs spending',
                    type: 'radar',
                    data: [{
                        value: [4200, 3000, 20000, 35000, 50000, 18000],
                        name: '공격형'
                      },
                      {
                        value: [5000, 14000, 28000, 26000, 42000, 21000],
                        name: '안전형'
                      }
                    ]
                  }]
                });
              });
            </script>

          </div>
        </div><!-- End Budget Report -->




      </div><!-- End Right side columns -->

    </div>
  </section>



<br /><br /><br /><br /><br />
<div class="card-body">
    <h5 class="card-title">비교</h5>

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
        <div id="echartsPieChart1" style="min-height: 400px;" class="echart"></div>
        <script>
        $('#exampleModal').on('shown.bs.modal', function () {
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
        <div id="echartsPieChart12" style="min-height: 400px;" class="echart"></div>
        <script>
        $('#exampleModal2').on('shown.bs.modal', function () {
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
        <div id="echartsPieChart123" style="min-height: 400px;" class="echart"></div>
        <script>
        $('#exampleModal3').on('shown.bs.modal', function () {
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
        <div id="echartsPieChart1234" style="min-height: 400px;" class="echart"></div>
        <script>
        $('#exampleModal4').on('shown.bs.modal', function () {
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
        <div id="echartsPieChart12345" style="min-height: 400px;" class="echart"></div>
        <script>
        $('#exampleModal5').on('shown.bs.modal', function () {
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
        <div id="echartsPieChart123456" style="min-height: 400px;" class="echart"></div>
        <script>
        $('#exampleModal6').on('shown.bs.modal', function () {
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
    document.addEventListener("DOMContentLoaded", function () {
        const chart = new ApexCharts(document.querySelector("#columnChart"), {
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
                categories: ['블랙-안전형', '블랙-위험형', '알파-안전형', '알파-위험형', '나누리-안전형', '나누리-위험형']
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
</div>
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
