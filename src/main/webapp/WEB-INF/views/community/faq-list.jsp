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
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">

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

.accordion table {
  border-collapse: collapse;
  text-align: left;
  line-height: 1.5;
  border-top: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
  margin: 20px 10px;
  width: 100%;
}
.accordion table thead th {
  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  color: #18d26e;
  background: #fff;
  margin: 20px 10px;
}

.accordion table tbody th {
  width: 100%;
  padding: 10px;
}
.accordion table td {
  width: 100%;
  padding: 10px;
  vertical-align: top;
}
.accordion table i {
  cursor: pointer;
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
					<li><a href="main" >홈</a></li>
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
					<c:set var="i" value="${ i+1 }" />
					<input id="hiddenBoardNo${i}" style="display:none" value="${ board.boardNo }" >
							<div class="accordion">
								<table>
									<thead>
										<tr>
											<th style="width:90%">${ board.title }</th>
											
											<th style="width:10%">
											<i id="toggle-btn${i}" style="float:right;" class="bi bi-caret-down-fill"></i></th>
										</tr>
									</thead>
									<tbody>
										<tr>
										<c:set var="enter" value="
" />
											<td id="toggle-content${i}" style="display:none">${ fn:replace(board.content, enter, "<br>") }
											<c:if test="${not empty loginuser and loginuser.admin eq 'Admin'}">
												<a id="faq-delete${i}" class="bi bi-trash" style="float:right"></a>
												<a href="faq-edit.action?boardNo=${board.boardNo}" class="bi bi-pencil-square"  style="float:right"></a>
											</c:if>
											</td>
										</tr>
									</tbody>
								</table>
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
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

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
		$(function() {
			
			let last_char= null;
			
			$('[id*=toggle-btn]').on('click',function(event){
				
						if($(this).hasClass('bi bi-caret-down-fill')) {
						$(this).removeClass('bi bi-caret-down-fill').addClass('bi bi-caret-up-fill');
						last_char = this.id.substr(10);
						$('#toggle-content'+last_char).removeAttr("style").show();
					} else if($(this).hasClass('bi bi-caret-up-fill')){
						$($(this)).removeClass('bi bi-caret-up-fill').addClass('bi bi-caret-down-fill');
						last_char = this.id.substr(10);
						$('#toggle-content'+last_char).removeAttr("style").hide();
					}
			});
			
			$('[id*=faq-delete]').on('click', function(event) {
				last_char = this.id.substr(10);
				const ok = confirm("글을 삭제할까요?");
				if (!ok)
					return;
				location.href = 'faq-delete.action?boardNo='+$('#hiddenBoardNo'+last_char).val();
			});
			
		});
	</script>

</body>

</html>