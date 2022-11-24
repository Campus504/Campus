<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>CAMPUS - 캠핑 팁</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- summer note -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css"
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
<!-- <link rel="stylesheet"
	href="/campus/resources/sidebar/css/bootstrap.min.css"> -->

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
					<li><a href="tip-list.action">캠핑 팁</a></li>
				</ol>
				<h2>캠핑 팁 글 쓰기</h2>

			</div>
		</section>
		<!-- End Breadcrumbs -->

		<!-- ======= Blog Single Section ======= -->
		<section id="blog" class="blog">
			<div class="container" data-aos="fade-up">

				<div class="row">

					<div class="col-lg-8 entries">

						<article class="entry entry-single">

							<form action="tip-write.action" method="post"
								enctype="multipart/form-data">
								<input type="hidden" name="memberId"
									value="${loginuser.memberId}"> <input type="hidden"
									name="category" value="tip">
								<h2 class="entry-title">
									<span class="d-flex align-items-center"> <i
										class="bi bi-caret-down-fill"></i>제목
									</span> <input type="text" name="title" id="board-title">
								</h2>

								<div class="entry-meta">
									<ul>
										<li class="d-flex align-items-center"><i
											class="bi bi-person"></i>${loginuser.memberId}</li>
									</ul>
								</div>

								<div class="entry-content">
									<span class="d-flex align-items-center"> <i
										class="bi bi-caret-down-fill"></i>내용
									</span>
									<textarea id="summernote" name="content" placeholder=""></textarea>

								</div>

								<input type="submit" id="board-submit" value="글쓰기" style="height: 25px" /> <input
									type="button" value="취소" class="cancel" style="height: 25px" />
							</form>

						</article>
						<!-- End blog entry -->


					</div>
					<!-- End blog entries list -->


				</div>

			</div>
		</section>
		<!-- End Blog Single Section -->
	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	<!-- End Footer -->

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>
	<!-- Uncomment below i you want to use a preloader -->
	<!-- <div id="preloader"></div> -->

	<!-- summer note -->
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"
		defer></script>
	<script src="https://code.jquery.com/jquery-migrate-1.4.1.min.js"></script>

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
	<!-- 	<script src="/campus/resources/sidebar/js/vendor/jquery-1.11.2.min.js"></script> -->
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
		$(function() {

			$(".cancel").on('click', function(event) {
				location.href = "/campus/tip-list.action";
			});

			

			$('#summernote').summernote({
				dialogsInBody: true,
				height : 200,
				onImageUpload : function(files, editor, welEditable) {
					sendFile(files[0], editor, welEditable);
				}
			});
			
			$('#board-submit').on('click', function(event){  
				
				if ($('#board-title').val()==''){
				  alert("제목을 입력하세요");  
				  return false;  
				}else if($('#summernote').val()==''){
				  alert("내용을 입력하세요");
				  return false;
				  }  
				return true;
				});  

			function sendFile(file, editor, welEditable) {
				data = new FormData();
				data.append("file", file);
				$.ajax({
					data : data,
					type : "POST",
					url : "upload-image-file",
					cache : false,
					contentType : false,
					processData : false,
					success : function(url) {
						editor.insertImage(welEditable, url);
					}
				});
			}

		});
	</script>

</body>

</html>