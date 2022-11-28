<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html lang="ko">

<!-- 이 페이지는 헤더랑 푸터만 있는 페이지입니다. -->
<!-- 상세페이지 만들때 사용 ㄱㄱ -->

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>장바구니</title>
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
    <link href="/campus/resources/assets/css/mypage-menu.css" rel="stylesheet">

    <!-- Loader Style -->
    <link rel="stylesheet" href="/campus/resources/sidebar/css/loader-1.css">

    <!-- Costum Styles -->
    <link rel="stylesheet" href="/campus/resources/sidebar/css/main.css">
    <link rel="stylesheet" href="/campus/resources/sidebar/css/responsive.css">

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
	#main{position:relative; margin:0 auto; width:1200px; height:769px;}
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
<c:if test="${ not empty loginuser }">
 <div class="jumbotron" style="margin-top:100px;">
	<h2>${ loginuser.memberId }님 주문내역</h2>
</div>
</c:if>


	
	<table class="table text-center table-hover container">
		<thead>
			<tr>
				<th>주문번호</th>
				<th>주문일</th>
				<th>상품 수령일</th>
				<th>상품 반납일</th>
				<th>결제 방법</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="order" items="${orders}">
			
			<c:set var="sum" value="${sum+1}"></c:set>
				<tr role="row" class="orderNo-${ order.orderNo }">
					<td>
					<%-- <a href="#" class="btn-block" data-toggle="modal" data-orderNo="${ orderList.orderNo }" data-target="#bd-example-modal-lg" type="button" > --%>
					${order.orderNo}
					<!-- </a> -->
					</td>
					
					<td>${order.orderDate}</td>
					
					<td>${order.rentDate}</td>
					<td>${order.returnDate}</td>
					
					<c:choose>
						<c:when test="${order.pay=='cash'}">
						<td>현금</td>
						</c:when>
						<c:when test="${order.pay=='credit'}">
						<td>신용카드</td>
						</c:when>
						<c:when test="${order.pay=='account'}">
						<td>계좌이체</td>
						</c:when>
						<c:when test="${order.pay=='kakaoPay'}">
						<td>카카오페이</td>
						</c:when>
						<c:otherwise>
						<td>네이버페이</td>
					</c:otherwise>
					</c:choose>
					
					
				</tr>
				
			</c:forEach>

		</tbody>



	</table>
	
	
	<!-- 옵션 모달 시작-->	
<!-- 							<div class="col-md-4 col-sm-12 mb-30">
						<div  >
							
							<div class="modal fade bs-example-modal-lg" id="bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
								<div class="modal-dialog modal-lg modal-dialog-centered">
									<div class="modal-content">
										<div class="modal-header">
											<h4 class="modal-title" id="myLargeModalLabel">주문 상세 보기</h4>
											<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
										</div>
										<div class="modal-body">
										
										상품 상세 정보 불러오기
										
										
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary" data-dismiss="modal">창 닫기</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
							 -->
							
							<!-- 옵션 모달 끝-->	
	
	
	
	
	

<p class="container ">
</p>







  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
	<%-- <jsp:include page="/WEB-INF/views/include/footer.jsp" />   --%>
<!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
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

<script type="text/javascript">
$(function() {
	
/* 	$(".btn-block").on('click',function(event){
		 const orderNo = $(this).data('orderno');
	 	$.ajax({
					"url" : "find-order-detail.action",
					"method" : "get",
					"data" : { "orderNo":orderNo },
					dataType:'JSON',
					cache: false,
					async:false,
					"success" : function(data) {
						$('.modal-body').html("<p></p>");
						for(var i =0; i<data.length;i++){
							$('.modal-body').append("<p>주문 번호 : "+data[i].goods.goodsName+"</p>");
							$('.modal-body').append("<p>상품 코드 : "+data[i].goods.category+"</p>");
							$('.modal-body').append("<p>상품 가격 : "+data[i].price+"</p>");
							$('.modal-body').append("<p>주문 수량 : "+data[i].amount+"</p><br><br>");
						}
						
						},
					"error" : function() {
						alert("???");
					}
				}); 
	}); */

	
});

</script>

</body>

</html>