<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>CAMPUS - 1:1 문의</title>
<meta content="" name="description">
<meta content="" name="keywords">

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
				<h2>1:1 문의 - ${ search } 검색 결과 입니다</h2>

			</div>
		</section>
		<!-- End Breadcrumbs -->

		<!-- ======= Blog Section ======= -->
		<section id="blog" class="blog">
			<div class="container" data-aos="fade-up">

				<div class="row">

					<div class="col-lg-8 entries">
						<c:forEach var="board" items="${boards}">
							<input type="hidden" name="boardNo" value="board.boardNo">
							<article class="entry">

								<h2 class="entry-title">
									<a
										href="inquiry-detail.action?boardNo=${board.boardNo}&pageNo=${pageNo}">${board.title}</a>
								</h2>

								<div class="entry-meta">
									<ul>
										<li class="d-flex align-items-center"><i
											class="bi bi-person"></i>${board.memberId}</li>
										<li class="d-flex align-items-center"><i
											class="bi bi-clock"></i>${board.writeDate}</li>
										<li class="d-flex align-items-center"><i
											class="bi bi-eye"></i>${board.readCount}</li>
									</ul>
								</div>

								<div class="entry-content">
									<div class="read-more">
										<a
											href='inquiry-detail.action?boardNo=${board.boardNo}&pageNo=${pageNo}'>글
											읽기</a>
									</div>
								</div>

							</article>
						</c:forEach>

						<div class="blog-pagination">
							<ul class="justify-content-center">
							
								<%-- <c:choose>
									<c:when test="${pageNo==1}">
										<li class="active"><a href="#">${ pageNo }</a></li>
										<li><a href="inquiry.action?pageNo=${ pageNo+1 }">${ pageNo+1 }</a></li>
										<li><a href="inquiry.action?pageNo=${ pageNo+2 }">${ pageNo+2 }</a></li>
									</c:when>
									<c:when test="${pageNo==pageCount}">
										<li><a href="inquiry.action?pageNo=${ pageNo-2 }">${ pageNo-2 }</a></li>
										<li><a href="inquiry.action?pageNo=${ pageNo-1 }">${ pageNo-1 }</a></li>
										<li class="active"><a href="#">${ pageNo }</a></li>
									</c:when>
									<c:otherwise>
										<li><a href="inquiry.action?pageNo=${pageNo-1 }">${ pageNo-1 }</a></li>
										<li class="active"><a href="#">${ pageNo }</a></li>
										<li><a href="inquiry.action?pageNo=${ pageNo+1 }">${ pageNo+1 }</a></li>
									</c:otherwise>
								</c:choose> --%>
								
								<c:choose>
									<c:when test="${pageCount==0}">
										<li class="active"><a href="#">검색 결과가 없습니다.</a></li>
									</c:when>

									<c:when test="${pageCount==1}">
										<li class="active"><a href="#">${ pageNo }</a></li>
									</c:when>

									<c:when test="${pageCount==2}">

										<c:choose>
											<c:when test="${pageNo==1}">
												<li class="active"><a href="#">${ pageNo }</a></li>
												<li><a
													href="inquiry-search.action?pageNo=${ pageNo+1 }&search=${search}&searchOption=${searchOption}">${ pageNo+1 }</a></li>
											</c:when>
											<c:when test="${pageNo==2}">
												<li><a
													href="inquiry-search.action?pageNo=${ pageNo-1 }&search=${search}&searchOption=${searchOption}">${ pageNo-1 }</a></li>
												<li class="active"><a href="#">${ pageNo }</a></li>
											</c:when>
										</c:choose>

									</c:when>

									<c:otherwise>

										<c:choose>
											<c:when test="${pageNo==1}">
												<li class="active"><a href="#">${ pageNo }</a></li>
												<li><a
													href="inquiry-search.action?pageNo=${ pageNo+1 }&search=${search}&searchOption=${searchOption}">${ pageNo+1 }</a></li>
												<li><a
													href="inquiry-search.action?pageNo=${ pageNo+2 }&search=${search}&searchOption=${searchOption}">${ pageNo+2 }</a></li>
											</c:when>
											<c:when test="${pageNo==pageCount}">
												<li><a
													href="inquiry-search.action?pageNo=${ pageNo-2 }&search=${search}&searchOption=${searchOption}">${ pageNo-2 }</a></li>
												<li><a
													href="inquiry-search.action?pageNo=${ pageNo-1 }&search=${search}&searchOption=${searchOption}">${ pageNo-1 }</a></li>
												<li class="active"><a href="#">${ pageNo }</a></li>
											</c:when>
											<c:when test="${pageNo!=pageCount}">
												<li><a
													href="inquiry-search.action?pageNo=${pageNo-1 }&search=${search}&searchOption=${searchOption}">${ pageNo-1 }</a></li>
												<li class="active"><a href="#">${ pageNo }</a></li>
												<li><a
													href="inquiry-search.action?pageNo=${ pageNo+1 }&search=${search}&searchOption=${searchOption}">${ pageNo+1 }</a></li>
											</c:when>
										</c:choose>

									</c:otherwise>
								</c:choose>
							</ul>
						</div>
					</div>
					<!-- End blog entries list -->

					<div class="col-lg-4">

						<div class="sidebar">
							<h3 class="sidebar-title">검색</h3>
							<div class="sidebar-item search-form">
								<form action="inquiry-search.action" method="post">
									<input type="text" class="form-control" name="search">
									<button type="submit">
										<i class="bi bi-search"></i>
									</button>
								</form>
							</div>
							<!-- End sidebar search formn-->

							<h3 class="sidebar-title">고객센터</h3>
							<div class="sidebar-item categories">
								<ul>
									<li><a href="faq-list.action">자주 묻는 질문</a></li>
									<li><a href="inquiry.action">1:1 문의</a></li>
								</ul>
							</div>
							<!-- End sidebar categories-->

							<h3 class="sidebar-title">태그</h3>
							<div class="sidebar-item tags">
								<ul>
									<li><a href="inquiryTag.action?tag=대여">대여</a></li>
									<li><a href="inquiryTag.action?tag=반납">반납</a></li>
									<li><a href="inquiryTag.action?tag=상품">상품</a></li>
									<li><a href="inquiryTag.action?tag=기타">기타</a></li>

								</ul>
							</div>
							<!-- End sidebar tags-->

						</div>
						<!-- End sidebar -->


						<article class="entry">

							<div class="entry-content">
								<div class="read-more">
									<a href="inquiry-write.action">새 글 쓰기</a>
								</div>
							</div>
						</article>
						<!-- End write entry -->

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
	<script src="/campus/resources/sidebar/js/vendor/bootstrap.min.js"></script>
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
	
	$('#search-btn').on('click',function(event){
		let search=$('#search').val();
		let searchOption=$('#searchOption').val();
		location.href = 'inquiry-search.action?search='+search+'&searchOption='+searchOption;
		
		
	});
	
	
});

</script>
</body>

</html>