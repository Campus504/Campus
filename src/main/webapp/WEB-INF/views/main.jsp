<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

        <!-- <ol id="hero-carousel-indicators" class="carousel-indicators"></ol> -->

        <div class="carousel-inner" role="listbox">
  
  <div class="carousel-item active"><!-- style="background-image: url(/campus/resources/assets/img/hero-carousel/1.jpg)" -->
  <video muted autoplay loop>
        <source src="/campus/resources/assets/img/hero-carousel/main_vid.mp4" type="video/mp4">
      </video>
            <div class="carousel-container">
              <div class="container">
                <h2 class="animate__animated animate__fadeInDown">준비할 것도 알아볼 것도 많은 캠핑,<br>
                 <b>Campus</b>에서 시작하세요.</h2>
                <!-- <p class="animate__animated animate__fadeInUp">준비할 것도 알아볼 것도 많은 캠핑, <b>Campus</b>에서 시작하세요.</p> -->
                <a href="#featured-services" class="btn-get-started scrollto animate__animated animate__fadeInUp">Get Started</a>
              </div>
            </div>
          </div>
  	</div>
  	</div>
    <!-- <div class="hero-container">
      <div id="heroCarousel" class="carousel slide carousel-fade" data-bs-ride="carousel" data-bs-interval="5000">

        <ol id="hero-carousel-indicators" class="carousel-indicators"></ol>

        <div class="carousel-inner" role="listbox">

          <div class="carousel-item active" style="background-image: url(/campus/resources/assets/img/hero-carousel/1.jpg)">
            <div class="carousel-container">
              <div class="container">
                <h2 class="animate__animated animate__fadeInDown">We are professional</h2>
                <p class="animate__animated animate__fadeInUp">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                <a href="#featured-services" class="btn-get-started scrollto animate__animated animate__fadeInUp">Get Started</a>
              </div>
            </div>
          </div>

          <div class="carousel-item" style="background-image: url(/campus/resources/assets/img/hero-carousel/2.jpg)">
            <div class="carousel-container">
              <div class="container">
                <h2 class="animate__animated animate__fadeInDown">At vero eos et accusamus</h2>
                <p class="animate__animated animate__fadeInUp">Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.</p>
                <a href="#featured-services" class="btn-get-started scrollto animate__animated animate__fadeInUp">Get Started</a>
              </div>
            </div>
          </div>

          <div class="carousel-item" style="background-image: url(/campus/resources/assets/img/hero-carousel/3.jpg)">
            <div class="carousel-container">
              <div class="container">
                <h2 class="animate__animated animate__fadeInDown">Temporibus autem quibusdam</h2>
                <p class="animate__animated animate__fadeInUp">Beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt omnis iste natus error sit voluptatem accusantium.</p>
                <a href="#featured-services" class="btn-get-started scrollto animate__animated animate__fadeInUp">Get Started</a>
              </div>
            </div>
          </div>

          <div class="carousel-item" style="background-image: url(/campus/resources/assets/img/hero-carousel/4.jpg)">
            <div class="carousel-container">
              <div class="container">
                <h2 class="animate__animated animate__fadeInDown">Nam libero tempore</h2>
                <p class="animate__animated animate__fadeInUp">Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum.</p>
                <a href="#featured-services" class="btn-get-started scrollto animate__animated animate__fadeInUp">Get Started</a>
              </div>
            </div>
          </div>

          <div class="carousel-item" style="background-image: url(/campus/resources/assets/img/hero-carousel/5.jpg)">
            <div class="carousel-container">
              <div class="container">
                <h2 class="animate__animated animate__fadeInDown">Magnam aliquam quaerat</h2>
                <p class="animate__animated animate__fadeInUp">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                <a href="#featured-services" class="btn-get-started scrollto animate__animated animate__fadeInUp">Get Started</a>
              </div>
            </div>
          </div>

        </div>

        <a class="carousel-control-prev" href="#heroCarousel" role="button" data-bs-slide="prev">
          <span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
        </a>

        <a class="carousel-control-next" href="#heroCarousel" role="button" data-bs-slide="next">
          <span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
        </a>

      </div>
    </div>
 -->  </section><!-- End Hero Section -->
   

  <main id="main">

    <!-- ======= About Us Section ======= -->
    <section id="about">
      <div class="container" data-aos="fade-up">

        <header class="section-header">
          <h3>나중에 1</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
        </header>

        <div class="row about-cols">

          <div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
            <div class="about-col">
              <div class="img">
                <img src="/campus/resources/assets/img/about-mission.jpg" alt="" class="img-fluid">
                <div class="icon"><i class="bi bi-bar-chart"></i></div>
              </div>
              <h2 class="title"><a href="#">Our Mission</a></h2>
              <p>
                Lorem ipsum dolor sit amet, consectetur elit, sed do eiusmod tempor ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
              </p>
            </div>
          </div>

          <div class="col-md-4" data-aos="fade-up" data-aos-delay="200">
            <div class="about-col">
              <div class="img">
                <img src="/campus/resources/assets/img/about-plan.jpg" alt="" class="img-fluid">
                <div class="icon"><i class="bi bi-brightness-high"></i></div>
              </div>
              <h2 class="title"><a href="#">Our Plan</a></h2>
              <p>
                Sed ut perspiciatis unde omnis iste natus error sit voluptatem doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.
              </p>
            </div>
          </div>

          <div class="col-md-4" data-aos="fade-up" data-aos-delay="300">
            <div class="about-col">
              <div class="img">
                <img src="/campus/resources/assets/img/about-vision.jpg" alt="" class="img-fluid">
                <div class="icon"><i class="bi bi-calendar4-week"></i></div>
              </div>
              <h2 class="title"><a href="#">Our Vision</a></h2>
              <p>
                Nemo enim ipsam voluptatem quia voluptas sit aut odit aut fugit, sed quia magni dolores eos qui ratione voluptatem sequi nesciunt Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet.
              </p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End About Us Section -->

    <!-- ======= Services Section ======= -->
    <section id="services">
      <div class="container" data-aos="fade-up">

        <header class="section-header wow fadeInUp">
          <h3>나중에 2</h3>
          <p>Laudem latine persequeris id sed, ex fabulas delectus quo. No vel partiendo abhorreant vituperatoribus, ad pro quaestio laboramus. Ei ubique vivendum pro. At ius nisl accusam lorenta zanos paradigno tridexa panatarel.</p>
        </header>

        <div class="row">

          <div class="col-lg-4 col-md-6 box" data-aos="fade-up" data-aos-delay="100">
            <div class="icon"><i class="bi bi-briefcase"></i></div>
            <h4 class="title"><a href="">Lorem Ipsum</a></h4>
            <p class="description">Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident</p>
          </div>
          <div class="col-lg-4 col-md-6 box" data-aos="fade-up" data-aos-delay="200">
            <div class="icon"><i class="bi bi-card-checklist"></i></div>
            <h4 class="title"><a href="">Dolor Sitema</a></h4>
            <p class="description">Minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat tarad limino ata</p>
          </div>
          <div class="col-lg-4 col-md-6 box" data-aos="fade-up" data-aos-delay="300">
            <div class="icon"><i class="bi bi-bar-chart"></i></div>
            <h4 class="title"><a href="">Sed ut perspiciatis</a></h4>
            <p class="description">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur</p>
          </div>
          <div class="col-lg-4 col-md-6 box" data-aos="fade-up" data-aos-delay="200">
            <div class="icon"><i class="bi bi-binoculars"></i></div>
            <h4 class="title"><a href="">Magni Dolores</a></h4>
            <p class="description">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>
          </div>
          <div class="col-lg-4 col-md-6 box" data-aos="fade-up" data-aos-delay="300">
            <div class="icon"><i class="bi bi-brightness-high"></i></div>
            <h4 class="title"><a href="">Nemo Enim</a></h4>
            <p class="description">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque</p>
          </div>
          <div class="col-lg-4 col-md-6 box" data-aos="fade-up" data-aos-delay="400">
            <div class="icon"><i class="bi bi-calendar4-week"></i></div>
            <h4 class="title"><a href="">Eiusmod Tempor</a></h4>
            <p class="description">Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi</p>
          </div>

        </div>

      </div>
    </section>
    <!-- End Services Section -->
    
    <!-- ======= Portfolio Section ======= -->
    <section id="portfolio" class="section-bg">
      <div class="container" data-aos="fade-up">

        <header class="section-header">
          <h3 class="section-title">베스트 상품</h3>
        </header>

        <div class="row" data-aos="fade-up" data-aos-delay="100">
      <div class=" col-lg-12">
          <ul id="portfolio-flters">
            <li data-filter="*" class="filter-active">All</li>
            <li data-filter=".filter-app">App</li>
            <li data-filter=".filter-card">Card</li>
            <li data-filter=".filter-web">Web</li>
          </ul>
        </div>
      </div>

      <div class="row portfolio-container" data-aos="fade-up" data-aos-delay="200">

        <div class="col-lg-4 col-md-6 portfolio-item filter-app">
          <div class="portfolio-wrap">
            <figure>
              <img src="/campus/resources/assets/img/portfolio/app1.jpg" class="img-fluid" alt="">
              <a href="/campus/resources/assets/img/portfolio/app1.jpg" data-lightbox="portfolio" data-title="App 1" class="link-preview"><i class="bi bi-plus"></i></a>
              <a href="/campus/goods-detail.action" class="link-details" title="More Details"><i class="bi bi-link"></i></a>
            </figure>

            <div class="portfolio-info">
              <h4><a href="/campus/goods-detail.action">App 1</a></h4>
              <p>App</p>
            </div>
          </div>
        </div>

        <div class="col-lg-4 col-md-6 portfolio-item filter-web">
          <div class="portfolio-wrap">
            <figure>
              <img src="/campus/resources/assets/img/portfolio/web3.jpg" class="img-fluid" alt="">
              <a href="/campus/resources/assets/img/portfolio/web3.jpg" class="link-preview portfolio-lightbox" data-gallery="portfolioGallery" title="Web 3"><i class="bi bi-plus"></i></a>
              <a href="/campus/goods-detail.action" class="link-details" title="More Details"><i class="bi bi-link"></i></a>
            </figure>

            <div class="portfolio-info">
              <h4><a href="/campus/goods-detail.action">Web 3</a></h4>
              <p>Web</p>
            </div>
          </div>
        </div>

        <div class="col-lg-4 col-md-6 portfolio-item filter-app">
          <div class="portfolio-wrap">
            <figure>
              <img src="/campus/resources/assets/img/portfolio/app2.jpg" class="img-fluid" alt="">
              <a href="/campus/resources/assets/img/portfolio/app2.jpg" class="link-preview portfolio-lightbox" data-gallery="portfolioGallery" title="App 2"><i class="bi bi-plus"></i></a>
              <a href="/campus/goods-detail.action" class="link-details" title="More Details"><i class="bi bi-link"></i></a>
            </figure>

            <div class="portfolio-info">
              <h4><a href="/campus/goods-detail.action">App 2</a></h4>
              <p>App</p>
            </div>
          </div>
        </div>

        <div class="col-lg-4 col-md-6 portfolio-item filter-card">
          <div class="portfolio-wrap">
            <figure>
              <img src="/campus/resources/assets/img/portfolio/card2.jpg" class="img-fluid" alt="">
              <a href="/campus/resources/assets/img/portfolio/card2.jpg" class="link-preview portfolio-lightbox" data-gallery="portfolioGallery" title="Card 2"><i class="bi bi-plus"></i></a>
              <a href="/campus/goods-detail.action" class="link-details" title="More Details"><i class="bi bi-link"></i></a>
            </figure>

            <div class="portfolio-info">
              <h4><a href="/campus/goods-detail.action">Card 2</a></h4>
              <p>Card</p>
            </div>
          </div>
        </div>

        <div class="col-lg-4 col-md-6 portfolio-item filter-web">
          <div class="portfolio-wrap">
            <figure>
              <img src="/campus/resources/assets/img/portfolio/web2.jpg" class="img-fluid" alt="">
              <a href="/campus/resources/assets/img/portfolio/web2.jpg" class="link-preview portfolio-lightbox" data-gallery="portfolioGallery" title="Web 2"><i class="bi bi-plus"></i></a>
              <a href="/campus/goods-detail.action" class="link-details" title="More Details"><i class="bi bi-link"></i></a>
            </figure>

            <div class="portfolio-info">
              <h4><a href="/campus/goods-detail.action">Web 2</a></h4>
              <p>Web</p>
            </div>
          </div>
        </div>

        <div class="col-lg-4 col-md-6 portfolio-item filter-app">
          <div class="portfolio-wrap">
            <figure>
              <img src="/campus/resources/assets/img/portfolio/app3.jpg" class="img-fluid" alt="">
              <a href="/campus/resources/assets/img/portfolio/app3.jpg" class="link-preview portfolio-lightbox" data-gallery="portfolioGallery" title="App 3"><i class="bi bi-plus"></i></a>
              <a href="/campus/goods-detail.action" class="link-details" title="More Details"><i class="bi bi-link"></i></a>
            </figure>

            <div class="portfolio-info">
              <h4><a href="/campus/goods-detail.action">App 3</a></h4>
              <p>App</p>
            </div>
          </div>
        </div>

        <div class="col-lg-4 col-md-6 portfolio-item filter-card">
          <div class="portfolio-wrap">
            <figure>
              <img src="/campus/resources/assets/img/portfolio/card1.jpg" class="img-fluid" alt="">
              <a href="/campus/resources/assets/img/portfolio/card1.jpg" class="link-preview portfolio-lightbox" data-gallery="portfolioGallery" title="Card 1"><i class="bi bi-plus"></i></a>
              <a href="/campus/goods-detail.action" class="link-details" title="More Details"><i class="bi bi-link"></i></a>
            </figure>

            <div class="portfolio-info">
              <h4><a href="/campus/goods-detail.action">Card 1</a></h4>
              <p>Card</p>
            </div>
          </div>
        </div>

        <div class="col-lg-4 col-md-6 portfolio-item filter-card">
          <div class="portfolio-wrap">
            <figure>
              <img src="/campus/resources/assets/img/portfolio/card3.jpg" class="img-fluid" alt="">
              <a href="/campus/resources/assets/img/portfolio/card3.jpg" class="link-preview portfolio-lightbox" data-gallery="portfolioGallery" title="Card 3"><i class="bi bi-plus"></i></a>
              <a href="/campus/goods-detail.action" class="link-details" title="More Details"><i class="bi bi-link"></i></a>
            </figure>

            <div class="portfolio-info">
              <h4><a href="/campus/goods-detail.action">Card 3</a></h4>
              <p>Card</p>
            </div>
          </div>
        </div>

        <div class="col-lg-4 col-md-6 portfolio-item filter-web">
          <div class="portfolio-wrap">
            <figure>
              <img src="/campus/resources/assets/img/portfolio/web1.jpg" class="img-fluid" alt="">
              <a href="/campus/resources/assets/img/portfolio/web1.jpg" class="link-preview portfolio-lightbox" data-gallery="portfolioGallery" title="Web 1"><i class="bi bi-plus"></i></a>
              <a href="/campus/goods-detail.action" class="link-details" title="More Details"><i class="bi bi-link"></i></a>
            </figure>

            <div class="portfolio-info">
              <h4><a href="/campus/goods-detail.action">Web 1</a></h4>
              <p>Web</p>
            </div>
          </div>
        </div>

      </div>

      </div>
    </section><!-- End Portfolio Section -->

    <!-- ======= Our Clients Section ======= -->
    <section id="clients">
      <div class="container" data-aos="zoom-in">

        <header class="section-header">
          <h3>고객 후기</h3>
        </header>

        <div class="clients-slider swiper">
          <div class="swiper-wrapper align-items-center">
            <div class="swiper-slide"><img src="/campus/resources/assets/img/clients/client-1.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="/campus/resources/assets/img/clients/client-2.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="/campus/resources/assets/img/clients/client-3.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="/campus/resources/assets/img/clients/client-4.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="/campus/resources/assets/img/clients/client-5.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="/campus/resources/assets/img/clients/client-6.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="/campus/resources/assets/img/clients/client-7.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="/campus/resources/assets/img/clients/client-8.png" class="img-fluid" alt=""></div>
          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section>
    <!-- End Our Clients Section -->

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h3>오시는 길</h3>
          <br>
          <br>
        </div>

        <div class="map">
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d25324.2186513383!2d127.02271616499561!3d37.49547904208217!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca15857ce38dd%3A0xac87641577138f5d!2z6re466aw7Lu07ZOo7YSw7JWE7Lm0642w66-4IOqwleuCqOy6oO2NvOyKpA!5e0!3m2!1sko!2skr!4v1667204209769!5m2!1sko!2skr" width="1200" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
        
        <div class="map-text">
        <div>
        <h3>주소</h3>
        <p>서울특별시 강남구 강남대로 428</p>
        </div>
        
        <div>
        <h3>전화번호</h3>
        <p>010-0000-0000</p>
        </div>
		</div>
     <!--    <div class="form">
          <form action="forms/contact.php" method="post" role="form" class="php-email-form">
            <div class="row">
              <div class="form-group col-md-6">
                <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>
              </div>
              <div class="form-group col-md-6">
                <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required>
              </div>
            </div>
            <div class="form-group">
              <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" required>
            </div>
            <div class="form-group">
              <textarea class="form-control" name="message" rows="5" placeholder="Message" required></textarea>
            </div>
            <div class="my-3">
              <div class="loading">Loading</div>
              <div class="error-message"></div>
              <div class="sent-message">Your message has been sent. Thank you!</div>
            </div>
            <div class="text-center"><button type="submit">Send Message</button></div>
          </form>
        </div>
 -->
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

</html>