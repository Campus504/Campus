<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>CAMPUS - 마이페이지</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="/campus/resources/assets/img/favicon.png" rel="icon">
  <link href="/campus/resources/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="/campus/resources/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="/campus/resources/assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="/campus/resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="/campus/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="/campus/resources/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="/campus/resources/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

  <!-- Template Main CSS File -->
  <link href="/campus/resources/assets/css/style.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="/campus/resources/vendors/styles/core.css">
  <link rel="stylesheet" type="text/css" href="/campus/resources/src/plugins/datatables/css/dataTables.bootstrap4.min.css">
	<link rel="stylesheet" type="text/css" href="/campus/resources/src/plugins/datatables/css/responsive.bootstrap4.min.css">
	<link rel="stylesheet" type="text/css" href="/campus/resources/vendors/styles/style.css">
	<link rel="stylesheet" type="text/css" href="/campus/resources/vendors/styles/icon-font.min.css">
	

	

  <!-- =======================================================
  * Template Name: BizPage - v5.10.1
  * Template URL: https://bootstrapmade.com/bizpage-bootstrap-business-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
    <!-- sidebar css,js -->
   <!-- Google Web Font -->
    <link href='http://fonts.googleapis.com/css?family=Ubuntu:300,400,500,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lekton:400,700,400italic' rel='stylesheet' type='text/css'>

    <!--  Bootstrap 3-->
    <link rel="stylesheet" href="/campus/resources/sidebar/css/bootstrap.min.css">

    <!-- OWL Carousel -->
    <link rel="stylesheet" href="/campus/resources/sidebar/css/owl.carousel.css">
    <link rel="stylesheet" href="/campus/resources/sidebar/css/owl.theme.css">

    <!--  Slider -->
    <link rel="stylesheet" href="/campus/resources/sidebar/css/jquery.kenburnsy.css">

    <!-- Animate -->
    <link rel="stylesheet" href="/campus/resources/sidebar/css/animate.css">

    <!-- Web Icons Font -->
    <link rel="stylesheet" href="/campus/resources/sidebar/css/pe-icon-7-stroke.css">
    <link rel="stylesheet" href="/campus/resources/sidebar/css/iconmoon.css">
    <link rel="stylesheet" href="/campus/resources/sidebar/css/et-line.css">
    <link rel="stylesheet" href="/campus/resources/sidebar/css/ionicons.css">

    <!-- Magnific PopUp -->
    <!-- <link rel="stylesheet" href="/campus/resources/sidebar/css/magnific-popup.css"> -->

    <!-- Tabs -->
    <link rel="stylesheet" type="text/css" href="/campus/resources/sidebar/css/tabs.css" />
    <link rel="stylesheet" type="text/css" href="/campus/resources/sidebar/css/tabstyles.css" />

    <!-- Loader Style -->
    <link rel="stylesheet" href="/campus/resources/sidebar/css/loader-1.css">

    <!-- Costum Styles -->
    <link rel="stylesheet" href="/campus/resources/sidebar/css/main.css">
    <link rel="stylesheet" href="/campus/resources/sidebar/css/responsive.css">
    <link rel="stylesheet" href="/campus/resources/assets/css/login.css">
    <link href="/campus/resources/assets/css/mypage-menu.css" rel="stylesheet">

    <!-- Favicon -->
    <link rel="icon" type="image/ico" href="favicon.ico">

    <!-- Modernizer & Respond js -->
    <script src="/campus/resources/sidebar/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    <!-- end of sidebar css,js -->
    
        <!--  사이드바 관리자 아이콘 -->
    <script src="https://code.iconify.design/iconify-icon/1.0.1/iconify-icon.min.js"></script>
    <script src="/campus/resources/assets/js/login.js"></script>
    
    
    
  <style type="text/css">
	.container-fluid{
	  background: rgba(26, 26, 26, 0.9);
	}

    section{
    overflow:scroll !important;
    }
	.container [class='row'] {
    width: 1200px;
}

	.area {
	    width: 3.5% !important;
	}
	.container .title{
	padding-top:80px;
	height: 20px;
	} 

	</style>
 
</head>
<body>

  <!-- ======= Header ======= -->
 	<jsp:include page="/WEB-INF/views/include/header.jsp" />
  <!-- End Header -->
  
  <!-- ======= mypage-side-menu ======= -->
 	<jsp:include page="/WEB-INF/views/include/mypage-side-menu.jsp" />
  <!-- End mypage-side-menu -->
  
	<div class="main-container">

		<div class="pd-ltr-20 xs-pd-20-10">
		<div class="min-height-200px">

		<!-- 페이지 해더입니다. 없으면 하단 컨텐츠가 모두 깨집니다!! -->
		<div class="page-header">
			<div class="row">
				<div class="col-md-6 col-sm-12">
					<div class="title">
						<h4> 주문목록</h4>
					</div>
					<nav aria-label="breadcrumb" role="navigation">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="#">Home</a></li>
							<li class="breadcrumb-item active" aria-current="page"> 주문목록</li>
						</ol>
					</nav>
				</div>	
			</div>
		</div>
	<!-- 페이지 해더 종료 입니다. 없으면 하단 컨텐츠가 모두 깨집니다!! -->
	
	<!-- 주문 리스트 시작! -->
	<div class="pd-20 card-box mb-30">

		<div class="card-box mb-30">
			<div class="pd-20">
				<h4 class="text-blue h4"></h4>
			</div>

			<div class="pb-20">
				<div id="DataTables_Table_3_wrapper"
					class="dataTables_wrapper dt-bootstrap4 no-footer">
					<div class="row">
									
						</div>
						<div class="row">
							<div class="col">
					<!-- 등록된 상품의 리스트 테이블 만들기 -->
							<table class="checkbox-datatable table nowrap dataTable no-footer dtr-inline" id="goods-register-list-table" role="grid" aria-describedby="DataTables_Table_3_info">
								
								<thead>
									<tr role="row" >
										<th>주문번호</th>
										<th>회원아이디</th>
										<th>주문일</th>
										<th>상품 수령일</th>
										<th>상품 반납일</th>
										<th>결제방법</th>
										
									</tr>
								</thead>
								
								<c:forEach  var="orderList" items='${orderList}' >
								<tbody>
								
									<tr role="row" class="orderNo-${ orderList.orderNo }" >
										
										<td>${ orderList.orderNo }</td>
										<td>
										<a href="#" class="btn-block" data-toggle="modal" data-orderNo="${ orderList.orderNo }" data-target="#bd-example-modal-lg" type="button" >
										${ orderList.memberId }</a></td>
										<td>${ orderList.orderDate }</td>
										<td>${ orderList.rentDate }</td>
										<td>${ orderList.returnDate }</td>
										
										<c:choose>
										<c:when test="${orderList.pay=='cash'}">
										<td>현금</td>
										</c:when>
										<c:when test="${orderList.pay=='credit'}">
										<td>신용카드</td>
										</c:when>
										<c:when test="${orderList.pay=='account'}">
										<td>계좌이체</td>
										</c:when>
										<c:when test="${orderList.pay=='kakaoPay'}">
										<td>카카오페이</td>
										</c:when>
										<c:otherwise>
										<td>네이버페이</td>
										</c:otherwise>
										</c:choose>																		
										
									</tr>
								
								</tbody>
								</c:forEach>
								
							</table>
	
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
  <!-- End #main -->

  	<!-- ======= Footer ======= -->
	<jsp:include page="/WEB-INF/views/include/footer.jsp" /> 
	<!-- End Footer --> 

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center">

  
  <i class="bi bi-arrow-up-short"></i></a>
  <!-- Uncomment below i you want to use a preloader -->
  <!-- <div id="preloader"></div> -->

  <!-- Vendor JS Files -->
  <script src="/campus/resources/assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="/campus/resources/assets/vendor/aos/aos.js"></script>
  <script src="/campus/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/campus/resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="/campus/resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="/campus/resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="/campus/resources/assets/vendor/waypoints/noframework.waypoints.js"></script>
  <script src="/campus/resources/assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="vendors/scripts/core.js"></script>

		<script src="/campus/resources/vendors/scripts/script.min.js"></script>
		<script src="/campus/resources/vendors/scripts/process.js"></script>
		<script src="/campus/resources/vendors/scripts/layout-settings.js"></script>
		
  <!-- <script src="/campus/resources/assets/js/main.js"></script> -->
  
    <!-- sidebar -->
     <script src="/campus/resources/sidebar/js/vendor/jquery-1.11.2.min.js"></script>
    <script data-pace-options='{ "ajax": false }' src="/campus/resources/sidebar/js/vendor/pace.min.js"></script>
    <script src="/campus/resources/sidebar/js/vendor/bootstrap.min.js"></script>
    <script src="/campus/resources/sidebar/js/vendor/classie.js"></script>
    <script src="/campus/resources/sidebar/js/vendor/isotope.pkgd.min.js"></script>
    <script src="/campus/resources/sidebar/js/vendor/jquery.velocity.min.js"></script>
    <script src="/campus/resources/sidebar/js/vendor/jquery.kenburnsy.min.js"></script>
    <script src="/campus/resources/sidebar/js/vendor/textslide.js"></script>
    <script src="/campus/resources/sidebar/js/vendor/imagesloaded.pkgd.min.js"></script>
    <script src="/campus/resources/sidebar/js/vendor/tabs.js"></script>
    <script src="/campus/resources/sidebar/js/ef-slider.js"></script>    
    <script src="/campus/resources/sidebar/js/vendor/owl.carousel.min.js"></script>
    <script src="/campus/resources/sidebar/js/vendor/jquery.magnific-popup.min.js"></script>
    <script src="/campus/resources/sidebar/js/vendor/jquery.social-buttons.min.js"></script>
    <script src="/campus/resources/sidebar/js/vendor/wow.min.js"></script>
    <script src="/campus/resources/sidebar/js/main.js"></script>
    <script src="/campus/resources/sidebar/js/ajax.js"></script>
  <!-- /.sidebar -->

<!-- js -->
		<jsp:include page="/WEB-INF/views/modules/adminJS.jsp" />
		<!-- end of js -->


</body>



</html>