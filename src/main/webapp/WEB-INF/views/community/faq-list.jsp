<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1" name="viewport">

<title>CAMPUS - 자주묻는 질문</title>
<meta content="" name="description">
<meta content="" name="keywords">
<!-- 아코디언용 부트스트랩 css -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

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
<!-- end of sidebar css,js -->

<!--  사이드바 관리자 아이콘 -->
<script
	src="https://code.iconify.design/iconify-icon/1.0.1/iconify-icon.min.js"></script>

<style type="text/css">
.container-fluid {
	background: rgba(26, 26, 26, 0.9);
}

.collapse {
	visibility: visible;
}

.accordion-header {
	margin-top: 0;
}

.accordion #accordionExample { -
	-bs-accordion-color: #212529; -
	-bs-accordion-bg: #fff; -
	-bs-accordion-transition: color 0.15s ease-in-out, background-color
		0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s
		ease-in-out, border-radius 0.15s ease; -
	-bs-accordion-border-color: var(- -bs-border-color); -
	-bs-accordion-border-width: 1px; -
	-bs-accordion-border-radius: 0.375rem; -
	-bs-accordion-inner-border-radius: calc(0.375rem - 1px); -
	-bs-accordion-btn-padding-x: 1.25rem; -
	-bs-accordion-btn-padding-y: 1rem; -
	-bs-accordion-btn-color: #212529; -
	-bs-accordion-btn-bg: var(- -bs-accordion-bg); -
	-bs-accordion-btn-icon: url(data : image/ svg + xml, % 3csvg xmlns =
		'http://www.w3.org/2000/svg' viewBox = '0 0 16 16' fill = '%23212529'
		% 3e % 3cpath fill-rule = 'evenodd' d =
		'M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z'
		/ % 3e % 3c/ svg % 3e); -
	-bs-accordion-btn-icon-width: 1.25rem; -
	-bs-accordion-btn-icon-transform: rotate(-180deg); -
	-bs-accordion-btn-icon-transition: transform 0.2s ease-in-out; -
	-bs-accordion-btn-active-icon: url(data : image/ svg + xml, % 3csvg xmlns =
		'http://www.w3.org/2000/svg' viewBox = '0 0 16 16' fill = '%230c63e4'
		% 3e % 3cpath fill-rule = 'evenodd' d =
		'M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z'
		/ % 3e % 3c/ svg % 3e); -
	-bs-accordion-btn-focus-border-color: #86b7fe; -
	-bs-accordion-btn-focus-box-shadow: 0 0 0 0.25rem
		rgba(13, 110, 253, 0.25); -
	-bs-accordion-body-padding-x: 1.25rem; -
	-bs-accordion-body-padding-y: 1rem; -
	-bs-accordion-active-color: #0c63e4; -
	-bs-accordion-active-bg: #e7f1ff;
}
</style>

</head>
<body>

	<!-- ======= Header ======= -->
	<jsp:include page="/WEB-INF/views/include/header.jsp" />
	<!-- End Header -->


	<main id="main">

		<!-- ======= Breadcrumbs ======= -->
		<section id="breadcrumbs" class="breadcrumbs">
			<div class="container">

				<ol>
					<li><a href="main">홈</a></li>
				</ol>
				<h2>자주묻는 질문</h2>

			</div>
		</section>
		<!-- End Breadcrumbs -->

		<!-- ======= Blog Section ======= -->
		<section id="blog" class="blog">

			<div class="container" data-aos="fade-up">
				<div class="row">

					<div class="col-lg-8 entries">
						<c:forEach var="board" items="${boards}">
							<div class="accordion" id="accordionExample">
								<div class="accordion-item">
									<h2 class="accordion-header" id="headingOne">
										<button class="accordion-button" type="button"
											data-bs-toggle="collapse" data-bs-target="#collapseOne"
											aria-expanded="true" aria-controls="collapseOne">
											${board.title}</button>
									</h2>
									<div id="collapseOne" class="accordion-collapse collapse show"
										aria-labelledby="headingOne"
										data-bs-parent="#accordionExample">
										<div class="accordion-body">
											<c:set var="enter" value="
" />
											${ fn:replace(board.content, enter, "<br>") }

											<c:if
												test="${ not empty loginuser and loginuser.memberId eq board.memberId }">
												<a id="faq-delete" style="float:right">[삭제]</a>
												<a href="faq-edit.action?boardNo=${board.boardNo}" style="float:right">[수정]</a>
											</c:if>


										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>

					<!-- End blog entries list -->

					<div class="col-lg-4">

						<div class="sidebar">

							<h3 class="sidebar-title">카테고리</h3>
							<div class="sidebar-item categories">
								<ul>
									<li><a href="faq-list.action">자주묻는 질문</a></li>
									<li><a href="inquiry.action">1:1 문의</a></li>
								</ul>
							</div>
							<!-- End sidebar categories-->

						</div>
						<!-- End sidebar -->

						<c:if
							test="${not empty loginuser and loginuser.memberId eq board.memberId}">
							<article class="entry">
								<div class="entry-content">
									<div class="read-more">
										<a href="admin-write.action">새 글 쓰기</a>
									</div>
								</div>
							</article>
							<!-- End write entry -->
						</c:if>

					</div>
					<!-- End blog sidebar -->

				</div>

			</div>
		</section>
		<!-- End Blog Section -->

	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	<!-- End Footer -->

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center">


		<i class="bi bi-arrow-up-short"></i>
	</a>
	<!-- Uncomment below i you want to use a preloader -->
	<!-- <div id="preloader"></div> -->

	<!-- 아코디언용 부트스르랩 js -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js"></script>

	<!-- Vendor JS Files -->
	<script
		src="/campus/resources/assets/vendor/purecounter/purecounter_vanilla.js"></script>
	<script src="/campus/resources/assets/vendor/aos/aos.js"></script>
	<script
		src="/campus/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="/campus/resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
	<script
		src="/campus/resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script
		src="/campus/resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
	<script
		src="/campus/resources/assets/vendor/waypoints/noframework.waypoints.js"></script>
	<script
		src="/campus/resources/assets/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="/campus/resources/assets/js/main.js"></script>

	<!-- sidebar -->
	<script src="/campus/resources/sidebar/js/vendor/jquery-1.11.2.min.js"></script>
	<script data-pace-options='{ "ajax": false }'
		src="/campus/resources/sidebar/js/vendor/pace.min.js"></script>
	<!-- 	<script src="/campus/resources/sidebar/js/vendor/bootstrap.min.js"></script> -->
	<script src="/campus/resources/sidebar/js/vendor/classie.js"></script>
	<script src="/campus/resources/sidebar/js/vendor/isotope.pkgd.min.js"></script>
	<script
		src="/campus/resources/sidebar/js/vendor/jquery.velocity.min.js"></script>
	<script
		src="/campus/resources/sidebar/js/vendor/jquery.kenburnsy.min.js"></script>
	<script src="/campus/resources/sidebar/js/vendor/textslide.js"></script>
	<script
		src="/campus/resources/sidebar/js/vendor/imagesloaded.pkgd.min.js"></script>
	<script src="/campus/resources/sidebar/js/vendor/tabs.js"></script>
	<script src="/campus/resources/sidebar/js/ef-slider.js"></script>
	<script src="/campus/resources/sidebar/js/vendor/owl.carousel.min.js"></script>
	<script
		src="/campus/resources/sidebar/js/vendor/jquery.magnific-popup.min.js"></script>
	<script
		src="/campus/resources/sidebar/js/vendor/jquery.social-buttons.min.js"></script>
	<script src="/campus/resources/sidebar/js/vendor/wow.min.js"></script>
	<script src="/campus/resources/sidebar/js/main.js"></script>
	<script src="/campus/resources/sidebar/js/ajax.js"></script>
	<!-- /.sidebar -->

	<script type="text/javascript">
$(function(){
	
	$('#faq-delete').on('click',function(event){
		
		const ok = confirm("글을 삭제할까요?");
		if(!ok) return;
		location.href = 'faq-delete.action?boardNo=${board.boardNo}';
		
	});
	
	
	
});
</script>

</body>

</html>