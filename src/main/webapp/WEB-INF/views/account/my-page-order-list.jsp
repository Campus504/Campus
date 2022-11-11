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
    <link rel="stylesheet" href="/campus/resources/sidebar/css/magnific-popup.css">

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
	#search-btn{
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    border: 0;
    background: none;
    font-size: 16px;
    padding: 0 30px;
    margin: -1px;
    background: #18d26e;
    color: #fff;
    transition: 0.3s;
    line-height: 0;
    border-radius: 50px;
	}
	.container{
	display:flex;
	padding-top:100px;
	}
	.container [class='row']{
	width:1200px;
	}
	.entry-title a{
	font-size:30px;
	text-align: left;
	}
	.blog .entry {
    height:120px;
    margin-bottom: 20px;
    }
    section{
    overflow:scroll !important;
    }
    .data-table table stripe hover nowrap th{
    width:100px;
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
  

  <main id="main">



    <!-- ======= Blog Section ======= -->
    <section id="blog" class="blog">
      <div class="container" data-aos="fade-up">

        <div class="row">
		
		<h2 class="title">주문내역 조회</h2>
		
          <div class="col-lg-8 entries">
          
          	<!-- Simple Datatable start -->
				<div class="card-box mb-30">
					<div class="pd-20">
						
						
					</div>
					<div class="pb-20">
						<table class="data-table table stripe hover nowrap">
							<thead>
								<tr>
									<th class="table-plus datatable-nosort">주문번호</th>
									<th>주문일자</th>
									<th>수령일</th>
									<th>반납일</th>
									<th>주문상품</th>
									<th>결제금액</th>
									
									<th class="datatable-nosort"></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="table-plus">1</td>
									<td>2022-11-01</td>
									<td>2022-11-02</td>
									<td>2022-11-03</td>
									<td>텐트</td>
									<td>100000000000000000000</td>
									<td>
										<a>상세보기</a>
									</td>
								</tr>
								
							</tbody>
						</table>
					</div>
				</div>
				<!-- Simple Datatable End -->
           
           
          </div><!-- End blog entries list -->


        </div>

      </div>
    </section><!-- End Blog Section -->

  </main><!-- End #main -->

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
  <script src="/campus/resources/assets/js/main.js"></script>
  
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

<script type="text/javascript">
$(function(){
	
	
	
	
});




</script>


</body>



</html>