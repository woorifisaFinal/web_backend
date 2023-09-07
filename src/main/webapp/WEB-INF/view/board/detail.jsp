<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Final Project</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

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


  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.18.0/font/bootstrap-icons.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
  <!-- =======================================================
  * Template Name: NiceAdmin
  * Updated: May 30 2023 with Bootstrap v5.3.0
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <i class="bi bi-list toggle-sidebar-btn" style="float: left; margin-right: 30px;"></i>
      <a href="index.html" class="logo d-flex align-items-center">
      <img src="${pageContext.request.contextPath}/img/logo.png" alt="">
      <span class="d-none d-lg-block">우리FISA</span>
      </a>
      
    
     


    </div><!-- End Logo -->
  
    <div class="col-10">
      <div class="container">
      <div class="row">
        <div class="col-8">
          <div class="search-bar d-flex justify-content-start">
            <form class="search-form d-flex align-items-center" method="POST" action="#">
                <input type="text" name="query" placeholder="종목을 검색하세요" title="Enter search keyword" class="form-control form-control-sm">
                <button type="submit" title="Search"><i class="bi bi-search"></i></button>
            </form>
          </div><!-- End Search Bar -->
        </div>
        <div class="col-4 text-end">
      </div>
      </div>
      <div class="d-flex custom-button-group">
        <a href="login.html" class="btn btn-custom" style="height: 45px; margin-right: 10px; color: gray; font-size: 14px;">
          로그인
        </a>
        <a href="signup.html" class="btn btn" style="height: 45px; color: gray; font-size: 14px;">
            회원가입        
        </a>
      </div>
    </div>
        
    </div>
    <style>
      .custom-button-group {
          display: flex;
          justify-content: flex-end;
          margin-top: -40px; /* 버튼을 위로 올리는 여백 조정 */
      }
    </style>

    
  </header><!-- End Header -->
  



<!-- ======= Sidebar ======= -->
  <aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

      <li class="nav-item">
        <a class="nav-link " href="dashboard.html">
          <i class="bi bi-grid"></i>
          <span>대시보드</span>
        </a>
      </li><!-- End Dashboard Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-menu-button-wide"></i><span>종목</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="item.html">
              <i class="bi bi-circle"></i><span>종목 상세페이지</span>
            </a>
          </li>
          <li>
            <a href="components-cards.html">
              <i class="bi bi-circle"></i><span>주식</span>
            </a>
          </li>


          <li>
            <a href="components-progress.html">
              <i class="bi bi-circle"></i><span>채권</span>
            </a>
          </li>

          <li>
            <a href="components-progress.html">
              <i class="bi bi-circle"></i><span>안전자산</span>
            </a>
          </li>
        </ul>
      </li><!-- End Components Nav -->


      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-layout-text-window-reverse"></i><span>상품비교함</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="tables-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="tables-general.html">
              <i class="bi bi-circle"></i><span>첫번째 자산</span>
            </a>
          </li>
          <li>
            <a href="tables-data.html">
              <i class="bi bi-circle"></i><span>두번째 자산</span>
            </a>
          </li>
        </ul>
      </li><!-- End Tables Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="notice.html">
            <i class="bi bi-bar-chart"></i><span>공지사항</span>
        </a>
    </li>


    </ul>

</aside><!-- End Sidebar-->

<main id="main" class="main">
	<div class="col-10">
	    <div class="d-flex justify-content-between" style="border-bottom: 2px solid blue;">
	      <div><img class="mb-3" id="square" src="${pageContext.request.contextPath}/img/bluebox.jpg" alt="이미지 교체중입니다.">&nbsp;<h2 style="display: inline-block" class="fs-2 fw-bold" >${board.title}</h2> </div>
	      <div id="board-search" class="search-bar">
	        <form class="search-form d-flex align-items-center" method="POST" action="#">
	            <input type="text" name="query" placeholder="제목을 검색하세요" title="Enter search keyword" class="form-control form-control-sm">
	            <button type="submit" title="Search"><i class="bi bi-search"></i></button>
	        </form>
	      </div><!-- End Search Bar -->
	    </div>
	 </div>  

    <div>
        <p class="fs-2 fw-bold"">밑에 내용</p> 
        
        <p class="font-size:">${board.content}</p>
    </div>
	
	<a href="/board/list">Back to List</a>
	<!-- Back to List Button -->
    <!-- Delete Button -->
    <form action="/board/delete" method="post">
        <input type="hidden" name="no" value="${board.no}">
        <input type="submit" value="Delete">
    </form>
</main>
<!-- ======= Footer ======= -->
   <footer class="footer">
     <div class="copyright">
       &copy; Copyright <strong><span>NiceAdmin</span></strong>. All Rights Reserved
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

  <!-- ======= Footer ======= -->
  
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

   
</body>
</html>