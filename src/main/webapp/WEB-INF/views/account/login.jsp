<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Campus</title>
<meta content="" name="description">
<meta content="" name="keywords">
<meta name="description" content="">
<meta name="msapplication-tap-highlight" content="yes" />
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1, minimum-scale=1.0, maximum-scale=1.0" />

<!-- Favicons -->
<link href="/campus/resources/assets/img/favicon.png" rel="icon">
<link href="/campus/resources/assets/img/apple-touch-icon.png"
	rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="/campus/resources/assets/vendor/animate.css/animate.min.css"
	rel="stylesheet">
<link href="/campus/resources/assets/vendor/aos/aos.css"
	rel="stylesheet">
<link
	href="/campus/resources/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="/campus/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link
	href="/campus/resources/assets/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link
	href="/campus/resources/assets/vendor/swiper/swiper-bundle.min.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="/campus/resources/assets/css/style.css" rel="stylesheet">

<!-- =======================================================
  * Template Name: BizPage - v5.10.1
  * Template URL: https://bootstrapmade.com/bizpage-bootstrap-business-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->

<!-- sidebar css,js -->
<!-- Google Web Font -->
<link
	href='http://fonts.googleapis.com/css?family=Ubuntu:300,400,500,700'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Lekton:400,700,400italic'
	rel='stylesheet' type='text/css'>

<!--  Bootstrap 3-->
<link rel="stylesheet"
	href="/campus/resources/sidebar/css/bootstrap.min.css">

<!-- OWL Carousel -->
<link rel="stylesheet"
	href="/campus/resources/sidebar/css/owl.carousel.css">
<link rel="stylesheet"
	href="/campus/resources/sidebar/css/owl.theme.css">

<!--  Slider -->
<link rel="stylesheet"
	href="/campus/resources/sidebar/css/jquery.kenburnsy.css">

<!-- Animate -->
<link rel="stylesheet" href="/campus/resources/sidebar/css/animate.css">

<!-- Web Icons Font -->
<link rel="stylesheet"
	href="/campus/resources/sidebar/css/pe-icon-7-stroke.css">
<link rel="stylesheet" href="/campus/resources/sidebar/css/iconmoon.css">
<link rel="stylesheet" href="/campus/resources/sidebar/css/et-line.css">
<link rel="stylesheet" href="/campus/resources/sidebar/css/ionicons.css">

<!-- Magnific PopUp -->
<link rel="stylesheet"
	href="/campus/resources/sidebar/css/magnific-popup.css">

<!-- Tabs -->
<link rel="stylesheet" type="text/css"
	href="/campus/resources/sidebar/css/tabs.css" />
<link rel="stylesheet" type="text/css"
	href="/campus/resources/sidebar/css/tabstyles.css" />

<!-- Loader Style -->
<link rel="stylesheet" href="/campus/resources/sidebar/css/loader-1.css">

<!-- Costum Styles -->
<link rel="stylesheet" href="/campus/resources/sidebar/css/main.css">
<link rel="stylesheet"
	href="/campus/resources/sidebar/css/responsive.css">

<!-- Favicon -->
<link rel="icon" type="image/ico" href="favicon.ico">

<!-- Modernizer & Respond js -->
<script
	src="/campus/resources/sidebar/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>

<!-- sidebar css,js -->
<!-- 사이드바 아이콘 링크  -->
<script
	src="https://code.iconify.design/iconify-icon/1.0.1/iconify-icon.min.js"></script>

</head>
<body>

	<div id='pageContainer'>

		<!-- ======= Header ======= -->
		<jsp:include page="/WEB-INF/views/include/header.jsp" />
		<!-- End Header -->

		<div id="inputcontent">
			<br />
			<br />
			<div id="inputmain">
				<div class="inputsubtitle">로그인정보</div>

				<form action="login.action" method="post">

					<table>
						<tr>
							<th>아이디(ID)</th>
							<td><input type="text" name="memberId" style="width: 280px" />
							</td>
						</tr>
						<tr>
							<th>비밀번호</th>
							<td><input type="password" name="passwd"
								style="width: 280px" /></td>
						</tr>
					</table>

					<div class="buttons">
						<input type="submit" value="로그인" style="height: 25px" /> <input
							type="button" value="취소" style="height: 25px" />
					</div>
				</form>

			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
	<script type="text/javascript">
		$(function() {
			<c:if test="${ not empty loginfail }">
			alert('로그인 실패 : 아이디와 패스워드를 확인하세요');
			</c:if>
		});
	</script>

</body>
</html>