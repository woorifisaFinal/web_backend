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

<!-- 메인자리임 -->
  <main id="main" class="main">
    <div id="body" class="col-10" style="background-color: white; padding-bottom: 150px;">
      <div class="container mt-5">
        <div class="survey-page page1"d>
          </br>
          <div style="border-bottom: 2px solid blue;">
            <img class="mb-3" id="square" src="img\bluebox.jpg" alt="이미지 교체중입니다."><h2 class="mb-4" style="display: inline-block; margin-left:8px; font-weight: bold" >   투자성향 설문조사 1/2</h2>
          </div>
          </br>
          <p id="survey-inside" style="font-weight: bold;">응답시 버튼을 더블클릭하면 취소할 수 있습니다.</p>
            <div id="survey-inside">
              <form action='/user/survey'>
                <p>
                  <h1 style="display: inline-block; color: blueviolet;">1.</h1>
                  <p id="survey-title-inside"> 
                  향후 수입을 어떻게 예상하시나요?</p>
                  </br>
                  <input type="radio" name="q1" value="5" ondblclick="this.checked=false"> 현재 일정한 수입이 발생하고 있으며, 향후 전체 수준을 
                  유지하거나 증가할 것 같아요 </br>
                  <input type="radio" name="q1" value="3"ondblclick="this.checked=false"> 현재 일정한 수입이 발생하고 있으나, 향후 감소하거나 
                  불안정할 것 같아요</br>
                  <input type="radio" name="q1" value="1"ondblclick="this.checked=false"> 현재 일정한 수입이 없으며, 현금이 주 수입원이에요</br>
                </br>   
                </p>
                
                <p> 
                  <h1 style="display: inline-block; color: blueviolet;">2.</h1>
                  <p id="survey-title-inside"> 
                    기존 보유하고 계신 총자산 대비 금융자산의 비중은 어느 정도인가요?</p>
                </br>
                  <input type="radio" name="q2" value="1" ondblclick="this.checked=false"> 5% 이하</br>
                  <input type="radio" name="q2" value="2" ondblclick="this.checked=false"> 10% 이하</br>
                  <input type="radio" name="q2" value="3" ondblclick="this.checked=false"> 20% 이하</br>
                  <input type="radio" name="q2" value="4" ondblclick="this.checked=false"> 30% 이하</br>
                  <input type="radio" name="q2" value="5" ondblclick="this.checked=false"> 30% 초과</br>
                </br>  
                </p>
                <p>
                  <h1 style="display: inline-block; color: blueviolet;">3.</h1>
                  <p id="survey-title-inside"> 
                    투자한 경험이 있는 항목을 모두 선택해주세요.(중복 가능, 더블클릭=취소)</p>
                </br>
                  3-1</br>
                  <input type="radio" name="q3" value="0" ondblclick="this.checked=false"> 금융투자상품에 투자해 본 경험이 없음 </br>
                  3-2</br>
                  <a>
                    <input type="radio" name="q3" value="6" ondblclick="this.checked=false">
                    주식신용거래, 선물/옵션, ELW, 원금비보장형 ELS/DLS/ELF</br>
                    <input type="radio" name="q3-2-1" value="1" ondblclick="this.checked=false"> 1년미만 </br>
                    <input type="radio" name="q3-2-1" value="3" ondblclick="this.checked=false"> 1년이상 3년미만 </br>
                    <input type="radio" name="q3-2-1" value="5" ondblclick="this.checked=false"> 3년이상 </br>
                  </a>	
                  3-3</br>
                  <a>
                    <input type="radio" name="q3-3" value="3" ondblclick="this.checked=false">
                    주식, 주식형펀드, 해외펀드, 원금보장형 ELS/DLS/ELF,투자자문/일임(Wrap), 외화증권</br>
                    <input type="radio" name="q3-3-1" value="1" ondblclick="this.checked=false"> 1년미만 </br>
                    <input type="radio" name="q3-3-1" value="3" ondblclick="this.checked=false"> 1년이상 3년미만 </br>
                    <input type="radio" name="q3-3-1" value="5" ondblclick="this.checked=false"> 3년이상 </br>
                  </a>	
                  3-4</br>
                  <a>
                    <input type="radio" name="q3-4" value="1" ondblclick="this.checked=false">
                    채권/혼합형 펀드, 신탁, 채권</br>
                    <input type="radio" name="q3-4-1" value="1" ondblclick="this.checked=false"> 1년미만 </br>
                    <input type="radio" name="q3-4-1" value="3" ondblclick="this.checked=false"> 1년이상 3년미만 </br>
                    <input type="radio" name="q3-4-1" value="5" ondblclick="this.checked=false"> 3년이상 </br>
                  </a>
                </br>  
                </p>
                <p>
                  <h1 style="display: inline-block; color: blueviolet;">4.</h1>
                  <p id="survey-title-inside"> 
                    어떤 목적으로 투자하시나요?</p>
                </br>
      
                <input type="radio" name="q4" value="1" ondblclick="this.checked=false"> 투자 수익보다 원금 보존이 더 중요해요</br>
                <input type="radio" name="q4" value="3" ondblclick="this.checked=false"> 현금 보존 가능성을 조금 포기하더라도 투자 수익을 낼 수 있으면 좋겠어요 </br>
                <input type="radio" name="q4" value="4" ondblclick="this.checked=false">  원금 손실 위험이 있어도 높은 투자 수익을 원해요 </br>
                
              
                </br>  
                </p>
                <p>
                  <h1 style="display: inline-block; color: blueviolet;">5.</h1>
                  <p id="survey-title-inside"> 
                    고객님께서 감내하실 수 있는 투자수익 및 위험수준은 
                  어느 정도인가요?</p>
                </br>
                <input type="radio" name="q5" value="1" ondblclick="this.checked=false"> 무슨 일이 있어도 투자원금은 보전돼야해요 </br>
                <input type="radio" name="q5" value="3" ondblclick="this.checked=false"> 10% 정도만 변동이 있어도 매도하고 나와야 해요</br>
                <input type="radio" name="q5" value="4" ondblclick="this.checked=false"> 20% 정도는 당황하지 않고 추가 매수도 가능해요</br>
                <input type="radio" name="q5" value="5" ondblclick="this.checked=false"> 30%정도 변동은 버틸 수 있고 그이상의 변동도 가능해요</br>
                </br>
                </p>
              <button type="button" class="btn btn-outline-primary" onclick="showPage(2)">  다음 페이지  </button>
              </form>
            </div>
        </div>

        <div class="survey-page page2 d-none">
        </br>
          <div style="border-bottom: 2px solid blue; margin-left: 30px;">
            <img class="mb-3" id="square" src="img\bluebox.jpg" alt="이미지 교체중입니다."><h2 class="mb-4" style="display: inline-block; margin-left:8px; font-weight: bold" >   투자성향 설문조사 2/2</h2>
          </div>
          <div id="survey-inside">
            <form>
            
              <p>
                <h1 style="display: inline-block; color: blueviolet;">6.</h1>
                <p id="survey-title-inside"> 
                  고객님의 금융지식 수준(이해도)는 어느 정도라고 생각하시나요?</p>
              </br>
              <input type="radio" name="q6" value="1" ondblclick="this.checked=false"> 예적금 외에 다른 금융투자상품에 투자해본 적이 없어요</br>
              <input type="radio" name="q6" value="2" ondblclick="this.checked=false"> 주식, 채권, 펀드 같은 일반적인 상품 정도는 설명만 좀 들으면, 투자 여부를 결정할 수 있어요</br>
              <input type="radio" name="q6" value="3" ondblclick="this.checked=false"> 주식, 채권, 펀드 같은 일반적인 상품은 잘 알고 있으며,투자 여부를 결정할 수 있어요</br>
              <input type="radio" name="q6" value="4" ondblclick="this.checked=false"> 파생상품을 포함한 대부분의 금융투자상품에 대해 충분히 잘 알고 있어요</br>
              </p>
      
              <p>
                <h1 style="display: inline-block; color: blueviolet;">7.</h1>
                <p id="survey-title-inside"> 
                  고령 투자자, 주부, 은퇴자 등 금융투자상품에 대한 이해
                  가 부족하거나 투자경험이 없는 투자자의 </br>경우<금융소
                  비자 보호 모범규준>에 따른 금융취약 계층으로 금융소
                  비자의 불이익 사항을 다른 정보<br>보다 우선하여 설명 받
                  으실 수 있습니다. 해당 항목에 체크하여 주시기 바랍니
                  다.</p>
              </br>
              <input type="radio" name="q7" value="0" ondblclick="this.checked=false"> 금융투자상품에 대한 이해가 부족하거나 투자 경험이 없음</br>
              <input type="radio" name="q7" value="0" ondblclick="this.checked=false"> 해당사항 없음</br>
              </p>
      
              <p>
                <h1 style="display: inline-block; color: blueviolet;">8.</h1>
                <p id="survey-title-inside"> 
                  고객님의 나이는 어떻게 되시나요?</p> 
              </br>
              <input type="radio" name="q8" value="1" ondblclick="this.checked=false"> 20세 미만</br>
              <input type="radio" name="q8" value="3" ondblclick="this.checked=false"> 20~35세 미만</br>
              <input type="radio" name="q8" value="5" ondblclick="this.checked=false"> 35~50세 미만</br>
              <input type="radio" name="q8" value="2" ondblclick="this.checked=false"> 50~60세 미만</br>
              <input type="radio" name="q8" value="1" ondblclick="this.checked=false"> 65세 이상</br>
              </p>
      
              <p>
                <h1 style="display: inline-block; color: blueviolet;">9.</h1>
                <p id="survey-title-inside"> 
                  현재 투자자산에 대한 투자예정기간은 어떻게 되시나요?</p> 
              </br>
              <input type="radio" name="q9" value="4" ondblclick="this.checked=false"> 1년미만</br>
              <input type="radio" name="q9" value="4" ondblclick="this.checked=false"> 1~2년미만</br>
              <input type="radio" name="q9" value="4" ondblclick="this.checked=false"> 2~3년미만</br>
              <input type="radio" name="q9" value="4" ondblclick="this.checked=false"> 3~5년미만</br>
              <input type="radio" name="q9" value="4" ondblclick="this.checked=false"> 5년이상</br>
              </p>
      
              <p>
                <h1 style="display: inline-block; color: blueviolet;">10.</h1>
                <p id="survey-title-inside"> 
                  고객님의 연 소득은 어떻게 되시나요?</p> 
              </br>
              <input type="radio" name="q10" value="1" ondblclick="this.checked=false"> 2천만원 미만</br>
              <input type="radio" name="q10" value="2" ondblclick="this.checked=false"> 2천만원~5천만원 미만</br>
              <input type="radio" name="q10" value="3" ondblclick="this.checked=false"> 5천만원~7천만원 미만</br>
              <input type="radio" name="q10" value="4" ondblclick="this.checked=false"> 7천만원~1억원 미만</br>
              <input type="radio" name="q10" value="5" ondblclick="this.checked=false"> 1억원 이상</br>
              </p>
              </br>
              <button type="button" class="btn btn-outline-primary" onclick="showPage(1)">이전 페이지</button>
              <button type="button" class="btn btn-outline-success" onclick="calculateScore()">결과 보기</button>
      
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

