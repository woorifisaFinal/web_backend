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
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

  <%--  Page function--%>
  <script>
    function showPage(pageNumber) {
      const pages = document.querySelectorAll('.survey-page');
      pages.forEach(page => page.classList.add('d-none'));
      pages[pageNumber - 1].classList.remove('d-none');
    }

    <%--function calculateScore() {--%>
    <%--  let totalScore = 0;--%>

    <%--  const radioInputs = document.querySelectorAll('input[type="radio"]:checked');--%>
    <%--  radioInputs.forEach(input => {--%>
    <%--    const value = parseInt(input.value);--%>
    <%--    if (!isNaN(value)) {--%>
    <%--      totalScore += value;--%>
    <%--    }--%>
    <%--  });--%>
    <%--  let type="";--%>
    <%--  if (totalScore >= 0 && totalScore <= 20) {--%>
    <%--    &lt;%&ndash;window.location.href = "/savetype?type=stable&totalScore=${totalScore}";&ndash;%&gt;--%>
    <%--    // localStorage.setItem("type", "안정형");--%>
    <%--    type = "stable";--%>

    <%--  } else if (totalScore >= 21 && totalScore <= 50) {--%>
    <%--    &lt;%&ndash;window.location.href = "/savetype?type=adventurous$totalScore=${totalScore}";&ndash;%&gt;--%>
    <%--    // localStorage.setItem("type", "공격형")--%>
    <%--    type ="adventurous";--%>
    <%--  }--%>




    <%--}--%>


    function redirectToResult() {
      // Calculate the score if needed
      // ...

      // Redirect to result -> 점수랑 유형은 어떻게 보내나??
      window.location.href = '/result';
    }




  </script>
  <script>
    document.addEventListener("DOMContentLoaded", function (){
      const submitBtn = document.getElementById("submitBtn");

      function calculateScore(){
        let totalScore = 0;
        const radioInputs = document.querySelectorAll('input[type="radio"]:checked');
        radioInputs.forEach(input => {
          const value = parseInt(input.value);
          if (!isNaN(value)) {
            totalScore += value;
          }
        });
        let type = "";
        if (totalScore >= 0 && totalScore <= 20) { type = "stable";}
        else { type ="adventurous";}
        const url = "/savetype?type="+type+"&totalScore="+totalScore;
        $.ajax({
          url: url,
          type: 'GET',
          success: function() {
            // Write logic to process data received from the server
            // In this example, the received data is printed on the current page.
            window.location.href = url;
             // document.body.innerHTML = data;
          },
          error: function() {
            console.error('Error');
          }
        });
        console.log("Request URL:", url);
      }
      submitBtn.addEventListener("click", calculateScore)
    });
  </script>
</head>

<body>
   <!-- ======= Header ======= -->
  	<%@include file = "/WEB-INF/view/include/header_sidebar.jsp" %>
   <!-- End Sidebar-->

<!-- Main -->
<div class="container">

  <div id="body" class="col-10" style="background-color: white; padding-bottom: 150px;">
    <div class="container mt-5">
      <div class="survey-page page1"d>
        </br>
        <div style="border-bottom: 2px solid blue;">
          <img class="mb-3 square"  src="${pageContext.request.contextPath}/img/bluebox.jpg" alt="이미지 교체중입니다.">
          <h2 class="mb-4" style="display: inline-block; margin-left:8px; font-weight: bold" >   투자성향 설문조사 1/2</h2>
        </div>
        </br>
        <p class="survey-inside" style="font-weight: bold;">응답시 버튼을 더블클릭하면 취소할 수 있습니다.</p>
        <div class="survey-inside">
          <form action='user/survey'>
            <p>
            <h1 style="display: inline-block; color: blueviolet;">1.</h1>
            <p class="survey-title-inside">
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
            <p class="survey-title-inside">
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
            <p class="survey-title-inside">
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
            <p class="survey-title-inside">
              어떤 목적으로 투자하시나요?</p>
            </br>

            <input type="radio" name="q4" value="1" ondblclick="this.checked=false"> 투자 수익보다 원금 보존이 더 중요해요</br>
            <input type="radio" name="q4" value="3" ondblclick="this.checked=false"> 현금 보존 가능성을 조금 포기하더라도 투자 수익을 낼 수 있으면 좋겠어요 </br>
            <input type="radio" name="q4" value="4" ondblclick="this.checked=false">  원금 손실 위험이 있어도 높은 투자 수익을 원해요 </br>


            </br>
            </p>
            <p>
            <h1 style="display: inline-block; color: blueviolet;">5.</h1>
            <p class="survey-title-inside">
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
        <div style="border-bottom: 2px solid blue;">
          <img class="mb-3 square" src="${pageContext.request.contextPath}/img/bluebox.jpg" alt="이미지 교체중입니다."><h2 class="mb-4" style="display: inline-block; margin-left:8px; font-weight: bold" >   투자성향 설문조사 2/2</h2>
        </div>
        <div class="survey-inside">
          <form>

            <p>
            <h1 style="display: inline-block; color: blueviolet;">6.</h1>
            <p class="survey-title-inside">
              고객님의 금융지식 수준(이해도)는 어느 정도라고 생각하시나요?</p>
            </br>
            <input type="radio" name="q6" value="1" ondblclick="this.checked=false"> 예적금 외에 다른 금융투자상품에 투자해본 적이 없어요</br>
            <input type="radio" name="q6" value="2" ondblclick="this.checked=false"> 주식, 채권, 펀드 같은 일반적인 상품 정도는 설명만 좀 들으면, 투자 여부를 결정할 수 있어요</br>
            <input type="radio" name="q6" value="3" ondblclick="this.checked=false"> 주식, 채권, 펀드 같은 일반적인 상품은 잘 알고 있으며,투자 여부를 결정할 수 있어요</br>
            <input type="radio" name="q6" value="4" ondblclick="this.checked=false"> 파생상품을 포함한 대부분의 금융투자상품에 대해 충분히 잘 알고 있어요</br>
            </p>

            <p>
              <h1 style="display: inline-block; color: blueviolet;">7.</h1>
              <p class="survey-title-inside">
                고령 투자자, 주부, 은퇴자 등 금융투자상품에 대한 이해
                가 부족하거나 투자경험이 없는 투자자의 </br>경우<금융소비자 보호 모범규준>에 따른 금융취약 계층으로 금융소
                비자의 불이익 사항을 다른 정보<br>보다 우선하여 설명 받
                으실 수 있습니다. 해당 항목에 체크하여 주시기 바랍니다.
              </p>
              </br>
              <input type="radio" name="q7" value="0" ondblclick="this.checked=false"> 금융투자상품에 대한 이해가 부족하거나 투자 경험이 없음</br>
              <input type="radio" name="q7" value="0" ondblclick="this.checked=false"> 해당사항 없음</br>
            </p>

            <p>
            <h1 style="display: inline-block; color: blueviolet;">8.</h1>
            <p class="survey-title-inside">
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
            <p class="survey-title-inside">
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
            <c:if test="${sessionScope.loginUser != null}">
              <button id="submitBtn" class="btn btn-outline-success">결과 보기</button>
            </c:if>

            <c:if test="${sessionScope.loginUser == null}">
              <button id="submitBtn" class="btn btn-outline-success" >결과 보기</button>
<%--            <button type="button" class="btn btn-outline-success" data-toggle="modal" data-target="#loginModal">--%>
<%--              결과 보기--%>
<%--            </button>--%>
          </c:if>

            <!-- 로그인 모달 -->
<%--            <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel" aria-hidden="true">--%>
<%--              <div class="modal-dialog" role="document">--%>
<%--                <div class="modal-content">--%>
<%--                  <div class="modal-header">--%>
<%--                    <h5 class="modal-title" id="loginModalLabel">로그인 해주세요</h5>--%>
<%--                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">--%>
<%--                      <span aria-hidden="true">&times;</span>--%>
<%--                    </button>--%>
<%--                  </div>--%>
<%--                  <div class="modal-body">--%>
<%--                    <!-- 모달 내용 -->--%>
<%--                    <p>로그인이 필요한 서비스입니다. 로그인을 해주세요.</p>--%>
<%--                  </div>--%>
<%--                  <div class="modal-footer">--%>
<%--                    <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>--%>
<%--                    <a href="/user/login" class="btn btn-primary">로그인하기</a>--%>
<%--                  </div>--%>
<%--                </div>--%>
<%--              </div>--%>
<%--            </div>--%>

          </form>
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






-->
