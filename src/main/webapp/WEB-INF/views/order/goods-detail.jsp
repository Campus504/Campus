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
            <li><a href="goods-list.action?category=${goods.category}">상품 목록</a></li>
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
		<form name="addForm" action="showOrderPage.action" method="post"  style="text-align:center;">
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
                <li><strong>주문 수량</strong>: <select name="amount">
                <c:forEach begin="1" end="${goodsIn.goodsIn}">
                <c:set var="i" value="${ i+1 }"/>
                <option>${i}</option>
                </c:forEach>
                </select></li>
                </c:otherwise>
                </c:choose>
                
                <li><strong>상품 수령일</strong>: <input type="text" id="rentDate" name="rentDate" style="width:50%" placeholder="날짜를 선택하세요"></li>
                <li><strong>상품 반납일</strong>: <input type="text" id="returnDate" name="returnDate" style="width:50%" placeholder="날짜를 선택하세요"></li>
               
                <li>
                
                <c:if test="${goodsIn.goodsIn!=null}">
                <button type="submit" id="order-btn" class="btn btn-info">상품주문</button>
            	<a href="cart-list.action" class="btn btn-warning" id="addToCart" onclick="addToCart">장바구니</a>
                </c:if>
                
            	<a href="goods-list.action?category=${goods.category}" class="btn btn-secondary">상품목록</a>
                
                
                
                
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
	
	
	$("#rentDate").datepicker({
		 dateFormat: 'yy-mm-dd',
		 minDate: new Date(),
		  maxDate: "+3M",
		  onClose: function( selectedDate ) {    
              $("#returnDate").datepicker( "option", "minDate", selectedDate );
          }                
	});
	
	$("#returnDate").datepicker({
		 dateFormat: 'yy-mm-dd',
		 minDate: new Date(),
		  maxDate: "+3M",
		  onClose: function( selectedDate ) {    
              $("#rentDate").datepicker( "option", "maxDate", selectedDate );
          }  
	});
	

	
	$('#order-btn').on('click',function(event){
		
		if(${loginuser.memberId==null}){
			alert('로그인 후에 이용해주세요');
			return false;
		}else if($('#rentDate').val()==''){
			alert('이용 날짜를 선택해주세요');
			return false;
		}else if($('#returnDate').val()==''){
			alert('이용 날짜를 선택해주세요');
			return false;
		}
		return true;
	});
	
$('#addToCart').on('click',function(event){
		if(${loginuser.memberId==null}){
			alert('로그인 후에 이용해주세요');
			return false;
		}else if($('#rentDate').val()==''){
			alert('이용 날짜를 선택해주세요');
			return false;
		}else if($('#returnDate').val()==''){
			alert('이용 날짜를 선택해주세요');
			return false;
		}
		return true;
	});
	
function addToCart(){
	if(cofirm("장바구니에 추가하시겠습니까?")){
		document.addForm.submit();
	}else{
		document.addForm.reset();
	}
}

	
	
});
</script>

</body>

</html>