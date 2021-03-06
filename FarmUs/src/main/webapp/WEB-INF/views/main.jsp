<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.farmus.controller.farmusController"%>
<%
	farmusController date = new farmusController();
	String b_date = date.Date();
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>파머스(Farm Us), 월간씨앗 프로젝트</title>
<meta content="" name="description">
<meta content="" name="keywords">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./resources/assets/img/apple-touch-icon.png"
	rel="apple-touch-icon">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">
<link href="./resources/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="./resources/assets/vendor/icofont/icofont.min.css"
	rel="stylesheet">
<link href="./resources/assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="./resources/assets/vendor/venobox/venobox.css"
	rel="stylesheet">
<link
	href="./resources/assets/vendor/owl.carousel/./resources/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="./resources/assets/vendor/aos/aos.css" rel="stylesheet">
<link href="./resources/assets/css/style.css" rel="stylesheet">
<script type="text/javascript">

	function contentOpen() {
		$(#boardContent).css("visibility","visible");

	}
</script>
<style>
#mypagetable {
	margin-top: 10%;
}
</style>

</head>
<body>
	<section>
		<div class="hero-container">
			<img src="./resources/assets/img/month.png" width="20%"
				style="margin-left: auto; margin-right: auto; display: block;">
		</div>
	</section>
	<header id="header" class="d-flex align-items-center">
		<div class="container">

			<div class="logo d-block d-lg-none">
				<a href="main.jsp"><img src="./resources/assets/img/start.png"
					alt="" class="img-fluid"></a>
			</div>
			<!--======================================= 이 위의 코드는 안봐도되요========================================================= -->











			<!-- 메뉴모음 시작 -->
			<nav class="nav-menu d-none d-lg-block">
				<ul class="nav-inner">
					<li class="active"><a data-aos="fade-up" href="#about"
						class="scrollto">마이 페이지</a></li>
					</li>
					<li><a href="#services">몬스타그램</a></li>
					<li><a href="#portfolio">상품소개 및 구매</a></li>


					<li class="nav-logo"><a href="javascript:location.reload()"><img
							src="./resources/assets/img/start.png" width="80px" alt=""
							class="img-fluid"></a></li>

					<li><a href="#pricing">구독안내 및 신청</a></li>
					<li><a href="#contact">커뮤니티</a></li>
					<li><a href="#why-us">씨앗 나눔광장</a></li>

				</ul>
			</nav>
			<!-- 메뉴모음 끝 -->

		</div>
	</header>
	<!-- 헤더 및 메뉴 끝 -->

	<main id="main"> <!-- ======= 드랍다운-마이 페이지 섹션 ======= -->
	<section id="about" class="about">
		<div class="container">

			<div class="section-title" data-aos="fade-up">
				<h2>마이 페이지</h2>
			</div>
			<div class="row">
				<div class="col-lg-6" data-aos="fade-right">
					<div class="content pt-4 pt-lg-0 pl-0 pl-lg-3 ">
						<div class="container">


							<p>성장률 : ${monseed.a_growth}%</p>
							<div class="progress">

								<div class="progress-bar bg-success progress-bar-striped"
									style="width: ${monseed.a_growth}%"></div>
							</div>
							<br>
							<p>습도 : ${monseed.a_hum}%</p>
							<div class="progress">
								<div class="progress-bar progress-bar-striped"
									style="width: ${monseed.a_hum}%"></div>
							</div>
							<br>
							<p>온도 : ${monseed.a_temper}℃</p>
							<div class="progress">
								<div class="progress-bar bg-warning progress-bar-striped"
									style="width: ${monseed.a_temper}%"></div>
							</div>
							<br>

							<p>CO2 농도 : ${monseed.a_co}ppm</p>
							<div class="progress">
								<div class="progress-bar bg-danger progress-bar-striped"
									style="width: ${co2}%"></div>

							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6" data-aos="fade-left">
					<div class="content pt-4 pt-lg-0 pl-0 pl-lg-3 ">
						<div class="container">
							<table class="table table-dark table-hover" id="mypagetable">
								<thead>
									<tr align="center">
										<th colspan="2">${member.m_name}님환영합니다!</th>

									</tr>
								</thead>
								<tbody>
									<tr align="center">
										<td colspan="2">${member.m_address}</td>

									</tr>
									<tr align="center">
										<td colspan="2">보유 포인트<br /> ${member.m_point}점
										</td>
									</tr>
									<tr align="center">
										<td>내 몬씨앗 번호</td>
										<td>${member.a_num}</td>
									</tr>
									<tr align="center">
										<td>나의 구독내역</td>
										<td>${member.m_category}</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>

		</div>
	</section>
	<!-- 드랍다운-마이 페이지 섹션 끝 --> <!-- ======= 몬스타그램 ======= -->
	<section id="services" class="services">
		<div class="container">

			<div class="section-title" data-aos="fade-up">
				<h2>몬스타그램</h2>
				<p>Magnam dolores commodi suscipit eius consequatur ex aliquid
					fuga eum quidem</p>
			</div>

			<div class="row">
				<div class="col-lg-6 order-2 order-lg-1">
					<div class="icon-box mt-5 mt-lg-0" data-aos="fade-up">
						<i class="bx bx-receipt"></i>
						<h4>Est labore ad</h4>
						<p>Consequuntur sunt aut quasi enim aliquam quae harum
							pariatur laboris nisi ut aliquip</p>
					</div>
					<div class="icon-box mt-5" data-aos="fade-up" data-aos-delay="100">
						<i class="bx bx-cube-alt"></i>
						<h4>Harum esse qui</h4>
						<p>Excepteur sint occaecat cupidatat non proident, sunt in
							culpa qui officia deserunt</p>
					</div>
					<div class="icon-box mt-5" data-aos="fade-up" data-aos-delay="200">
						<i class="bx bx-images"></i>
						<h4>Aut occaecati</h4>
						<p>Aut suscipit aut cum nemo deleniti aut omnis. Doloribus ut
							maiores omnis facere</p>
					</div>
					<div class="icon-box mt-5" data-aos="fade-up" data-aos-delay="300">
						<i class="bx bx-shield"></i>
						<h4>Beatae veritatis</h4>
						<p>Expedita veritatis consequuntur nihil tempore laudantium
							vitae denat pacta</p>
					</div>
				</div>
				<div class="image col-lg-6 order-1 order-lg-2"
					style='background-image: url("./resources/assets/img/services.jpg");'
					data-aos="fade-left" data-aos-delay="100"></div>
			</div>

		</div>
	</section>
	<!-- 나의몬스타그램 섹션 끝 --> <!-- ======= 상품소개 및 구매 섹션 시작 ======= -->
	<section id="portfolio" class="portfolio">
		<div class="container">

			<div class="section-title" data-aos="fade-up">
				<h2>상품소개 및 구매</h2>
				<p>이미지를 클릭하면 바로 주문할 수 있어요!</p>
			</div>

			<div class="row" data-aos="fade-up" data-aos-delay="100">
				<div class="col-lg-12 d-flex justify-content-center">
					<ul id="portfolio-flters">
						<li data-filter="*" class="filter-active">모든 씨앗 보기</li>
						<li data-filter=".filter-app">1번 기준</li>
						<li data-filter=".filter-card">2번 기준</li>
						<li data-filter=".filter-web">3번 기준</li>
					</ul>
				</div>
			</div>

			<div class="row portfolio-container" data-aos="fade-up"
				data-aos-delay="200">

				<div class="col-lg-4 col-md-6 portfolio-item filter-app">
					<div class="portfolio-wrap">
						<img src="./resources/assets/img/portfolio/portfolio-1.jpg"
							class="img-fluid" alt="">
						<div class="portfolio-info">
							<h4>App 1</h4>
							<p>App</p>
							<div class="portfolio-links">
								<a href="./resources/assets/img/portfolio/portfolio-1.jpg"
									data-gall="portfolioGallery" class="venobox" title="App 1"><i
									class="bx bx-plus"></i></a> <a href="Seed_Details.jsp"
									title="More Details"><i class="bx bx-link"></i></a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 portfolio-item filter-web">
					<div class="portfolio-wrap">
						<img src="./resources/assets/img/portfolio/portfolio-2.jpg"
							class="img-fluid" alt="">
						<div class="portfolio-info">
							<h4>Web 3</h4>
							<p>Web</p>
							<div class="portfolio-links">
								<a href="./resources/assets/img/portfolio/portfolio-2.jpg"
									data-gall="portfolioGallery" class="venobox" title="Web 3"><i
									class="bx bx-plus"></i></a> <a href="Seed_Details.jsp"
									title="More Details"><i class="bx bx-link"></i></a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 portfolio-item filter-app">
					<div class="portfolio-wrap">
						<img src="./resources/assets/img/portfolio/portfolio-3.jpg"
							class="img-fluid" alt="">
						<div class="portfolio-info">
							<h4>App 2</h4>
							<p>App</p>
							<div class="portfolio-links">
								<a href="./resources/assets/img/portfolio/portfolio-3.jpg"
									data-gall="portfolioGallery" class="venobox" title="App 2"><i
									class="bx bx-plus"></i></a> <a href="Seed_Details.jsp"
									title="More Details"><i class="bx bx-link"></i></a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 portfolio-item filter-card">
					<div class="portfolio-wrap">
						<img src="./resources/assets/img/portfolio/portfolio-4.jpg"
							class="img-fluid" alt="">
						<div class="portfolio-info">
							<h4>Card 2</h4>
							<p>Card</p>
							<div class="portfolio-links">
								<a href="./resources/assets/img/portfolio/portfolio-4.jpg"
									data-gall="portfolioGallery" class="venobox" title="Card 2"><i
									class="bx bx-plus"></i></a> <a href="Seed_Details.jsp"
									title="More Details"><i class="bx bx-link"></i></a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 portfolio-item filter-web">
					<div class="portfolio-wrap">
						<img src="./resources/assets/img/portfolio/portfolio-5.jpg"
							class="img-fluid" alt="">
						<div class="portfolio-info">
							<h4>Web 2</h4>
							<p>Web</p>
							<div class="portfolio-links">
								<a href="./resources/assets/img/portfolio/portfolio-5.jpg"
									data-gall="portfolioGallery" class="venobox" title="Web 2"><i
									class="bx bx-plus"></i></a> <a href="Seed_Details.jsp"
									title="More Details"><i class="bx bx-link"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 portfolio-item filter-card">
					<div class="portfolio-wrap">
						<img src="./resources/assets/img/portfolio/portfolio-7.jpg"
							class="img-fluid" alt="">
						<div class="portfolio-info">
							<h4>Card 1</h4>
							<p>Card</p>
							<div class="portfolio-links">
								<a href="./resources/assets/img/portfolio/portfolio-7.jpg"
									data-gall="portfolioGallery" class="venobox" title="Card 1"><i
									class="bx bx-plus"></i></a> <a href="Seed_Details.jsp"
									title="More Details"><i class="bx bx-link"></i></a>
							</div>
						</div>
					</div>
				</div>

			</div>

		</div>
	</section>
	<!-- 상품소개 및 구매 섹션 끝 --> <!-- ======= 구독안내 및 신청 섹션 시작 ======= -->
	<section id="pricing" class="pricing section-bg">
		<div class="container">

			<div class="section-title" data-aos="fade-up">
				<h2>구독안내 및 신청</h2>
				<p>Magnam dolores commodi suscipit eius consequatur ex aliquid
					fuga eum quidem</p>
			</div>

			<div class="row">

				<div class="col-lg-4 col-md-6">
					<div class="box" data-aos="zoom-in" data-aos-delay="100">
						<h3>Free</h3>
						<h4>
							<sup>$</sup>0<span> / month</span>
						</h4>
						<ul>
							<li>Aida dere</li>
							<li>Nec feugiat nisl</li>
							<li>Nulla at volutpat dola</li>
							<li class="na">Pharetra massa</li>
							<li class="na">Massa ultricies mi</li>
						</ul>
						<div class="btn-wrap">
							<a href="#" class="btn-buy">Buy Now</a>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 mt-4 mt-md-0">
					<div class="box recommended" data-aos="zoom-in">
						<span class="recommended-badge">Recommended</span>
						<h3>Business</h3>
						<h4>
							<sup>$</sup>19<span> / month</span>
						</h4>
						<ul>
							<li>Aida dere</li>
							<li>Nec feugiat nisl</li>
							<li>Nulla at volutpat dola</li>
							<li>Pharetra massa</li>
							<li class="na">Massa ultricies mi</li>
						</ul>
						<div class="btn-wrap">
							<a href="#" class="btn-buy">Buy Now</a>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 mt-4 mt-lg-0">
					<div class="box" data-aos="zoom-in" data-aos-delay="100">
						<h3>Developer</h3>
						<h4>
							<sup>$</sup>29<span> / month</span>
						</h4>
						<ul>
							<li>Aida dere</li>
							<li>Nec feugiat nisl</li>
							<li>Nulla at volutpat dola</li>
							<li>Pharetra massa</li>
							<li>Massa ultricies mi</li>
						</ul>
						<div class="btn-wrap">
							<a href="#" class="btn-buy">Buy Now</a>
						</div>
					</div>
				</div>

			</div>

		</div>
	</section>
	<!-- 구독안내 및 신청 섹션 끝 --> <!-- ======= 커뮤니티 섹션 ======= -->
	<section id="contact" class="contact section-bg">
		<div class="container">

			<div class="section-title">
				<h2>커뮤니티</h2>
				<p>파머스 커뮤니티입니다. :)</p>
			</div>

			<div class="row">

				<div class="col-lg-4">
					<div class="info d-flex flex-column justify-content-center"
						data-aos="fade-right">
						<div class="address">
							<i class="icofont-google-map"></i>
							<h4>오시는 길:</h4>
							<p>
								광주 동구 예술길 31-15 3층<br>전일빌딩, 동부경찰서 부근
							</p>
						</div>

						<div class="email">
							<i class="icofont-envelope"></i>
							<h4>Email:</h4>
							<p>smhrd@smhrd.or.kr</p>
						</div>

						<div class="phone">
							<i class="icofont-phone"></i>
							<h4>Call:</h4>
							<p>062-655-3509</p>
						</div>

					</div>

				</div>

				<div class="col-lg-8 mt-5 mt-lg-0">
					<div class="info d-flex flex-column justify-content-center"
						data-aos="fade-right">

						<form action="insertBoard.do" method="post" data-aos="fade-left">

							<div class="form-row">
								<select name="b_div" class="custom-select mb-3 form-control">
									<option selected>선택해주세요</option>
									<option value="free">자유게시판</option>
									<option value="qna">Q&A</option>
								</select>
							</div>

							<div class="form-row">
								<div class="col-md-6 form-group">
									<input type="text" name="m_name" class="form-control"
										id="m_name" value="${member.m_name}" placeholder="이름을 입력하세요" />
									<div class="validate"></div>
								</div>
								<div class="col-md-6 form-group">
									<input type="text" class="form-control" name="m_mail"
										id="m_mail" value="${member.m_mail}" placeholder="메일주소를 입력하세요" />
									<div class="validate"></div>
								</div>
							</div>
							<div class="form-group">
								<input type="text" class="form-control" name="b_title"
									id="b_title" placeholder="제목을 입력하세요" data-msg="제목을 입력해주세요" />
								<div class="validate"></div>
							</div>
							<div class="form-group">
								<textarea class="form-control" name="b_content" rows="5"
									data-msg="내용을 입력해주세요" placeholder="내용을 입력하세요"></textarea>
								<div class="validate"></div>
							</div>
							<div class="form-row" style="display: none">
								<div class="col-md-6 form-group">
									<input type="text" name="m_num" class="form-control" id="m_num"
										value="${member.m_num}" />
									<div class="validate"></div>
								</div>
								<div class="col-md-6 form-group">
									<input type="text" class="form-control" name="b_date"
										id="b_date" value=<%=b_date%> />
									<div class="validate"></div>
								</div>
							</div>

							<div class="text-center">
								<button type="submit" class="form-control">작성하기</button>
							</div>
						</form>

					</div>
				</div>

				<div class="row" style="width: 100%">
					<br />
				</div>
				<div class="col-lg-12">
					<div class="info d-flex flex-column justify-content-center"
						data-aos="fade-right">

						<ul class="nav nav-tabs nav-justified">
							<li class="nav-item"><a class="nav-link active"
								data-toggle="pill" href="#all">ALL</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="pill"
								href="#inform">공지사항</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="pill"
								href="#free">자유게시판</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="pill"
								href="#qna">Q&A</a></li>

						</ul>

						<div class="tab-content">
							<div class="container tab-pane active" id="all">
								<br>
								<h2 style="text-align: center;">ALL</h2>
								<br>
								<table class="table">
									<thead class="thead-light">
										<tr>
											<th>제목</th>
											<th>이름</th>
											<th>날짜</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="list" items="${list}">
											<tr>
												<td><a href="contentOpen()">${list.b_title}</a></td>
												<td>${list.m_name}</td>
												<td>${list.b_date}</td>
											</tr>
											<tr colspan='3' style="visibility:hidden" id="boardContent">룰루랄라</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<div class="container tab-pane" id="inform">
								<br>
								<h2 style="text-align: center;">공지사항</h2>
								<br>
								<table class="table">
									<thead class="thead-light">
										<tr>
											<th>제목</th>
											<th>이름</th>
											<th>날짜</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="list" items="${list}">
											<c:if test="${list.b_div eq 'inform'}">
												<tr>
													<td><a>${list.b_title}</a></td>
													<td>${list.m_name}</td>
													<td>${list.b_date}</td>
												</tr>
											</c:if>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<div class="container tab-pane" id="free">
								<br>
								<h2 style="text-align: center;">자유게시판</h2>
								<br>
								<table class="table">
									<thead class="thead-light">
										<tr>
											<th>제목</th>
											<th>이름</th>
											<th>날짜</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="list" items="${list}">
											<c:if test="${list.b_div eq 'free'}">
												<tr>
													<td>${list.b_title}</td>
													<td>${list.m_name}</td>
													<td>${list.b_date}</td>
												</tr>
											</c:if>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<div class="container tab-pane" id="qna">
								<br>
								<h2 style="text-align: center;">Q&A</h2>
								<br>
								<table class="table">
									<thead class="thead-light">
										<tr>
											<th>제목</th>
											<th>이름</th>
											<th>날짜</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="list" items="${list}">
											<c:if test="${list.b_div eq 'qna'}">
												<tr>
													<td>${list.b_title}</td>
													<td>${list.m_name}</td>
													<td>${list.b_date}</td>
												</tr>
											</c:if>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>

					</div>

				</div>

			</div>

		</div>
	</section>
	<!-- 커뮤니티 섹션 끝 --> <!-- ======= 씨앗 나눔광장 섹션 시작  ======= -->
	<section id="why-us" class="why-us">
		<div class="container-fluid">

			<div class="row">

				<div
					class="col-lg-7 order-2 order-lg-1 d-flex flex-column justify-content-center align-items-stretch">

					<div class="content" data-aos="fade-up">
						<h3>
							<strong>씨앗 나눔광장</strong>
						</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua. Duis aute irure dolor in reprehenderit</p>
					</div>

					<div class="accordion-list">
						<ul>
							<li data-aos="fade-up" data-aos-delay="100"><a
								data-toggle="collapse" class="collapse" href="#accordion-list-1"><span>01</span>
									Non consectetur a erat nam at lectus urna duis? <i
									class="bx bx-chevron-down icon-show"></i><i
									class="bx bx-chevron-up icon-close"></i></a>
								<div id="accordion-list-1" class="collapse show"
									data-parent=".accordion-list">
									<p>Feugiat pretium nibh ipsum consequat. Tempus iaculis
										urna id volutpat lacus laoreet non curabitur gravida.
										Venenatis lectus magna fringilla urna porttitor rhoncus dolor
										purus non.</p>
								</div></li>

							<li data-aos="fade-up" data-aos-delay="200"><a
								data-toggle="collapse" href="#accordion-list-2"
								class="collapsed"><span>02</span> Feugiat scelerisque varius
									morbi enim nunc? <i class="bx bx-chevron-down icon-show"></i><i
									class="bx bx-chevron-up icon-close"></i></a>
								<div id="accordion-list-2" class="collapse"
									data-parent=".accordion-list">
									<p>Dolor sit amet consectetur adipiscing elit pellentesque
										habitant morbi. Id interdum velit laoreet id donec ultrices.
										Fringilla phasellus faucibus scelerisque eleifend donec
										pretium. Est pellentesque elit ullamcorper dignissim. Mauris
										ultrices eros in cursus turpis massa tincidunt dui.</p>
								</div></li>

							<li data-aos="fade-up" data-aos-delay="300"><a
								data-toggle="collapse" href="#accordion-list-3"
								class="collapsed"><span>03</span> Dolor sit amet consectetur
									adipiscing elit? <i class="bx bx-chevron-down icon-show"></i><i
									class="bx bx-chevron-up icon-close"></i></a>
								<div id="accordion-list-3" class="collapse"
									data-parent=".accordion-list">
									<p>Eleifend mi in nulla posuere sollicitudin aliquam
										ultrices sagittis orci. Faucibus pulvinar elementum integer
										enim. Sem nulla pharetra diam sit amet nisl suscipit. Rutrum
										tellus pellentesque eu tincidunt. Lectus urna duis convallis
										convallis tellus. Urna molestie at elementum eu facilisis sed
										odio morbi quis</p>
								</div></li>

						</ul>
					</div>

				</div>
			</div>

		</div>
	</section>
	<!-- 씨앗 나눔 광장 섹션 끝 --> </main>
	<!-- 메인 페이지 1 ~ 6번까지 끝 -->

	<!--======================================= 이 아래 코드는 안봐도되요========================================================= -->
	<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>
	<script src="./resources/assets/vendor/jquery/jquery.min.js"></script>
	<script
		src="./resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="./resources/assets/vendor/jquery.easing/jquery.easing.min.js"></script>
	<script src="./resources/assets/vendor/php-email-form/validate.js"></script>
	<script src="./resources/assets/vendor/jquery-sticky/jquery.sticky.js"></script>
	<script src="./resources/assets/vendor/venobox/venobox.min.js"></script>
	<script
		src="./resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script
		src="./resources/assets/vendor/owl.carousel/owl.carousel.min.js"></script>
	<script src="./resources/assets/vendor/aos/aos.js"></script>
	<!-- Template Main JS File -->
	<script src="./resources/assets/js/main.js"></script>
</body>
</html>