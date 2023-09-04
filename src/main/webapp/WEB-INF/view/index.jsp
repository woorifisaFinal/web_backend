<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
		<link
			href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
			rel="stylesheet"
			integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
			crossorigin="anonymous"
		/>
</head>
	<body>
		<div class="header">
			<div class="d-flex row">
				<h1
					class="col-10 d-flex justify-content-center"
					style="
						padding-top: 15px;
						background-color: cadetblue;
						padding-left: 180px;
					"
				>
					우리 어드바이저
				</h1>
				<div
					id="header-btns"
					class="col-2 d-flex justify-content-center"
					style="background-color: orange; padding-top: 15px"
				>
					<button class="btn btn-info" style="height: 45px; margin-right: 10px" onClick="location.href='login.html'">
						로그인
					</button>
					<button class="btn btn-info" style="height: 45px" onClick="location.href='signup.html'">회원가입</button>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-2">
				<div class="list-group">
					<!-- <a href="#" class="list-group-item list-group-item-action"
						>종목(토글)</a
					> -->
					<div class="btn-group dropend">
						<button
							class="btn btn-info dropdown-toggle"
							type="button"
							data-bs-toggle="dropdown"
							aria-expanded="false"
						>
							종목
						</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							<li><a class="dropdown-item" href="#">주식</a></li>
							<li><a class="dropdown-item" href="#">채권</a></li>
							<li><a class="dropdown-item" href="#">안전자산</a></li>
						</ul>
					</div>
					<div class="btn-group dropend">
						<button
							class="btn btn-info dropdown-toggle"
							type="button"
							data-bs-toggle="dropdown"
							aria-expanded="false"
						>
							상품비교함
						</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							<li>
								<div class="row">
									<div class="col-7">
										<a class="dropdown-item" href="#">첫번째 상품</a>
									</div>
									<div class="col-5">
										<button class="btn btn-secondary">
											<img
												src="img/delete-icon.png"
												alt="삭제"
												onclick=""
												style="width: 20px"
											/>
										</button>
									</div>
								</div>
							</li>
							<li>
								<div class="row">
									<div class="col-7">
										<a class="dropdown-item" href="#">두번째 상품</a>
									</div>
									<div class="col-5">
										<button class="btn btn-secondary">
											<img
												src="img/delete-icon.png"
												alt="삭제"
												onclick=""
												style="width: 20px"
											/>
										</button>
									</div>
								</div>
							</li>
							<li class="d-flex justify-content-center">
								<button class="btn btn-secondary">상품 비교하기</button>
							</li>
						</ul>
					</div>

					<a
						href="#"
						class="list-group-item list-group-item-action d-flex justify-content-center"
						>공지사항</a
					>
				</div>
			</div>

			<div class="col-10">
				<div class="container">
					<div class="row">
						<div class="col-8"></div>
						<div class="col-4">
							<div class="row">
								<div class="col-10" style="padding-right: 0%">
									<input
										type="text"
										class="form-control form-control-sm"
										placeholder="종목을 검색하세요"
									/>
								</div>
								<div class="col-2">
									<button
										class="btn btn-outline-secondary btn-sm"
										type="submit"
									>
										🔍
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<br />

				<div id="body" class="container-sm" style="background-color: bisque">
					<div
						id="index-textbox"
						style="
							background-color: aqua;
							padding-top: 15px;
							padding-left: 30px;
							padding-right: 30px;
						"
					>
						<h3>나누리 (NanWoori)</h3>
						<br />
						<p>
							금융 및 공공데이터를 활용해 최적의 투자 포트폴리오 추천 전략을
							수립해드립니다.
						</p>
						<p>
							고객의 투자성향에 따라 여러 자산에 대한 종목별 투자비율을
							효율적으로 배분할 수 있는 모델을 구축하여 향후 은행권상품 추천
							서비스와 연계할 수 있는 확장된 서비스를 제공하고자 합니다.
						</p>
						<br />
						<div class="d-flex justify-content-center">
							<button class="btn btn-primary">나누리 시작하기</button>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div
			id="footer"
			class="container-sm"
			style="background-color: lightgray; padding-top: 50px"
		>
			<div class="d-flex justify-content-center">footer 자리입니다</div>
		</div>
	</body>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous"
	></script>
</html>