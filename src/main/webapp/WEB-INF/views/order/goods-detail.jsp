<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>CampUs - 상품 상세</title>
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

    <!-- Loader Style -->
    <link rel="stylesheet" href="/campus/resources/sidebar/css/loader-1.css">

    <!-- Costum Styles -->
    <link rel="stylesheet" href="/campus/resources/sidebar/css/main.css">
    <link rel="stylesheet" href="/campus/resources/sidebar/css/responsive.css">

    <!-- Favicon -->
    <link rel="icon" type="image/ico" href="favicon.ico">

    <!-- Modernizer & Respond js -->
    <script src="/campus/resources/sidebar/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    <!-- sidebar css,js -->
    <!-- 사이드바 아이콘 링크  -->
  	<script src="https://code.iconify.design/iconify-icon/1.0.1/iconify-icon.min.js"></script>
  	
  	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">

    
      <style type="text/css">
	.container-fluid{
	  background: rgba(26, 26, 26, 0.9);
	}
	</style>
  
</head>

<body>

    <!-- ======= Header ======= -->
  	<jsp:include page="/WEB-INF/views/include/header.jsp" />
  <!-- End Header -->

  <main id="main">

    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>상품 상세</h2>
          <ol>
            <li><a href="main">Home</a></li>
            <li>상품 목록</li>
            <li>상품 상세</li>
          </ol>
        </div>

      </div>
    </section><!-- Breadcrumbs Section -->

    <!-- ======= Portfolio Details Section ======= -->
    <section id="portfolio-details" class="portfolio-details">
      <div class="container">

        <div class="row gy-4">

          <div class="col-lg-8">
            <div class="portfolio-details-slider swiper">
              <div class="swiper-wrapper align-items-center">

                <div class="swiper-slide">
                  <img src="/campus/resources/assets/img/portfolio/portfolio-details-1.jpg" alt="">
                </div>

                <div class="swiper-slide">
                  <img src="/campus/resources/assets/img/portfolio/portfolio-details-2.jpg" alt="">
                </div>

                <div class="swiper-slide">
                  <img src="/campus/resources/assets/img/portfolio/portfolio-details-3.jpg" alt="">
                </div>

              </div>
              <div class="swiper-pagination"></div>
            </div>
          </div>
		
		<div class="col-lg-4">
		<form id="cartForm" name="addForm" method="post"  style="text-align:center;">
		<!-- <form name="addForm" action="showOrderPage.action" method="post"  style="text-align:center;"> -->
		<input type="hidden" name="goodsCode" value="${goods.goodsCode}">
		<input type="hidden" name="memberId" value="${loginuser.memberId}">
		<input type="hidden" name="price" value="${goodsIn.rentPrice}">
		<input type="hidden" name="goodsName" value="${goods.goodsName}">
		<input type="hidden" name="brand" value="${goods.brand}">
		<input type="hidden" name="category" value="${goods.category}">
            <div class="portfolio-info">
              <h3>${goods.goodsName}</h3>
              <ul>
                <li><strong>상품명</strong>: ${goods.goodsName}</li>
                <li><strong>브랜드</strong>: ${goods.brand}</li>
                <li><strong>상품 분류</strong>: ${goods.category}</li>
                <li><strong>이용금액(1일)</strong>: ${goodsIn.rentPrice}</li>
                
                <c:choose>
                <c:when test="${goodsIn.goodsIn==null}">
                <li><strong>주문 수량</strong>: 재고 없음</li>
                </c:when>
                
                <c:otherwise>
                <li><strong>주문 수량</strong>: <select name="amount" id="amount">
                <c:forEach begin="1" end="${goodsIn.goodsIn}">
                <c:set var="i" value="${ i+1 }"/>
                <option>${i}</option>
                </c:forEach>
                </select></li>
                </c:otherwise>
                </c:choose>
                
               
                <li>
           <c:if test="${goodsIn.goodsIn!=null}">
                <a  id="order-btn" class="btn btn-info">상품주문</a>
                </c:if>
                <span>
                <!-- <form method="post" action="addByCart.action"> -->
            	<button type="button" id="addToCart" class="btn btn-warning">장바구니</button>
            	<!-- </form> -->
                
                </span>
                
            	<a href="goods-list.action?category=${category}" class="btn btn-secondary">상품목록</a>
                </li>
                
              </ul>
            </div>
            </form>
          </div>
		
         

        </div>

      </div>
    </section><!-- End Portfolio Details Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />  
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
     <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
     <!-- <script src="/campus/resources/sidebar/js/vendor/jquery-1.11.2.min.js"></script> -->
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
  
  
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
  
<script type="text/javascript">
$(function(){
	
	var valid = ${valid};

	
	$('#order-btn').on('click',function(event){
		if(${loginuser.memberId==null}){
			alert('로그인 후에 이용해주세요');
			location.href="login.action";
			return false;
		}else{
		var amount=$('#amount').val();
		location.href="showOrderPage.action?goodsCode="+${goods.goodsCode}+"&amount="+amount+"&price="+${goodsIn.rentPrice}+"&memberId=${loginuser.memberId}";
		}
	});

	
	//강성훈 11월22일 수정.. 충돌 나면 확인하도록
$('#addToCart').click(function(event){ 

	if (valid >= 1) {
		event.preventDefault();
		alert("이미 장바구니에 포함된 상품입니다.")
		return;
	} else if (valid == -1) {
		event.preventDefault();
		alert("로그인 후 이용 하세요.")
		location.href="login.action";
		return;
	} else {
		
		var cartForm = $('#cartForm').serialize();
		
		$.ajax({
			"url" : "addByCart.action",
	 		"method" : "post",
	 		"data" : cartForm,
	 		"success" : function(data, status, xhr) {
	 			valid = 1;
	 			var check = confirm("장바구니에 추가되었습니다!\n장바구니로 이동하시겠습니까?");
	 			if(check){
	 				location.assign('cart-list.action?memberId=${ loginuser.memberId }&bigCategory=${category}');
	 				}else{
	 					return;
	 				}
	 		},
	 		"error" : function(xhr, status, err) {
	 		}
		});
	}
	
		
});

});
</script>

</body>

</html>