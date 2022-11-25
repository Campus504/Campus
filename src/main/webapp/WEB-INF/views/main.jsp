<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Campus</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
  <meta name="description" content="">
  <meta name="msapplication-tap-highlight" content="yes" />
  <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, minimum-scale=1.0, maximum-scale=1.0" />

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

    <!-- Modernizer & Respond js -->
    <script src="/campus/resources/sidebar/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    
    <!-- sidebar css,js -->
  	<!-- 사이드바 아이콘 링크  -->
  	<script src="https://code.iconify.design/iconify-icon/1.0.1/iconify-icon.min.js"></script>
  	
  	
  	<style>
  		video{width:1920px;}
  	</style>
</head>

<body>

  <!-- ======= Header ======= -->
  	<jsp:include page="/WEB-INF/views/include/header.jsp" />
  <!-- End Header -->

  <!-- ======= hero Section ======= -->
  <section id="hero">
  <div class="hero-container">
      <div id="heroCarousel" class="carousel slide carousel-fade" data-bs-ride="carousel" data-bs-interval="5000">

        <div class="carousel-inner" role="listbox">
  
  <div class="carousel-item active">
  <video muted autoplay loop>
        <source src="/campus/resources/assets/img/hero-carousel/main_vid.mp4" type="video/mp4">
      </video>
            <div class="carousel-container">
              <div class="container">
                <h2 class="animate__animated animate__fadeInDown">준비할 것도 알아볼 것도 많은 캠핑,<br>
                 <b>Campus</b>에서 시작하세요.</h2>
                <!-- <p class="animate__animated animate__fadeInUp">준비할 것도 알아볼 것도 많은 캠핑, <b>Campus</b>에서 시작하세요.</p> -->
                <a href="/campus/#portfolio" class="btn-get-started scrollto animate__animated animate__fadeInUp">VIEW</a>
              </div>
            </div>
          </div>
  	</div>
  	</div>
   
  </section><!-- End Hero Section -->
   

  <main id="main">


   
    
    <section id="portfolio" class="section-bg">
      <div class="container" data-aos="fade-up">

        <header class="section-header">
          <h3 class="section-title">베스트 상품</h3>
        </header>

      <div class="row" data-aos="fade-up" data-aos-delay="100">
	      <div class=" col-lg-12">
	          <ul id="portfolio-flters">
	          <c:if test="${goods.size()>0}">
	           <li data-filter="*" class="filter-All">전체</li>
	           <c:forEach var="goods" items="${goods}">
	           <c:set var="i" value="${ i+1 }" />
				<li data-filter=".filter-${goods.category}" class="filter-${i}" value='${goods.category}' >${goods.category}</li>	           
	           </c:forEach>
	         
	           </c:if>
	          </ul>
	        </div>
	      </div>

      <div class="row portfolio-container" data-aos="fade-up" data-aos-delay="200">

        <c:if test="${goods.size()>0}">
        <c:forEach var="goods" items="${goods}">
       <div class="col-lg-4 col-md-6 portfolio-item filter-${goods.category}">
          <div class="portfolio-wrap">
            <figure>
              <img src="/campus/resources/assets/img/portfolio/card1.jpg" class="img-fluid" alt="">
            </figure>

            <div class="portfolio-info">
              <h4><a href="goods-detail.action?goodsCode=${goods.goodsCode}">${goods.goodsName}</a></h4>
              <p></p>
            </div>
          </div>
        </div>
       </c:forEach>
       </c:if>

      </div>

      </div>
    </section>

    <!-- ======= About Us Section ======= -->
    <section id="about">
      <div class="container" data-aos="fade-up">

        <header class="section-header">
          <h3>고객후기</h3>
        </header>

        <div class="row about-cols">
		
		<c:forEach var="board" items="${boards}">
		<div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
            <div class="about-col">
              <div class="img">
                <div class="icon"></div>
              </div>
              <h2 class="title"><a href="freeboard-detail.action?boardNo=${board.boardNo}">${board.title}</a></h2>
              
                <ul>
                  <li style="font-color:#18d26e" class="d-flex align-items-center">작성자 : ${board.memberId}</li>
                 <%--  <li class="d-flex align-items-center">${board.writeDate}</li>
                  <li class="d-flex align-items-center">${board.readCount}</li> --%>
                </ul>
              
              <p>
              ${board.content}
              </p>
            </div>
          </div>
		</c:forEach>
          



        </div>

      </div>
    </section>

    <!-- ======= Contact Section ======= -->
		<section id="contact" class="section-bg">
			<div class="container" data-aos="fade-up">

				<div class="section-header">
					<h3>오시는 길</h3>
					<br> <br>
				</div>

				<div class="map" style="width: 50%;">
					<iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d25324.2186513383!2d127.02271616499561!3d37.49547904208217!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca15857ce38dd%3A0xac87641577138f5d!2z6re466aw7Lu07ZOo7YSw7JWE7Lm0642w66-4IOqwleuCqOy6oO2NvOyKpA!5e0!3m2!1sko!2skr!4v1667204209769!5m2!1sko!2skr"
						width="800" height="450" style="border: 0;" allowfullscreen=""
						loading="lazy" referrerpolicy="no-referrer-when-downgrade">
					</iframe>
				</div>

				<div class="map-text">
					
					<p class="bus">대중교통 이용</p>
					<div class="map-contents">
						<h3	style="border: 1px solid #fff; width: 100px; padding: 5px 5px; background-color: #fff; border-radius: 5px; font-weight: bold; font-size: 11pt; text-align: center; color:#505050;">시내버스</h3>
						<p>2번, 3번, 3-1번, 9번 버스 이용</p>
					</div>
					
					<div class="map-contents">
						<h3 style="border: 1px solid #fff; width: 100px; padding: 5px 5px; border-radius: 5px; font-weight: bold; font-size: 11pt; text-align: center; color:#fff;">지하철</h3>
						<p>2호선, 신분당선 강남역 11번 출구</p>
					</div>
					
					<div class="map-contents">
						<h3 style="border: 1px solid #fff; width: 100px; padding: 5px 5px; background-color: #fff; border-radius: 5px; font-weight: bold; font-size: 11pt; text-align: center;color:#505050;">시내버스</h3>
						<p>1, 2, 21-25, 31-35, 41, 41-1, 42, 55,70-74, 81,
						81-1, 82-84, 90, 91</p>
					</div>
					
					<div class="map-contents">
						<h3 style="border: 1px solid #fff; width: 100px; padding: 5px 5px; border-radius: 5px; font-weight: bold; font-size: 11pt; text-align: center; color:#fff;">주소</h3>
						<p>서울 강남구 테헤란로5길 24 장연빌딩 3~7층</p>
					</div>
					
					<div class="map-contents">
						<h3 style="border: 1px solid #fff; width: 100px; padding: 5px 5px; background-color: #fff; border-radius: 5px; font-weight: bold; font-size: 11pt; text-align: center;color:#505050;">전화번호</h3>
						<p>010-0000-0000</p>
					</div>
					

			</div>
		</section>
		<!-- End Contact Section -->

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

</body>
<script type="text/javascript">
$(function(){
	for(var j = 2; j<=${i};j++){
				for(var k=1; k<j; k++){
					if(
							$('.filter-'+j).data('filter')==$('.filter-'+k).data('filter')
					){
						$('.filter-'+j).css("display","none");
					}
				}
		}
	
	
	
});

</script>

</html>