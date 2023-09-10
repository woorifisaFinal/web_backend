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
<header id="header" class="header fixed-top d-flex align-items-center">
    <div class="d-flex align-items-center justify-content-between">
        <i
                class="bi bi-list toggle-sidebar-btn"
                style="float: left; margin-right: 30px"
        ></i>
        <a href="main" class="logo d-flex align-items-center">
            <img src="${pageContext.request.contextPath}img/logo.png" alt="" />
            <span class="d-none d-lg-block">우리FISA</span>
        </a>
    </div>
    <!-- End Logo -->

    <div class="col-10">
        <div class="container">
            <div class="row">
                <div class="col-8">
                    <%-- Search Bar--%>
                    <div class="search-bar d-flex justify-content-start">
                        <form
                                class="search-form d-flex align-items-center"
                                method="post"
                                action="symbol/search"
                        >
                            <%-- name으로 준 keyword에 담아서 서버로 전달한다--%>
                            <input
                                    type="text"
                                    name="keyword"
                                    placeholder="종목을 검색하세요"
                                    title="Enter search keyword"
                                    class="form-control form-control-sm"
                            />
                            <button type="submit" title="Search">
                                <i class="bi bi-search"></i>
                            </button>
                        </form>
                    </div>
                    <!-- End Search Bar -->
                </div>
                <div class="col-4 text-end"></div>
            </div>
            <div class="d-flex custom-button-group">
                <a
                        href="user/login"
                        class="btn btn-custom"
                        style="
								height: 45px;
								margin-right: 10px;
								color: grey;
								font-size: 14px;
							"
                >
                    로그인
                </a>
                <a
                        href="user/signup"
                        class="btn btn"
                        style="height: 45px; color: grey; font-size: 14px"
                >
                    회원가입
                </a>
            </div>
        </div>
    </div>
</header>
<!-- End Header -->

<!-- ======= Sidebar ======= -->
<aside id="sidebar" class="sidebar">
    <ul class="sidebar-nav" id="sidebar-nav">
        <li class="nav-item">
            <a
                    class="nav-link"
                    href="portfolio/dashboard"
            >
                <i class="bi bi-grid"></i>
                <span>대시보드</span>
            </a>
        </li>
        <!-- End Dashboard Nav -->

        <li class="nav-item">
            <a
                    class="nav-link collapsed"
                    data-bs-target="#components-nav"
                    data-bs-toggle="collapse"
                    href="#"
            >
                <i class="bi bi-graph-up"></i><span>종목</span
            ><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul
                    id="components-nav"
                    class="nav-content collapse"
                    data-bs-parent="#sidebar-nav"
            >
                <li>
                    <a href="symbol/detail">
                        <i class="bi bi-circle"></i><span>코스피</span>
                    </a>
                </li>
                <li>
                    <a href="symbol/detail">
                        <i class="bi bi-circle"></i><span>나스닥</span>
                    </a>
                </li>
                <li>
                    <a href="symbol/detail">
                        <i class="bi bi-circle"></i><span>유로 스탁스</span>
                    </a>
                </li>

                <li>
                    <a href="symbol/detail">
                        <i class="bi bi-circle"></i><span>영국</span>
                    </a>
                </li>
                <li>
                    <a href="symbol/detail">
                        <i class="bi bi-circle"></i><span>니케이</span>
                    </a>
                </li>
                <li>
                    <a href="symbol/detail">
                        <i class="bi bi-circle"></i><span>국채 3년</span>
                    </a>
                </li>
                <li>
                    <a href="symbol/detail">
                        <i class="bi bi-circle"></i><span>국채 10년</span>
                    </a>
                </li>
                <li>
                    <a href="symbol/detail">
                        <i class="bi bi-circle"></i><span>미국채 3년</span>
                    </a>
                </li>
                <li>
                    <a href="symbol/detail">
                        <i class="bi bi-circle"></i><span>미국채 10년</span>
                    </a>
                </li>
                <li>
                    <a href="symbol/detail">
                        <i class="bi bi-circle"></i><span>금</span>
                    </a>
                </li>
                <li>
                    <a href="symbol/detail">
                        <i class="bi bi-circle"></i><span>브라질</span>
                    </a>
                </li>
                <li>
                    <a href="symbol/detail">
                        <i class="bi bi-circle"></i><span>대만</span>
                    </a>
                </li>
                <li>
                    <a href="symbol/detail">
                        <i class="bi bi-circle"></i><span>인도</span>
                    </a>
                </li>
            </ul>
        </li>
        <!-- End Components Nav -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="portfolio/comparePortfolios">
                <i class="bi bi-layout-text-window-reverse"></i
                ><span>상품비교함</span>
            </a>
        </li>

        <li class="nav-item">
            <a class="nav-link collapsed" href="board/list">
                <i class="bi bi-bar-chart"></i><span>공지사항</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link collapsed" href="survey">
                <i class="bi bi-card-checklist"></i><span>투자 성향 설문조사</span>
            </a>
        </li>
    </ul>
</aside>
<!-- End Sidebar-->

<!-- Main -->
<div id="main" class="container">

    <section class="section profile">
        <div class="row">
            <div class="col-xl-4">

                <div class="card">
                    <div class="card-body profile-card pt-4 d-flex flex-column align-items-center">

                        <img src="${pageContext.request.contextPath}/img/03.png" alt="Profile" class="rounded-circle" style="width: 2000px;">
                        <h2>김우리</h2>
                        <h3>AI Enginner</h3>

                    </div>
                </div>

            </div>

            <div class="col-xl-8">

                <div class="card">
                    <div class="card-body pt-3">
                        <!-- Bordered Tabs -->
                        <ul class="nav nav-tabs nav-tabs-bordered">

                            <li class="nav-item">
                                <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#profile-overview">상세정보</button>
                            </li>

                        </ul>
                        <div class="tab-content pt-2">

                            <div class="tab-pane fade show active profile-overview" id="profile-overview">
                                <h5 class="card-title">정보</h5>
                                <p class="small fst-italic">화이팅</p>

                                <h5 class="card-title">세부정보</h5>

                                <div class="row">
                                    <div class="col-lg-3 col-md-4 label ">이름</div>
                                    <div class="col-lg-9 col-md-8">김우리</div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-3 col-md-4 label">ID</div>
                                    <div class="col-lg-9 col-md-8">WOORI_KIM</div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-3 col-md-4 label">Email</div>
                                    <div class="col-lg-9 col-md-8">	woorikim@woori.com</div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-3 col-md-4 label">비밀번호</div>
                                    <div class="col-lg-9 col-md-8">****</div>
                                </div>

                                <div class="d-flex justify-content-center">
                                    <button class="btn btn-info" style="margin-right: 10px" onClick="location.href='user/checkpw'">
                                        수정하기
                                    </button>
                                    <button class="btn btn-secondary" id="withdrawButton" >
                                        탈퇴하기</button>

                                    <!-- 확인 모달 -->
                                    <div class="modal fade" id="confirmationModal" tabindex="-1" aria-labelledby="confirmationModalLabel" aria-hidden="true">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="confirmationModalLabel">확인</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="닫기"></button>
                                                </div>
                                                <div class="modal-body">
                                                    <p>정말 탈퇴하시겠습니까?</p>
                                                    <input type="password" id="password" class="form-control" placeholder="비밀번호를 입력하세요">
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
                                                    <button type="button" class="btn btn-danger" id="confirmWithdrawal" onClick="location.href='user/withdrawal'">탈퇴하기</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>

                            <div class="tab-pane fade profile-edit pt-3" id="profile-edit">


                                <!-- Settings Form -->
                                <form>

                                    <div class="row mb-3">
                                        <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Email Notifications</label>
                                        <div class="col-md-8 col-lg-9">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="changesMade" checked>
                                                <label class="form-check-label" for="changesMade">
                                                    Changes made to your account
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="newProducts" checked>
                                                <label class="form-check-label" for="newProducts">
                                                    Information on new products and services
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="proOffers">
                                                <label class="form-check-label" for="proOffers">
                                                    Marketing and promo offers
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="securityNotify" checked disabled>
                                                <label class="form-check-label" for="securityNotify">
                                                    Security alerts
                                                </label>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="text-center">
                                        <button type="submit" class="btn btn-primary">Save Changes</button>
                                    </div>
                                </form><!-- End settings Form -->

                            </div>

                        </div><!-- End Bordered Tabs -->

                    </div>
                </div>

            </div>
        </div>
    </section>
</div>
<!-- Main (div id=main) 끝 -->

<!-- ======= Footer ======= -->
<footer class="footer">
    <div class="copyright">
        &copy; Copyright <strong><span>NiceAdmin</span></strong
    >. All Rights Reserved
    </div>
    <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
    </div>
</footer>
<!-- End Footer -->
</body>
</html>

<!--





-->
