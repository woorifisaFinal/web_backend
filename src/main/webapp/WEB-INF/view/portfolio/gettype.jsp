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
      <img src="assets/img/logo.png" alt="">
      <span class="d-none d-lg-block">�츮FISA</span>
      </a>
      
    
     


    </div><!-- End Logo -->
  
    <div class="col-10">
      <div class="container">
      <div class="row">
        <div class="col-8">
          <div class="search-bar d-flex justify-content-start">
            <form class="search-form d-flex align-items-center" method="POST" action="#">
                <input type="text" name="query" placeholder="������ �˻��ϼ���" title="Enter search keyword" class="form-control form-control-sm">
                <button type="submit" title="Search"><i class="bi bi-search"></i></button>
            </form>
          </div><!-- End Search Bar -->
        </div>
        <div class="col-4 text-end">
      </div>
      </div>
      <div class="d-flex custom-button-group">
        <a href="login.html" class="btn btn-custom" style="height: 45px; margin-right: 10px; color: gray; font-size: 14px;">
          �α���
        </a>
        <a href="signup.html" class="btn btn" style="height: 45px; color: gray; font-size: 14px;">
            ȸ������        
        </a>
      </div>
    </div>
        
    </div>
    <style>
      .custom-button-group {
          display: flex;
          justify-content: flex-end;
          margin-top: -40px; /* ��ư�� ���� �ø��� ���� ���� */
      }
    </style>

    
  </header><!-- End Header -->
  



<!-- ======= Sidebar ======= -->
  <aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

      <li class="nav-item">
        <a class="nav-link " href="dashboard.html">
          <i class="bi bi-grid"></i>
          <span>��ú���</span>
        </a>
      </li><!-- End Dashboard Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-menu-button-wide"></i><span>����</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="item.html">
              <i class="bi bi-circle"></i><span>���� ��������</span>
            </a>
          </li>
          <li>
            <a href="components-cards.html">
              <i class="bi bi-circle"></i><span>�ֽ�</span>
            </a>
          </li>


          <li>
            <a href="components-progress.html">
              <i class="bi bi-circle"></i><span>ä��</span>
            </a>
          </li>

          <li>
            <a href="components-progress.html">
              <i class="bi bi-circle"></i><span>�����ڻ�</span>
            </a>
          </li>
        </ul>
      </li><!-- End Components Nav -->


      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-layout-text-window-reverse"></i><span>��ǰ����</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="tables-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="tables-general.html">
              <i class="bi bi-circle"></i><span>ù��° �ڻ�</span>
            </a>
          </li>
          <li>
            <a href="tables-data.html">
              <i class="bi bi-circle"></i><span>�ι�° �ڻ�</span>
            </a>
          </li>
        </ul>
      </li><!-- End Tables Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="notice.html">
            <i class="bi bi-bar-chart"></i><span>��������</span>
        </a>
    </li>


    </ul>

</aside><!-- End Sidebar-->

<!-- �����ڸ��� -->
  <main id="main" class="main">
    <div id="body" class="col-10" style="background-color: white; padding-bottom: 150px;">
      <div class="container mt-5">
        <div class="survey-page page1"d>
          </br>
          <div style="border-bottom: 2px solid blue;">
            <img class="mb-3" id="square" src="img\bluebox.jpg" alt="�̹��� ��ü���Դϴ�."><h2 class="mb-4" style="display: inline-block; margin-left:8px; font-weight: bold" >   ���ڼ��� �������� 1/2</h2>
          </div>
          </br>
          <p id="survey-inside" style="font-weight: bold;">����� ��ư�� ����Ŭ���ϸ� ����� �� �ֽ��ϴ�.</p>
            <div id="survey-inside">
              <form action='/user/survey'>
                <p>
                  <h1 style="display: inline-block; color: blueviolet;">1.</h1>
                  <p id="survey-title-inside"> 
                  ���� ������ ��� �����Ͻó���?</p>
                  </br>
                  <input type="radio" name="q1" value="5" ondblclick="this.checked=false"> ���� ������ ������ �߻��ϰ� ������, ���� ��ü ������ 
                  �����ϰų� ������ �� ���ƿ� </br>
                  <input type="radio" name="q1" value="3"ondblclick="this.checked=false"> ���� ������ ������ �߻��ϰ� ������, ���� �����ϰų� 
                  �Ҿ����� �� ���ƿ�</br>
                  <input type="radio" name="q1" value="1"ondblclick="this.checked=false"> ���� ������ ������ ������, ������ �� ���Կ��̿���</br>
                </br>   
                </p>
                
                <p> 
                  <h1 style="display: inline-block; color: blueviolet;">2.</h1>
                  <p id="survey-title-inside"> 
                    ���� �����ϰ� ��� ���ڻ� ��� �����ڻ��� ������ ��� �����ΰ���?</p>
                </br>
                  <input type="radio" name="q2" value="1" ondblclick="this.checked=false"> 5% ����</br>
                  <input type="radio" name="q2" value="2" ondblclick="this.checked=false"> 10% ����</br>
                  <input type="radio" name="q2" value="3" ondblclick="this.checked=false"> 20% ����</br>
                  <input type="radio" name="q2" value="4" ondblclick="this.checked=false"> 30% ����</br>
                  <input type="radio" name="q2" value="5" ondblclick="this.checked=false"> 30% �ʰ�</br>
                </br>  
                </p>
                <p>
                  <h1 style="display: inline-block; color: blueviolet;">3.</h1>
                  <p id="survey-title-inside"> 
                    ������ ������ �ִ� �׸��� ��� �������ּ���.(�ߺ� ����, ����Ŭ��=���)</p>
                </br>
                  3-1</br>
                  <input type="radio" name="q3" value="0" ondblclick="this.checked=false"> �������ڻ�ǰ�� ������ �� ������ ���� </br>
                  3-2</br>
                  <a>
                    <input type="radio" name="q3" value="6" ondblclick="this.checked=false">
                    �ֽĽſ�ŷ�, ����/�ɼ�, ELW, ���ݺ����� ELS/DLS/ELF</br>
                    <input type="radio" name="q3-2-1" value="1" ondblclick="this.checked=false"> 1��̸� </br>
                    <input type="radio" name="q3-2-1" value="3" ondblclick="this.checked=false"> 1���̻� 3��̸� </br>
                    <input type="radio" name="q3-2-1" value="5" ondblclick="this.checked=false"> 3���̻� </br>
                  </a>	
                  3-3</br>
                  <a>
                    <input type="radio" name="q3-3" value="3" ondblclick="this.checked=false">
                    �ֽ�, �ֽ����ݵ�, �ؿ��ݵ�, ���ݺ����� ELS/DLS/ELF,�����ڹ�/����(Wrap), ��ȭ����</br>
                    <input type="radio" name="q3-3-1" value="1" ondblclick="this.checked=false"> 1��̸� </br>
                    <input type="radio" name="q3-3-1" value="3" ondblclick="this.checked=false"> 1���̻� 3��̸� </br>
                    <input type="radio" name="q3-3-1" value="5" ondblclick="this.checked=false"> 3���̻� </br>
                  </a>	
                  3-4</br>
                  <a>
                    <input type="radio" name="q3-4" value="1" ondblclick="this.checked=false">
                    ä��/ȥ���� �ݵ�, ��Ź, ä��</br>
                    <input type="radio" name="q3-4-1" value="1" ondblclick="this.checked=false"> 1��̸� </br>
                    <input type="radio" name="q3-4-1" value="3" ondblclick="this.checked=false"> 1���̻� 3��̸� </br>
                    <input type="radio" name="q3-4-1" value="5" ondblclick="this.checked=false"> 3���̻� </br>
                  </a>
                </br>  
                </p>
                <p>
                  <h1 style="display: inline-block; color: blueviolet;">4.</h1>
                  <p id="survey-title-inside"> 
                    � �������� �����Ͻó���?</p>
                </br>
      
                <input type="radio" name="q4" value="1" ondblclick="this.checked=false"> ���� ���ͺ��� ���� ������ �� �߿��ؿ�</br>
                <input type="radio" name="q4" value="3" ondblclick="this.checked=false"> ���� ���� ���ɼ��� ���� �����ϴ��� ���� ������ �� �� ������ ���ھ�� </br>
                <input type="radio" name="q4" value="4" ondblclick="this.checked=false">  ���� �ս� ������ �־ ���� ���� ������ ���ؿ� </br>
                
              
                </br>  
                </p>
                <p>
                  <h1 style="display: inline-block; color: blueviolet;">5.</h1>
                  <p id="survey-title-inside"> 
                    ���Բ��� �����Ͻ� �� �ִ� ���ڼ��� �� ��������� 
                  ��� �����ΰ���?</p>
                </br>
                <input type="radio" name="q5" value="1" ondblclick="this.checked=false"> ���� ���� �־ ���ڿ����� �����ž��ؿ� </br>
                <input type="radio" name="q5" value="3" ondblclick="this.checked=false"> 10% ������ ������ �־ �ŵ��ϰ� ���;� �ؿ�</br>
                <input type="radio" name="q5" value="4" ondblclick="this.checked=false"> 20% ������ ��Ȳ���� �ʰ� �߰� �ż��� �����ؿ�</br>
                <input type="radio" name="q5" value="5" ondblclick="this.checked=false"> 30%���� ������ ��ƿ �� �ְ� ���̻��� ������ �����ؿ�</br>
                </br>
                </p>
              <button type="button" class="btn btn-outline-primary" onclick="showPage(2)">  ���� ������  </button>
              </form>
            </div>
        </div>

        <div class="survey-page page2 d-none">
        </br>
          <div style="border-bottom: 2px solid blue; margin-left: 30px;">
            <img class="mb-3" id="square" src="img\bluebox.jpg" alt="�̹��� ��ü���Դϴ�."><h2 class="mb-4" style="display: inline-block; margin-left:8px; font-weight: bold" >   ���ڼ��� �������� 2/2</h2>
          </div>
          <div id="survey-inside">
            <form>
            
              <p>
                <h1 style="display: inline-block; color: blueviolet;">6.</h1>
                <p id="survey-title-inside"> 
                  ������ �������� ����(���ص�)�� ��� ������� �����Ͻó���?</p>
              </br>
              <input type="radio" name="q6" value="1" ondblclick="this.checked=false"> ������ �ܿ� �ٸ� �������ڻ�ǰ�� �����غ� ���� �����</br>
              <input type="radio" name="q6" value="2" ondblclick="this.checked=false"> �ֽ�, ä��, �ݵ� ���� �Ϲ����� ��ǰ ������ ���� �� ������, ���� ���θ� ������ �� �־��</br>
              <input type="radio" name="q6" value="3" ondblclick="this.checked=false"> �ֽ�, ä��, �ݵ� ���� �Ϲ����� ��ǰ�� �� �˰� ������,���� ���θ� ������ �� �־��</br>
              <input type="radio" name="q6" value="4" ondblclick="this.checked=false"> �Ļ���ǰ�� ������ ��κ��� �������ڻ�ǰ�� ���� ����� �� �˰� �־��</br>
              </p>
      
              <p>
                <h1 style="display: inline-block; color: blueviolet;">7.</h1>
                <p id="survey-title-inside"> 
                  ��� ������, �ֺ�, ������ �� �������ڻ�ǰ�� ���� ����
                  �� �����ϰų� ���ڰ����� ���� �������� </br>���<������
                  ���� ��ȣ �������>�� ���� ������� �������� ������
                  ������ ������ ������ �ٸ� ����<br>���� �켱�Ͽ� ���� ��
                  ���� �� �ֽ��ϴ�. �ش� �׸� üũ�Ͽ� �ֽñ� �ٶ���
                  ��.</p>
              </br>
              <input type="radio" name="q7" value="0" ondblclick="this.checked=false"> �������ڻ�ǰ�� ���� ���ذ� �����ϰų� ���� ������ ����</br>
              <input type="radio" name="q7" value="0" ondblclick="this.checked=false"> �ش���� ����</br>
              </p>
      
              <p>
                <h1 style="display: inline-block; color: blueviolet;">8.</h1>
                <p id="survey-title-inside"> 
                  ������ ���̴� ��� �ǽó���?</p> 
              </br>
              <input type="radio" name="q8" value="1" ondblclick="this.checked=false"> 20�� �̸�</br>
              <input type="radio" name="q8" value="3" ondblclick="this.checked=false"> 20~35�� �̸�</br>
              <input type="radio" name="q8" value="5" ondblclick="this.checked=false"> 35~50�� �̸�</br>
              <input type="radio" name="q8" value="2" ondblclick="this.checked=false"> 50~60�� �̸�</br>
              <input type="radio" name="q8" value="1" ondblclick="this.checked=false"> 65�� �̻�</br>
              </p>
      
              <p>
                <h1 style="display: inline-block; color: blueviolet;">9.</h1>
                <p id="survey-title-inside"> 
                  ���� �����ڻ꿡 ���� ���ڿ����Ⱓ�� ��� �ǽó���?</p> 
              </br>
              <input type="radio" name="q9" value="4" ondblclick="this.checked=false"> 1��̸�</br>
              <input type="radio" name="q9" value="4" ondblclick="this.checked=false"> 1~2��̸�</br>
              <input type="radio" name="q9" value="4" ondblclick="this.checked=false"> 2~3��̸�</br>
              <input type="radio" name="q9" value="4" ondblclick="this.checked=false"> 3~5��̸�</br>
              <input type="radio" name="q9" value="4" ondblclick="this.checked=false"> 5���̻�</br>
              </p>
      
              <p>
                <h1 style="display: inline-block; color: blueviolet;">10.</h1>
                <p id="survey-title-inside"> 
                  ������ �� �ҵ��� ��� �ǽó���?</p> 
              </br>
              <input type="radio" name="q10" value="1" ondblclick="this.checked=false"> 2õ���� �̸�</br>
              <input type="radio" name="q10" value="2" ondblclick="this.checked=false"> 2õ����~5õ���� �̸�</br>
              <input type="radio" name="q10" value="3" ondblclick="this.checked=false"> 5õ����~7õ���� �̸�</br>
              <input type="radio" name="q10" value="4" ondblclick="this.checked=false"> 7õ����~1��� �̸�</br>
              <input type="radio" name="q10" value="5" ondblclick="this.checked=false"> 1��� �̻�</br>
              </p>
              </br>
              <button type="button" class="btn btn-outline-primary" onclick="showPage(1)">���� ������</button>
              <button type="button" class="btn btn-outline-success" onclick="calculateScore()">��� ����</button>
      
            </form>
          </div>
        
        </div>
      </div>
    </div>
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


<script>    
function showPage(pageNumber) {
const pages = document.querySelectorAll('.survey-page');
pages.forEach(page => page.classList.add('d-none'));
pages[pageNumber - 1].classList.remove('d-none');
}

function calculateScore() {
let totalScore = 0;

const radioInputs = document.querySelectorAll('input[type="radio"]:checked');
radioInputs.forEach(input => {
	const value = parseInt(input.value);
	if (!isNaN(value)) {
		totalScore += value;
	}
});

if (totalScore >= 0 && totalScore <= 20) {
	window.location.href = `result.html?type=stable&score=${totalScore}`;
} else if (totalScore >= 21 && totalScore <= 50) {
	window.location.href = `result.html?type=adventurous&score=${totalScore}`;
} else {
	alert('Invalid score range');
}
}


function redirectToResult() {
// Calculate the score if needed
// ...

// Redirect to result.html
window.location.href = 'result.html';
}
</script>


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
  <script
  src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
  integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
  crossorigin="anonymous"
></script>


</body>

</html>

