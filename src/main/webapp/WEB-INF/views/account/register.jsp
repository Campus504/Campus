<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html lang="en">

<!-- 이 페이지는 헤더랑 푸터만 있는 페이지입니다. -->
<!-- 상세페이지 만들때 사용 ㄱㄱ -->

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>회원가입</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

<!-- <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet"> -->
  <!-- <script src="https://kit.fontawesome.com/a81368914c.js"></script> -->
  

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
    <link rel="stylesheet" href="/campus/resources/assets/css/login.css">

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
	.error{color:red;font-weight:bold; font-size:8pt;position: absolute; top: 37px; left: 7px;}
	</style>
</head>

<body>

  <!-- ======= Header ======= -->
 	<jsp:include page="/WEB-INF/views/include/header.jsp" />
  <!-- End Header -->


  <main id="main">
  
  <!-- <img class="wave" src="https://raw.githubusercontent.com/sefyudem/Responsive-Login-Form/master/img/wave.png"> -->
  <div class="container">
    <div class="img">
      <!-- <img src="https://raw.githubusercontent.com/sefyudem/Responsive-Login-Form/master/img/bg.svg"> -->
      <img src="/campus/resources/assets/img/login2.gif">
    </div>
    <div class="login-content login-content2">
       <form:form id="registerform" action="register.action" method="post" name="register-form" modelAttribute="memberDto">
  
        <h2 class="title">회원가입</h2>
        <table>
        
              <div class="input-div one">
                 <div class="div">
                    <input type="text" id="memberId" class="input" name="memberId" placeholder="아이디">
                     <span id="memberIdMsg"	style="position: absolute; right: 100px; top: 5px;"></span>
                      <br>
               	</div>
							<input type="button" class="id-btn" onclick="memberIdOverlap()"	value="중복확인" style="position: absolute; right: 5px; top: 8px; color: #fff; background-color: #38D3A1; border: none; padding: 5px 10px; border-radius: 10px;">
							<form:errors path="memberId" class="error" />
              </div>
                 
              <div class="input-div pass">
				 <div class="div">
                    <input type="password" id="passwd" class="input" name="passwd" placeholder="비밀번호">
                    <br>
                 </div>
                 <form:errors path="passwd" class="error" />
              </div>
              
               <div class="input-div pass">
				 <div class="div">
                    <input type="password" class="input" id="confirm" name="confirm" placeholder="비밀번호 확인" onkeyup="passConfirm()">
                    <span id ="confirmMsg"></span>
                    <br>
                 </div>
                 <form:errors path="passwd" class="error" />
              </div>
                 
              <div class="input-div pass">
				 <div class="div">
                    <input type="text" id="email" name="email" placeholder="이메일">
                    <br>
                 </div>
                 <form:errors path="email" class="error" />
              </div>
              
               <div class="input-div pass">
				 <div class="div">
                    <input type="text" id="memberName" name="memberName" placeholder="이름">
                    <br>
                    <form:errors path="memberName" class="error" />
                 </div>
              </div>
              
               <div class="input-div pass">
				 <div class="div">
                    <input type="text" id="address" name="address" placeholder="주소">
                     <br>
                    <form:errors path="address" class="error" />
                 </div>
              </div>
              
               <div class="input-div pass">
				 <div class="div">
                    <input type="date" id="birth" name="birth" placeholder="생년월일">
                    <br>
                 </div>
			       <form:errors path="birth" class="error" />
              </div>
              
               <div class="input-div pass">
				 <div class="div">
                    <input type="tel" id="phone" name="phone" placeholder="전화번호">
                    <br>
                  </div>
                  <form:errors path="phone" class="error" />
              </div>
              
              
              <a href="login.action" title="로그인" style="font-size:10pt; color:#ccc;">로그인 바로가기</a>
              <div class="log-btn">
              <input id="register" type="submit" value="가입" />
              <input id="cancel" type="button" value="취소" />
              </div>
              </table>
            </form:form>
        </div>
    </div>
  </main>
  <!-- End #main -->

<%--   <!-- ======= Footer ======= -->
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />  
<!-- End Footer -->
 --%>
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



  	$(document).ready(function(){
		// 취소버튼 클릭시
		$("#cancel").on("click", function(){
			
			location.href = "login.action";
					    
		})
		
	var chk1 = false;
 	$('#memberId').keyup(function() {
     if($(this).val() === '' ) {//지금 발생하는 이곳이 빈 문자열이니?
        $(this).css('background-color', 'pink');
        $('#memberIdMsg').html('<b style="font-size: 10px; color: red">[영문자, 숫자조합 4-14로 입력하세요.]</b>');//텍스트를 집어넣을거야 
        chk1 = false;
		     }
		     
		 });
 	/* 입력없이 가입버튼 클릭시 */
		$("#register").on("click", function(){
			if($("#memberId").val()==""){
				alert("아이디를 입력해주세요.");
				$("#memberId").focus();
				return false;
			}
			if($("#passwd").val()==""){
				alert("비밀번호를 입력해주세요.");
				$("#passwd").focus();
				return false;
			}
			if($("#email").val()==""){
				alert("이메일을 입력해주세요.");
				$("#email").focus();
				return false;
			}
			if($("#memberName").val()==""){
				alert("성명을 입력해주세요.");
				$("#memberName").focus();
				return false;
			}
			if($("#address").val()==""){
				alert("주소를 입력해주세요.");
				$("#address").focus();
				return false;
			}
			if($("#birth").val()==""){
				alert("생년월일을 입력해주세요.");
				$("#birth").focus();
				return false;
			}
			if($("#phone").val()==""){
				alert("연락처를 입력해주세요.");
				$("#phone").focus();
				return false;
			}
		});
		
			
		
	});

/* 아이디 중복확인 */
function memberIdOverlap(){
	console.log("memberIdOverlap 호출");
	console.log("아이디 입력 값 : " + registerform.memberId.value);
	const formData = $('#registerform').serialize();
$.ajax({
	method :"post",/* 전송 방식 */
	url :"memberIdOverlap", /* 컨트롤러 사용할 때. 내가 보낼 데이터의 주소. */
	data : formData,/* {"memberId" : registerform.memberId.value}, */
	/*
    "파라미터 이름" : 폼태그에 적은 NAME 값.ID입력창의 NAME값.value 여러 개도 가능
	data :{	"id" : joinForm.id.value, 
	"id1" : joinForm.password.value}, 이렇게도 사용 가능.					
	*/
	//dataType : "text",	/* text, xml, html, script, json, jsonp 가능*/
    //정상적인 통신을 했다면 function은 백엔드 단에서 데이터를 처리.
	success : function(data,status,xhr){	
		if(data == "1"){
			 $('#memberId').css('background-color', '#c2d9a4');
	 		 $('#memberIdMsg').html('<b style="font-size: 10px; color: #000">[사용가능한 아이디 입니다.]</b>');
	 		 chk1 = true;
			alert("이 아이디는 사용 가능합니다.");
		}else{	//ajax가 제대로 안됐을 때 .
			alert("이 아이디는 사용 불가능합니다.");
		}
	},
	error : function(data,status,xhr){
		alert("아이디 중복확인 실패");
	}
});

}
	/* 자바 스크립트 함수 선언(비밀번호 확인) */

	function passConfirm() {
	/* 비밀번호, 비밀번호 확인 입력창에 입력된 값을 비교해서 같다면 비밀번호 일치, 그렇지 않으면 불일치 라는 텍스트 출력.*/
	/* document : 현재 문서를 의미함. 작성되고 있는 문서를 뜻함. */
	/* getElementByID('아이디') : 아이디에 적힌 값을 가진 id의 value를 get을 해서 password 변수 넣기 */
		var password = document.getElementById('passwd');					//비밀번호 
		var passwordConfirm = document.getElementById('confirm');	//비밀번호 확인 값
		var confrimMsg = document.getElementById('confirmMsg');				//확인 메세지
		var correctColor = "#00ff00";	//맞았을 때 출력되는 색깔.
		var wrongColor ="#ff0000";	//틀렸을 때 출력되는 색깔
		
		if(password.value == passwordConfirm.value){//password 변수의 값과 passwordConfirm 변수의 값과 동일하다.
			confirmMsg.style.color = correctColor;/* span 태그의 ID(confirmMsg) 사용  */
			confirmMsg.innerHTML ="비밀번호 일치";/* innerHTML : HTML 내부에 추가적인 내용을 넣을 때 사용하는 것. */
		}else{
			confirmMsg.style.color = wrongColor;
			confirmMsg.innerHTML ="비밀번호 불일치";
		}
	}
	
	
	
</script>
	
</body>


</html>