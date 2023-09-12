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
    <script>
    document.addEventListener("DOMContentLoaded", function () {
        const productBoxes = document.querySelectorAll(".product-box");
        const compareBtn = document.getElementById("compareBtn");
        const comparisonContent = document.getElementById("comparisonContent");

        let selectedProducts = [];

        // Add click event listeners to product boxes
        productBoxes.forEach(function (box) {
            box.addEventListener("click", function () {
                if (selectedProducts.includes(box.id)) {
                    // If already selected, deselect it
                    selectedProducts = selectedProducts.filter((product) => product !== box.id);
                    box.classList.remove("bg-primary", "text-white");
                } else if (selectedProducts.length < 2) {
                    // If not selected and less than 2 items are already selected, select it
                    selectedProducts.push(box.id);
                    box.classList.add("bg-primary", "text-white");
                } else {
                    // If not selected and 2 items are already selected, deselect the oldest one
                    const oldestSelection = selectedProducts.shift();
                    const oldestBox = document.getElementById(oldestSelection);
                    oldestBox.classList.remove("bg-primary", "text-white");

                    // Now select the new item
                    selectedProducts.push(box.id);
                    box.classList.add("bg-primary", "text-white");
                }
                console.log("Selected Products:", selectedProducts);
            });
        });
		
        

        function sendComparisonRequest(product1ID, product2ID) {
            const DATEA = "2023-08-29";
            const DATEB = "2023-08-29";
            $.ajax({
                url: `/portfolio/comparePortfolios?typeA=${product1ID}&dateA=${DATEA}&typeB=${product2ID}&dateB=${DATEB}`,
                type: 'POST', // or 'POST' depending on your server-side requirements
                success: function(data) {
                    // 서버에서 받은 데이터를 처리하는 로직을 작성
                    // 이 예제에서는 받은 데이터를 #comparisonResult 요소에 출력
                    $("#comparisonResult").html(data);
                    alert("Success");
                },
                error: function() {
                    console.error('Error');
                }
            });
        }

        
        // Add click event listener to Compare button
        compareBtn.addEventListener("click", function () {
            if (selectedProducts.length === 2) {
                // Display selected product names in the modal
                const product1ID = selectedProducts[0];
		        const product2ID = selectedProducts[1];
		        sendComparisonRequest(product1ID, product2ID);
		        $("#comparisonModal").modal("show");
            } else if (selectedProducts.length > 2) {
                // Display an error modal if more than 2 products are selected
                comparisonContent.innerHTML = '<p>You must select 2 items.</p>';
                // Show the error modal
                $("#comparisonModal").modal("show");
            } else {
                // Inform the user to select exactly 2 products
                alert("Please select exactly 2 products for comparison.");
            }
        });
      });
  </script>
</head>

<body>
   <!-- ======= Header ======= -->
  	<%@include file = "/WEB-INF/view/include/header_sidebar.jsp" %>
   <!-- End Sidebar-->

<!-- Main -->
<div class="container">

    <div class="container" id="productcompare-box">
        <div class="row">
            <div class="col-md-3">
                <div class="product-box" id="A/안정형">
                    <div class="top-section">
                        <p>블랙 리터만 / 안정형</p>
                    </div>
                    <div class="bottom-section">
                        </br>
                        <p>전통적인 방식을 통해서 안정적인 포트폴리오를 </br>추천하는 상품</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="product-box" id="A/공격형">
                    <div class="top-section">
                        <p>블랙 리터만 / 위험형</p>
                    </div>
                    <div class="bottom-section">
                        </br>
                        <p>전통적인 방식을 통해서 모험적인 포트폴리오를 </br>추천하는 상품</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="product-box" id="B/안정형">
                    <div class="top-section">
                        <p>블랙 리터만 알파 / 안정형</p>
                    </div>
                    <div class="bottom-section">
                        </br>
                        <p>기존 블랙리터만에 딥러닝을 융합한 안정형 상품</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <div class="product-box" id="B/공격형">
                    <div class="top-section">
                        <p>블랙 리터만 알파 / 위험형</p>
                    </div>
                    <div class="bottom-section">
                        </br>
                        <p>기존 블랙리터만에 딥러닝을 융합한 모험형 상품</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="product-box" id="C/안정형">
                    <div class="top-section">
                        <p>금융 '나누리' 상품 / 안정형</p>
                    </div>
                    <div class="bottom-section">
                        </br>
                        <p>나누리만의 방식으로 안정적인 포트폴리오를 추천하는 상품</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="product-box" id="C/공격형">
                    <div class="top-section">
                        <p>금융 '나누리' 상품 / 위험형</p>
                    </div>
                    <div class="bottom-section">
                        </br>
                        <p>나누리만의 방식으로 모험적인 포트폴리오를 추천하는 상품</p>
                    </div>
                </div>
            </div>
        </div>
        <button id="compareBtn" class="btn btn-primary" style="font-weight: bold;">상품 비교</button>
    </div>

    <!-- 제품 비교용 모달 -->
    <div class="modal fade" id="comparisonModal" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">제품 비교</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="닫기"></button>
                </div>
                <div class="modal-body" id="comparisonContent">
                	<h2 style="text-align: center; margin-top : 100px;">type ${resultA.type}</h2>
					<h2 style="text-align: center; margin-top : 100px;">type ${resultB.date}</h2>
                </div>
                <div id="comparisonResult">여기 결과</div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
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
