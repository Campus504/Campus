<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>CAMPUS - 캠핑 팁</title>
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

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <ol>
          <li><a href="main">홈</a></li>
        </ol>
        <h2>캠핑 팁 - ${ search } 검색 결과 입니다</h2>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Blog Section ======= -->
    <section id="blog" class="blog">
      <div class="container" data-aos="fade-up">

        <div id ="tips-container" class="row">
			<div id ="tips-container-inner" style="flex: 0 0 auto; width: 66.66666667%;" >
			<!-- 캠핑팁 리스트 불러올 자리 -->
			</div>

		    <div class="col-lg-8 entries">
			

			            	<!-- paging -->
		 <div class="blog-pagination">
              <ul class="justify-content-center">
              <li class="active"><a id="moreTips" >게시글 더보기</a>
              <a style="display:none" id="lastPage" >마지막 페이지입니다</a>
              <a style="display:none" id="noSearch" >검색 결과가 없습니다</a></li>
              </ul>
       </div>
				<!-- end of paging -->
				
          </div><!-- End blog entries list -->
          
          
          
            <div class="col-lg-4" style="position: absolute; top: 8px; right: 1px;">

			<div class="sidebar">
             
            <h3 class="sidebar-title">검색하기</h3>
              <div class="sidebar-item search-form">
              
              <div class="mb-3">
                 <select class="form-select form-select-lg" id="searchOption" name="searchOption">
	                 <option value="title">제목</option>
	                 <option value="content">내용</option>
	                 <option value="memberId">작성자</option>
                 </select>
                 </div>
                 <form>
               <input type="text" class="form-control" id="search" name="search">
                  <button type="button" id="search-btn"><i class="bi bi-search"></i></button>
                
              </form>
              </div><!-- End sidebar search form-->

              <h3 class="sidebar-title">카테고리</h3>
              <div class="sidebar-item categories">
                <ul>
                  <li><a href="notice-list.action">공지사항</a></li>
                  <li><a href="freeboard.action">자유게시판</a></li>
                   <li><a href="tip-list.action">캠핑 팁</a></li>
                </ul>
              </div><!-- End sidebar categories-->

              

            </div><!-- End sidebar -->

           <article class="entry">
              <div class="entry-content">
                <div class="read-more">
                  <a href="tip-write.action">새 글 쓰기</a>
                </div>
              </div>
            </article><!-- End write entry -->
            
          </div><!-- End blog sidebar -->




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
 <!--  <script src="http://code.jquery.com/jquery-latest.min.js"></script> -->
  <script type="text/javascript">
  
  $(function(){
	  
	  var currentPageNo=${pageNo};
	  
	  if(${pageCount==0}){
		  $('#tips-container').append('<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>');
		  $("#moreTips").hide();
		  $("#lastPage").hide();
		  $("#noSearch").show();
	  }else if(${pageCount==1}) {
		  $('#tips-container').append('<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>');
		  $("#moreTips").hide();
		  $("#lastPage").show();
		  $("#noSearch").hide();
	  }
	  
	  $('#tips-container-inner').load("tip-search-content-list.action?pageNo=${pageNo}&search=${search}&searchOption=${searchOption}");
	  
	  $('.blog-pagination').on('click','#moreTips',function(event){
		  event.preventDefault();
		  let search = '${search}';
		  let searchOption = '${searchOption}';
		  $.ajax({
				url: "tip-search-content-list.action",
				data:{
					search : '${search}',
					searchOption : '${searchOption}'
					
				},
				success: function(data) {
					
					
					if((currentPageNo+1)==${pageCount}){
						$("#moreTips").hide();
						$("#noSearch").hide();
						$("#lastPage").show();
					}
					currentPageNo++; 
					$('#tips-container-inner').load("tip-search-content-list.action?pageNo="+currentPageNo+"&search="+search+"&searchOption="+searchOption);
					
				},
				error: function() {
					alert("ㅠㅠ");
				}
			});	
		  		  
	  });
	  
		$('#search-btn').on('click',function(event){
			let search=$('#search').val();
			let searchOption=$('#searchOption').val();
			location.href = 'tip-search.action?search='+search+'&searchOption='+searchOption;
			
			
		});
	  
  });
  
  </script>

</body>

</html>