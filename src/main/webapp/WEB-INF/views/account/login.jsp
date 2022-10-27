<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<!-- 이 페이지는 헤더랑 푸터만 있는 페이지입니다. -->
<!-- 상세페이지 만들때 사용 ㄱㄱ -->

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<<<<<<< HEAD
  <title>Login</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
=======
<title>Campus</title>
<meta content="" name="description">
<meta content="" name="keywords">
<meta name="description" content="">
<meta name="msapplication-tap-highlight" content="yes" />
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1, minimum-scale=1.0, maximum-scale=1.0" />
>>>>>>> ced4e7d2106f8d3e2162dd18b94970dc0ad9b285

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

<<<<<<< HEAD
  <!-- Template Main CSS File -->
  <link href="/campus/resources/assets/css/style.css" rel="stylesheet">
  <link href="/campus/resources/assets/css/login.css" rel="stylesheet">
=======
<!-- Template Main CSS File -->
<link href="/campus/resources/assets/css/style.css" rel="stylesheet">
>>>>>>> ced4e7d2106f8d3e2162dd18b94970dc0ad9b285

<!-- =======================================================
  * Template Name: BizPage - v5.10.1
  * Template URL: https://bootstrapmade.com/bizpage-bootstrap-business-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
<<<<<<< HEAD
  
      <!-- sidebar css,js -->
  
    <!--  Bootstrap 3-->
    <link rel="stylesheet" href="/campus/resources/sidebar/css/bootstrap.min.css">
=======

<!-- sidebar css,js -->
<!-- Google Web Font -->
<link
	href='http://fonts.googleapis.com/css?family=Ubuntu:300,400,500,700'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Lekton:400,700,400italic'
	rel='stylesheet' type='text/css'>
>>>>>>> ced4e7d2106f8d3e2162dd18b94970dc0ad9b285

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

<!-- sidebar css,js -->
<!-- 사이드바 아이콘 링크  -->
<script
	src="https://code.iconify.design/iconify-icon/1.0.1/iconify-icon.min.js"></script>

<<<<<<< HEAD
    <!-- Modernizer & Respond js -->
    <script src="/campus/resources/sidebar/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    <!-- end of sidebar css,js -->
    
    <!--  사이드바 관리자 아이콘 -->
    <script src="https://code.iconify.design/iconify-icon/1.0.1/iconify-icon.min.js"></script>
    
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

   <div id="login" class="login">
    <!-- FORM SECTION -->
    <div class="log">
      <!-- SIGN UP -->
      <div class="log-col log-align-items-center flex-log-col sign-up">
        <div class="form-wrapper log-align-items-center">
          <div class="form sign-up">
          
          <form id="registerform" action="register.action" method="post">
           <table>
            <tr class="input-group">
              <td>
              <input type="text" id="memberId" name="memberId" placeholder="ID">
              </td>
            </tr>
            
            <tr class="input-group">
              <td>
              <input type="password" id="passwd" name="passwd" placeholder="Password">
              </td>
            </tr>
            
            <tr class="input-group">
              <i class='bx bxs-lock-alt'></i>
              <td>
              <input type="password" id="confirm" name="confirm" placeholder="Confirm password">
              </td>
            </tr>
            
            <tr class="input-group">
              <td>
              <input type="text" id="email" name="email" placeholder="E-mail">
              </td>
            </tr>
            
            <tr class="input-group">
              <td>
              <input type="text" id="memberName" name="memberName" placeholder="UserName">
              </td>
            </tr>
            
            <tr class="input-group">
             <td>
              <input type="text" id="address" name="address" placeholder="address">
              </td>
            </tr>
            
            <tr class="input-group">
              <td>
              <input type="date" id="birth" name="birth" placeholder="birth">
              </td>
            </tr>
            
            <tr class="input-group">
              <td>
              <input type="tel" id="phone" name="phone" placeholder="Phone-Number">
              </td>
            </tr>
             </table>
            </form>
            <div class="buttons">
              <input id="register" type="submit" value="가입" />
		  	  <input id="cancel" type="button" value="취소" />
            </div>
             <p>
              <span>
                Already have an account?
              </span>
              <b onclick="toggle()" class="pointer">
                Sign in here
              </b>
            </p>
           
          </div>
        </div>
      <div class="form-wrapper">
      
      </div>
      </div>
      <!-- END SIGN UP -->
      
      <!-- SIGN IN -->
      <div class="log-col log-align-items-center flex-log-col sign-in">
        <div class="form-wrapper log-align-items-center">
          <div class="form sign-in">
          
          <form action="login.action" method="post">
          
          <table>
            <tr class="input-group">
            <td>
              <input type="text" name="memberId" placeholder="Username">
              </td>
            </tr>
            
            <tr class="input-group">
            <td>
              <input type="password" name="passwd" placeholder="Password">
              </td>
            </tr>
            </table>
              </form>
            <div class="buttons">
              <input id="register" type="submit" value="로그인" />
              </div>
            <p>
              <span>
                Don't have an account?
              </span>
              <b onclick="toggle()" class="pointer">
                Sign up here
              </b>
            </p>
            </form>
          </div>
        </div>
        <div class="form-wrapper">
    
        </div>
      </div>
      <!-- END SIGN IN -->
    </div>
    <!-- END FORM SECTION -->
    <!-- CONTENT SECTION -->
    <div class="log content-log">
      <!-- SIGN IN CONTENT -->
      <div class="log-col log-align-items-center flex-log-col">
        <div class="text sign-in">
          <h2>
            반갑습니다.
          </h2>
  
        </div>
        <div class="img sign-in">
    
        </div>
      </div>
      <!-- END SIGN IN CONTENT -->
      <!-- SIGN UP CONTENT -->
      <div class="log-col log-align-items-center flex-log-col">
        <div class="img sign-up">
        
        </div>
        <div class="text sign-up">
          <h2>
            환영합니다.
          </h2>
  
        </div>
      </div>
      <!-- END SIGN UP CONTENT -->
    </div>
    <!-- END CONTENT SECTION -->
  </div>
  

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />  
<!-- End Footer -->

  <a href="#" class="back-to-top d-flex log-align-items-center justify-content-center"><i class="bi bi-arlog-up-short"></i></a>
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
  <script src="/campus/resources/assets/js/login.js"></script>
  
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
  
  <!-- 로그인 실패시 js -->
=======
</head>
<body>

	<div id='pageContainer'>

		<!-- ======= Header ======= -->
		<jsp:include page="/WEB-INF/views/include/header.jsp" />
		<!-- End Header -->

		<div id="inputcontent">
			<br />
			<br />
			<div id="inputmain">
				<div class="inputsubtitle">로그인정보</div>

				<form action="login.action" method="post">

					<table>
						<tr>
							<th>아이디(ID)</th>
							<td><input type="text" name="memberId" style="width: 280px" />
							</td>
						</tr>
						<tr>
							<th>비밀번호</th>
							<td><input type="password" name="passwd"
								style="width: 280px" /></td>
						</tr>
					</table>

					<div class="buttons">
						<input type="submit" value="로그인" style="height: 25px" /> <input
							type="button" value="취소" style="height: 25px" />
					</div>
				</form>

			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
>>>>>>> ced4e7d2106f8d3e2162dd18b94970dc0ad9b285
	<script type="text/javascript">
		$(function() {
			<c:if test="${ not empty loginfail }">
			alert('로그인 실패 : 아이디와 패스워드를 확인하세요');
			</c:if>
		});
	</script>
	
</body>

<<<<<<< HEAD
=======
</body>
>>>>>>> ced4e7d2106f8d3e2162dd18b94970dc0ad9b285
</html>