<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

		<div class="page-header">
			<div class="row">
				<div class="col-md-6 col-sm-12">

					<div class="card-box mb-30">
						<div class="pd-20">
							<h4 class="text-blue h4">1:1 문의</h4>
						</div>
						<div class="pb-20">
							<div id="DataTables_Table_0_wrapper"
								class="dataTables_wrapper dt-bootstrap4 no-footer">
								<div class="row">
									<div class="col-sm-12 col-md-6">
										<div class="dataTables_length" id="DataTables_Table_0_length">
											<label>Show <select name="DataTables_Table_0_length"
												aria-controls="DataTables_Table_0"
												class="custom-select custom-select-sm form-control form-control-sm"><option
														value="10">10</option>
													<option value="25">25</option>
													<option value="50">50</option>
													<option value="-1">All</option></select> entries
											</label>
										</div>
									</div>
									<div class="col-sm-12 col-md-6">
										<div id="DataTables_Table_0_filter" class="dataTables_filter">
											<label>검색:<input type="search"
												class="form-control form-control-sm" placeholder="Search"
												aria-controls="DataTables_Table_0"></label>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-12">
										<table
											class="data-table table stripe hover nowrap dataTable no-footer dtr-inline"
											id="DataTables_Table_0" role="grid"
											aria-describedby="DataTables_Table_0_info">
											<thead>
												<tr role="row">
													<th class="table-plus datatable-nosort sorting_disabled"
														rowspan="1" colspan="1" aria-label="Name">이름</th>
													<th class="sorting" tabindex="0"
														aria-controls="DataTables_Table_0" rowspan="1" colspan="1"
														aria-label="Age: activate to sort column ascending">나이</th>
													<th class="sorting_desc" tabindex="0"
														aria-controls="DataTables_Table_0" rowspan="1" colspan="1"
														aria-label="Office: activate to sort column ascending"
														aria-sort="descending">분류</th>
													<th class="sorting" tabindex="0"
														aria-controls="DataTables_Table_0" rowspan="1" colspan="1"
														aria-label="Address: activate to sort column ascending">문의
														내용</th>
													<th class="sorting" tabindex="0"
														aria-controls="DataTables_Table_0" rowspan="1" colspan="1"
														aria-label="Start Date: activate to sort column ascending">날짜</th>
													<th class="datatable-nosort sorting_disabled" rowspan="1"
														colspan="1" aria-label="Action">Action</th>
												</tr>
											</thead>
											<tbody>
												<tr role="row" class="odd">
													<td class="table-plus" tabindex="0">강성훈</td>
													<td class="">30</td>
													<td class="sorting_1">반품</td>
													<td>저는 진상입니다.</td>
													<td>29-03-2018</td>
													<td>
														<div class="dropdown">
															<a
																class="btn btn-link font-24 p-0 line-height-1 no-arrow dropdown-toggle"
																href="#" role="button" data-toggle="dropdown"> <i
																class="dw dw-more"></i>
															</a>
															<div
																class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">
																<a class="dropdown-item" href="#"><i
																	class="dw dw-eye"></i> View</a> <a class="dropdown-item"
																	href="#"><i class="dw dw-edit2"></i> Edit</a> <a
																	class="dropdown-item" href="#"><i
																	class="dw dw-delete-3"></i> Delete</a>
															</div>
														</div>
													</td>
												</tr>
												<tr role="row" class="even">
													<td class="table-plus" tabindex="0">Andrea J. Cagle</td>
													<td class="">30</td>
													<td class="sorting_1">Sagittarius</td>
													<td>1280 Prospect Valley Road Long Beach, CA 90802</td>
													<td>29-03-2018</td>
													<td>
														<div class="dropdown">
															<a
																class="btn btn-link font-24 p-0 line-height-1 no-arrow dropdown-toggle"
																href="#" role="button" data-toggle="dropdown"> <i
																class="dw dw-more"></i>
															</a>
															<div
																class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">
																<a class="dropdown-item" href="#"><i
																	class="dw dw-eye"></i> View</a> <a class="dropdown-item"
																	href="#"><i class="dw dw-edit2"></i> Edit</a> <a
																	class="dropdown-item" href="#"><i
																	class="dw dw-delete-3"></i> Delete</a>
															</div>
														</div>
													</td>
												</tr>
												<tr role="row" class="odd">
													<td class="table-plus" tabindex="0">Andrea J. Cagle</td>
													<td class="">30</td>
													<td class="sorting_1">Sagittarius</td>
													<td>1280 Prospect Valley Road Long Beach, CA 90802</td>
													<td>29-03-2018</td>
													<td>
														<div class="dropdown">
															<a
																class="btn btn-link font-24 p-0 line-height-1 no-arrow dropdown-toggle"
																href="#" role="button" data-toggle="dropdown"> <i
																class="dw dw-more"></i>
															</a>
															<div
																class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">
																<a class="dropdown-item" href="#"><i
																	class="dw dw-eye"></i> View</a> <a class="dropdown-item"
																	href="#"><i class="dw dw-edit2"></i> Edit</a> <a
																	class="dropdown-item" href="#"><i
																	class="dw dw-delete-3"></i> Delete</a>
															</div>
														</div>
													</td>
												</tr>
												<tr role="row" class="even">
													<td class="table-plus" tabindex="0">Gloria F. Mead</td>
													<td class="">25</td>
													<td class="sorting_1">Sagittarius</td>
													<td>2829 Trainer Avenue Peoria, IL 61602</td>
													<td>29-03-2018</td>
													<td>
														<div class="dropdown">
															<a
																class="btn btn-link font-24 p-0 line-height-1 no-arrow dropdown-toggle"
																href="#" role="button" data-toggle="dropdown"> <i
																class="dw dw-more"></i>
															</a>
															<div
																class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">
																<a class="dropdown-item" href="#"><i
																	class="dw dw-eye"></i> View</a> <a class="dropdown-item"
																	href="#"><i class="dw dw-edit2"></i> Edit</a> <a
																	class="dropdown-item" href="#"><i
																	class="dw dw-delete-3"></i> Delete</a>
															</div>
														</div>
													</td>
												</tr>
												<tr role="row" class="odd">
													<td class="table-plus" tabindex="0">Andrea J. Cagle</td>
													<td class="">20</td>
													<td class="sorting_1">Sagittarius</td>
													<td>1280 Prospect Valley Road Long Beach, CA 90802</td>
													<td>29-03-2018</td>
													<td>
														<div class="dropdown">
															<a
																class="btn btn-link font-24 p-0 line-height-1 no-arrow dropdown-toggle"
																href="#" role="button" data-toggle="dropdown"> <i
																class="dw dw-more"></i>
															</a>
															<div
																class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">
																<a class="dropdown-item" href="#"><i
																	class="dw dw-eye"></i> View</a> <a class="dropdown-item"
																	href="#"><i class="dw dw-edit2"></i> Edit</a> <a
																	class="dropdown-item" href="#"><i
																	class="dw dw-delete-3"></i> Delete</a>
															</div>
														</div>
													</td>
												</tr>
												<tr role="row" class="even">
													<td class="table-plus" tabindex="0">Andrea J. Cagle</td>
													<td class="">30</td>
													<td class="sorting_1">Gemini</td>
													<td>1280 Prospect Valley Road Long Beach, CA 90802</td>
													<td>29-03-2018</td>
													<td>
														<div class="dropdown">
															<a
																class="btn btn-link font-24 p-0 line-height-1 no-arrow dropdown-toggle"
																href="#" role="button" data-toggle="dropdown"
																aria-expanded="false"> <i class="dw dw-more"></i>
															</a>
															<div
																class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list"
																style="">
																<a class="dropdown-item" href="#"><i
																	class="dw dw-eye"></i> View</a> <a class="dropdown-item"
																	href="#"><i class="dw dw-edit2"></i> Edit</a> <a
																	class="dropdown-item" href="#"><i
																	class="dw dw-delete-3"></i> Delete</a>
															</div>
														</div>
													</td>
												</tr>
												<tr role="row" class="odd">
													<td class="table-plus" tabindex="0">Andrea J. Cagle</td>
													<td class="">30</td>
													<td class="sorting_1">Gemini</td>
													<td>1280 Prospect Valley Road Long Beach, CA 90802</td>
													<td>29-03-2018</td>
													<td>
														<div class="dropdown">
															<a
																class="btn btn-link font-24 p-0 line-height-1 no-arrow dropdown-toggle"
																href="#" role="button" data-toggle="dropdown"> <i
																class="dw dw-more"></i>
															</a>
															<div
																class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">
																<a class="dropdown-item" href="#"><i
																	class="dw dw-eye"></i> View</a> <a class="dropdown-item"
																	href="#"><i class="dw dw-edit2"></i> Edit</a> <a
																	class="dropdown-item" href="#"><i
																	class="dw dw-delete-3"></i> Delete</a>
															</div>
														</div>
													</td>
												</tr>
												<tr role="row" class="even">
													<td class="table-plus" tabindex="0">Andrea J. Cagle</td>
													<td class="">30</td>
													<td class="sorting_1">Gemini</td>
													<td>1280 Prospect Valley Road Long Beach, CA 90802</td>
													<td>29-03-2018</td>
													<td>
														<div class="dropdown">
															<a
																class="btn btn-link font-24 p-0 line-height-1 no-arrow dropdown-toggle"
																href="#" role="button" data-toggle="dropdown"> <i
																class="dw dw-more"></i>
															</a>
															<div
																class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">
																<a class="dropdown-item" href="#"><i
																	class="dw dw-eye"></i> View</a> <a class="dropdown-item"
																	href="#"><i class="dw dw-edit2"></i> Edit</a> <a
																	class="dropdown-item" href="#"><i
																	class="dw dw-delete-3"></i> Delete</a>
															</div>
														</div>
													</td>
												</tr>
												<tr role="row" class="odd">
													<td class="table-plus" tabindex="0">Andrea J. Cagle</td>
													<td class="">30</td>
													<td class="sorting_1">Gemini</td>
													<td>1280 Prospect Valley Road Long Beach, CA 90802</td>
													<td>29-03-2018</td>
													<td>
														<div class="dropdown">
															<a
																class="btn btn-link font-24 p-0 line-height-1 no-arrow dropdown-toggle"
																href="#" role="button" data-toggle="dropdown"> <i
																class="dw dw-more"></i>
															</a>
															<div
																class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">
																<a class="dropdown-item" href="#"><i
																	class="dw dw-eye"></i> View</a> <a class="dropdown-item"
																	href="#"><i class="dw dw-edit2"></i> Edit</a> <a
																	class="dropdown-item" href="#"><i
																	class="dw dw-delete-3"></i> Delete</a>
															</div>
														</div>
													</td>
												</tr>
												<tr role="row" class="even">
													<td class="table-plus" tabindex="0">Andrea J. Cagle</td>
													<td class="">25</td>
													<td class="sorting_1">Gemini</td>
													<td>2829 Trainer Avenue Peoria, IL 61602</td>
													<td>29-03-2018</td>
													<td>
														<div class="dropdown">
															<a
																class="btn btn-link font-24 p-0 line-height-1 no-arrow dropdown-toggle"
																href="#" role="button" data-toggle="dropdown"> <i
																class="dw dw-more"></i>
															</a>
															<div
																class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">
																<a class="dropdown-item" href="#"><i
																	class="dw dw-eye"></i> View</a> <a class="dropdown-item"
																	href="#"><i class="dw dw-edit2"></i> Edit</a> <a
																	class="dropdown-item" href="#"><i
																	class="dw dw-delete-3"></i> Delete</a>
															</div>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-12 col-md-5">
										<div class="dataTables_info" id="DataTables_Table_0_info"
											role="status" aria-live="polite">1-10 of 12 entries</div>
									</div>
									<div class="col-sm-12 col-md-7">
										<div class="dataTables_paginate paging_simple_numbers"
											id="DataTables_Table_0_paginate">
											<ul class="pagination">
												<li class="paginate_button page-item previous disabled"
													id="DataTables_Table_0_previous"><a href="#"
													aria-controls="DataTables_Table_0" data-dt-idx="0"
													tabindex="0" class="page-link"><i
														class="ion-chevron-left"></i></a></li>
												<li class="paginate_button page-item active"><a
													href="#" aria-controls="DataTables_Table_0" data-dt-idx="1"
													tabindex="0" class="page-link">1</a></li>
												<li class="paginate_button page-item "><a href="#"
													aria-controls="DataTables_Table_0" data-dt-idx="2"
													tabindex="0" class="page-link">2</a></li>
												<li class="paginate_button page-item next"
													id="DataTables_Table_0_next"><a href="#"
													aria-controls="DataTables_Table_0" data-dt-idx="3"
													tabindex="0" class="page-link"><i
														class="ion-chevron-right"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>

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

	<!-- ======= Footer ======= -->
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	<!-- End Footer -->

	<!-- Template Main JS File -->
	<script src="/campus/resources/assets/js/main.js"></script>

	<!-- sidebar -->
	
	 <script src="/campus/resources/sidebar/js/vendor/jquery-1.11.2.min.js"></script>
	<script src="/campus/resources/sidebar/js/vendor/pace.min.js"></script>
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
</body>
</html>