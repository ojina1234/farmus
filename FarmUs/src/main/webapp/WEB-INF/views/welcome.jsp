<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>파머스(Farm Us), 월간씨앗 프로젝트</title>
<meta content="" name="description">
<meta content="" name="keywords">
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

			<nav class="nav-menu d-none d-lg-block">
				<ul class="nav-inner">

					<li class="nav-logo"><img
						src="./resources/assets/img/start.png" width="80px" alt=""
						class="img-fluid"></li>
				</ul>
			</nav>
			<!-- 메뉴모음 끝 -->

		</div>
	</header>
	<!-- 헤더 및 메뉴 끝 -->

	<main id="main">
	<section id="about" class="about">
		<div class="container">

			<div class="section-title" data-aos="fade-up">
				<h2>월간씨앗에 오신걸 환영합니다!</h2>
				<p>지금 당장 회원가입 하고 월간 씨앗을 구독 해 보세요!</p>
			</div>

			<div class="row">
				<div class="col-lg-6" data-aos="fade-right">
					<div class="image">
						<h2 align = "center">이미 회원이신가요?</h2>
						<div class="col-lg-8 mt-5 mt-lg-0">

					<form action = "login.do" method="post" data-aos="fade-left">
						<div class="form-row">
						
							<div class="col-md-6 form-group">
								<input type="text" name="m_mail" class="form-control" 
									placeholder="이메일을 입력하세요"/>
							</div>
						</div>
						<div class="form-row">
						<div class="col-md-6 form-group">
								<input type="text" name="m_pass" class="form-control" 
									placeholder="비밀번호를 입력하세요"/>
							</div>
						</div>
						<div class="mb-3">
						</div>
						<div class="text-center">
							<button type="submit">로그인</button>
						</div>
					</form>

				</div>
					</div>
				</div>
				
<!-- ===================위 로그인 아래 회원가입======================== -->
				<div class="col-lg-6" data-aos="fade-left">
					<div class="image">
						<h2 align = "center">회원이 아니신가요?</h2>
						
						<div class="col-lg-8 mt-5 mt-lg-0">

					<form action = "sign()" method="post" data-aos="fade-left">
						<div class="form-row">
							<div class="col-md-6 form-group">
								<input type="text" name="name" class="form-control" id="name"
									placeholder="Your Name" data-rule="minlen:4"
									data-msg="Please enter at least 4 chars" />
								<div class="validate"></div>
							</div>
							<div class="col-md-6 form-group">
								<input type="email" class="form-control" name="email" id="email"
									placeholder="Your Email" data-rule="email"
									data-msg="Please enter a valid email" />
								<div class="validate"></div>
							</div>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="subject"
								id="subject" placeholder="Subject" data-rule="minlen:4"
								data-msg="Please enter at least 8 chars of subject" />
							<div class="validate"></div>
						</div>
						<div class="form-group">
							<textarea class="form-control" name="message" rows="5"
								data-rule="required" data-msg="Please write something for us"
								placeholder="Message"></textarea>
							<div class="validate"></div>
						</div>
						<div class="mb-3">
						</div>
						<div class="text-center">
							<button type="submit">회원가입</button>
						</div>
					</form>

				</div>
					</div>
				</div>
			</div>

		</div>
	</section>
	</main>
	























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