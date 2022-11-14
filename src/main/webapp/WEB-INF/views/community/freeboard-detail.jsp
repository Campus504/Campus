<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>CAMPUS - 자유게시판</title>
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
					<li><a href="freeboard.action">자유게시판</a></li>
				</ol>
				<h2>자유게시판</h2>

			</div>
		</section>
		<!-- End Breadcrumbs -->

		<!-- ======= Blog Single Section ======= -->
		<section id="blog" class="blog">
			<div class="container" data-aos="fade-up">

				<div class="row">

					<div class="col-lg-8 entries">

						<article class="entry entry-single">

							<h2 class="entry-title">${ board.title }</h2>

							<div class="entry-meta">
								<ul>
									<li class="d-flex align-items-center"><i
										class="bi bi-person"></i>${board.memberId}</li>
									<li class="d-flex align-items-center"><i
										class="bi bi-clock"></i>${board.writeDate}</li>
									<li class="d-flex align-items-center"><i class="bi bi-eye"></i>${board.readCount}</li>
								</ul>
							</div>

							<div class="entry-content">
								<p>
									<c:set var="enter" value="
" />
									${ fn:replace(board.content, enter, "<br>") }
								</p>
							</div>

						</article>
						<!-- End blog entry -->

						<article class="entry entry-single">

							<span class="tag">태그 : ${community.tag}</span>
						</article>
						<div class="blog-comments" id="comment-list"></div>

						<div class="blog-comments">

							<!-- 댓글 출력 위치 -->

							<div class="reply-form">
								<form id="commentform" action="write-comment.action"
									method="post">
									<input type="hidden" name="boardNo" value="${ board.boardNo }" />
									<input type="hidden" name="memberId"
										value="${ loginuser.memberId }" /> <input type="hidden"
										name="pageNo" value="${ pageNo }" />
									<div class="row">
										<div class="col-md-6 form-group">
											<input value="${ loginuser.memberId }" readonly>
										</div>
									</div>
									<div class="row">
										<div class="col form-group">
											<textarea id="comment_content" name="content"
												class="form-control" placeholder="댓글을 작성하세요"></textarea>
										</div>
									</div>
									<a id="writecomment" href="javascript:" class="btn btn-primary">댓글
										등록</a>

								</form>

								

							</div>

						</div>
						<!-- End blog comments -->

					</div>
					<!-- End blog entries list -->

					<div class="col-lg-4">

						<div class="sidebar">

							<h3 class="sidebar-title">검색하기</h3>
							<div class="sidebar-item search-form">

								<div class="mb-3">
									<select class="form-select form-select-lg" id="searchOption"
										name="searchOption">
										<option value="title">제목</option>
										<option value="content">내용</option>
										<option value="memberId">작성자</option>
									</select>
								</div>
								<form>
									<input type="text" class="form-control" id="search"
										name="search">
									<button type="button" id="search-btn">
										<i class="bi bi-search"></i>
									</button>
								</form>
							</div>
							<!-- End sidebar search form-->

							<h3 class="sidebar-title">카테고리</h3>
							<div class="sidebar-item categories">
								<ul>
									<li><a href="notice-list.action">공지사항</a></li>
									<li><a href="freeboard.action">자유 게시판</a></li>
									<li><a href="tip-list.action">캠핑 팁</a></li>
								</ul>
							</div>
							<!-- End sidebar categories-->

							<h3 class="sidebar-title">태그</h3>
							<div class="sidebar-item tags">
								<ul>
									<li><a href="freeboard-tag.action?tag=질문">질문</a></li>
									<li><a href="freeboard-tag.action?tag=후기">후기</a></li>
									<li><a href="freeboard-tag.action?tag=자랑">자랑</a></li>
									<li><a href="freeboard-tag.action?tag=일상">일상</a></li>
									<li><a href="freeboard-tag.action?tag=기타">기타</a></li>
								</ul>
							</div>
							<!-- End sidebar tags-->

						</div>
						<!-- End sidebar -->

						<article class="entry">

							<div class="entry-content">
								<div class="read-more">
									<c:if
										test="${ not empty loginuser and loginuser.memberId eq board.memberId }">
										<a
											href="freeboard-edit.action?boardNo=${board.boardNo}&pageNo=${pageNo}">수정</a>
										<a class="delete_button">삭제</a>
									</c:if>
									<a href="freeboard.action?pageNo=${pageNo}">목록보기</a>
								</div>
							</div>
						</article>
						<!-- End write entry -->

					</div>
					<!-- End blog sidebar -->

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
		$(function() {

			$('.delete_button').on('click',	function(event) {
								const ok = confirm("글을 삭제할까요?");
								if (!ok)
									return;
								location.href = 'freeboard-delete.action?boardNo=${board.boardNo}&pageNo=${ pageNo }';
							});

			$('#search-btn').on('click',function(event) {
						let search = $('#search').val();
						let searchOption = $('#searchOption').val();
						location.href = 'freeboard-search.action?search='
								+ search + '&searchOption=' + searchOption;
					});

			
			
			//////////////////////////댓글/////////////////////////////////////
			
			

			$('#comment-list').load("comment-list.action?boardNo=${board.boardNo}&pageNo=${pageNo}");

			$('#writecomment').on('click',function(event) { // 댓글 작성
				
				if( ${loginuser.memberId==null} ){
					alert('로그인 후 댓글을 작성하세요');
					return;
				};
				
				
			
								const formData = $('#commentform').serialize(); //form 내부의 모든 입력요소의 값을 전송 가능한 형태로 반환

								$.ajax({
											"url" : "write-comment.action",
											"method" : "post",
											"data" : formData,
											"success" : function(data, status, xhr) {
												if (data == "success") {
													$('#comment-list').load("comment-list.action?boardNo=${board.boardNo}");
													$('#commentform textarea').val('');
												}
											},
											"error" : function(xhr, status, err) {
											}
										});
							});

			var correntEditCommentNo = null;

			$('#comment-list').on('click', '.edit-comment', function(event) { //댓글 편집
				event.preventDefault();
				if (correntEditCommentNo != null) {
					$('#comment-view-area-' + correntEditCommentNo).show();
					$('#comment-edit-area-' + correntEditCommentNo).hide();
					$("div [id*='recomment-area']").hide();
				}

				var commentNo = $(this).data('comment-no');

				$('#comment-view-area-' + commentNo).hide();
				$('#comment-edit-area-' + commentNo).show();
				$("div [id*='recomment-area']").hide();

				correntEditCommentNo = commentNo;
			});

			$('#comment-list').on(
					'click',
					'.cancel-edit-comment',
					function(event) { //댓글 수정 취소
						event.preventDefault();

						var commentNo = $(this).data('comment-no');
						const editForm = $('#comment-edit-area-' + commentNo+ ' form');
						editForm[0].reset(); //editForm : JQuery객체 / editForm[0] : javascript 객체(reset은 jquery로 못씀)

						$('#comment-view-area-' + commentNo).show();
						$('#comment-edit-area-' + commentNo).hide();

						correntEditCommentNo = null;
					});

			$('#comment-list').on('click','.update-comment',function(event) { // 댓글 수정
								event.preventDefault();

								const commentNo = $(this).data('comment-no');
								const editForm = $('#comment-edit-area-'+ commentNo + ' form');
								$.ajax({
											"url" : "update-comment.action",
											"method" : "post",
											"data" : editForm.serialize(),
											"success" : function(data, status, xhr) {
												if (data == "success") {
													$('#comment-list').load("comment-list.action?boardNo=${board.boardNo}");
												}
											},
											"error" : function(xhr, status, err) {

											}
										});
							});

			$('#comment-list').on('click','.delete-comment',function(event) { // 댓글 삭제
								event.preventDefault();

								var commentNo = $(this).data('comment-no');

								const yn = confirm('댓글을 삭제할까요?');
								if (!yn)
									return;

								$.ajax({
											"url" : "delete-comment.action",
											"method" : "get",
											"data" : 'commentNo=' + commentNo,
											"success" : function(data, status,
													xhr) {
												if (data == "success") {
													// 댓글 목록 전체 갱신 (jQuery load 함수 : 지정된 html요소의 내용을 응답받은 부분 html로 (비동기)갱신함))
													$('#comment-list').load("comment-list.action?boardNo=${board.boardNo}");
												} else {
													alert("ㅠㅠㅠㅠㅠ");
												}
											},
											"error" : function(xhr, status, err) {
												alert('ㅠㅠ');
											}
										});
							});

			/////////////////////////////////////////////////대댓글//////////////////////////////////////


			var reCommentNo = null;
			$('#comment-list').on('click','.reply',function(event) { // 대댓글 창 열기
						event.preventDefault();
			
						if( ${loginuser.memberId==null} ){
							alert('로그인 후 댓글을 작성하세요');
							return;
						};

						$("div [id*='comment-view-area']").show();

						var commentNo = $(this).data('comment-no');

						$("div [id*='comment-edit-area']").hide();
						$('#recomment-area-' + commentNo).show();
						$("div [id!='recomment-area-" + commentNo+ "'][id*='recomment-area-']").hide();

					});
			
			$('#comment-list').on('click','.cancel-recomment-write',function(event) { // 대댓글 작성 취소
				event.preventDefault();

				$("div [id*='comment-view-area']").show();
				
				var commentNo = $(this).data('comment-no');
				$("div [id*='comment-edit-area']").hide();
				$('#recomment-area-' + commentNo).hide();
				
				const editForm = $('#recomment-area-' + commentNo+ ' form');
				editForm[0].reset();

			});
			
			
			$('#comment-list').on('click','.recomment-write',function(event) { // 대댓글 쓰기
								event.preventDefault();
			
								var commentNo = $(this).data('comment-no');

								/* if ($('#recomment-area-' + commentNo).val().length == 0) { */
								if ($('#comment_content-'+commentNo).val() == '') {
									alert('댓글을 작성하세요.');
								
									return;
								}

								var formData = $('#recomment-area-' + commentNo+ " form").serialize();

								$.ajax({
											"url" : "write-recomment.action",
											"method" : "post",
											"data" : formData,
											"success" : function(data) {
												if (data == "success") {
													$('#comment-list').load("comment-list.action?boardNo=${board.boardNo}");
													$('#recomment-area-'+ commentNo).hide();
												}
											},
											"error" : function() {
												alert("???");
											}
										});

							});

		});
	</script>

</body>

</html>