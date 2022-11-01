<%@ page language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>

	<!-- Basic Page Info -->
	<meta charset="UTF-8">
	<title>Campus - testtab</title>

	<!-- Site favicon -->
	<link rel="apple-touch-icon" sizes="180x180" href="/campus/resources/vendors/images/apple-touch-icon.png">
	<link rel="icon" type="image/png" sizes="32x32" href="/campus/resources/vendors/images/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="/campus/resources/vendors/images/favicon-16x16.png">

	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<!-- Google Font -->
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
	
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="/campus/resources/vendors/styles/core.css">
	<link rel="stylesheet" type="text/css" href="/campus/resources/vendors/styles/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="/campus/resources/src/plugins/datatables/css/dataTables.bootstrap4.min.css">
	<link rel="stylesheet" type="text/css" href="/campus/resources/src/plugins/datatables/css/responsive.bootstrap4.min.css">
	<link rel="stylesheet" type="text/css" href="/campus/resources/vendors/styles/style.css">

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<!-- 구글 태그 / 활용해보고 삭제 예정입니다 -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>
	
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());

		gtag('config', 'UA-119386393-1');
	</script>
	
</head>
<body>

	<!-- pre loader(페이지 진입 시 로딩바 보이기) -->
	<jsp:include page="/WEB-INF/views/modules/preLoader.jsp" />
	
	<!--  header -->
	<jsp:include page="/WEB-INF/views/modules/adminHeader.jsp" />
	
	<!--  sidebar -->
	<jsp:include page="/WEB-INF/views/modules/adminSidebar.jsp" />
	
	
	<!-- 페이지 시작합니다 -->
	<div class="mobile-menu-overlay"></div>

	<div class="main-container">

		<div class="pd-ltr-20 xs-pd-20-10">
			<div class="min-height-200px">

				<!-- 페이지 해더입니다. 없으면 하단 컨텐츠가 모두 깨집니다!! -->
				<div class="page-header">
					<div class="row">
						<div class="col-md-6 col-sm-12">
							<div class="title">
								<h4> Test</h4>
							</div>
							<nav aria-label="breadcrumb" role="navigation">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="#">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">Test</li>
								</ol>
							</nav>
						</div>
						
						<div class="col-md-6 col-sm-12 text-right">
							<div class="dropdown">
								<a class="btn btn-primary dropdown-toggle" href="#"
									role="button" data-toggle="dropdown"> Oct 2022 </a>
								
								<div class="dropdown-menu dropdown-menu-right">
									<a class="dropdown-item" href="#">기능1)Export List </a> 
									<a class="dropdown-item" href="#">기능2)Policies </a> 
									<a class="dropdown-item" href="#">기능3)View Assets </a>
									<a class="dropdown-item" href="#">기능4)View Assets </a>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="pd-20 card-box mb-30">
					<div class="clearfix">
					
						<h4 class="text-blue h4">test 정보를 입력하세요</h4>
						<p class="mb-30">test 페이지 입니다</p>
					
					</div>
	
					<div class="wizard-content">
						<form class="tab-wizard wizard-circle wizard clearfix" role="application" id="steps-uid-0">
							
							<div class="content clearfix">								
								<section id="steps-uid-0-p-0" role="tabpanel" aria-labelledby="steps-uid-0-h-0" class="body current" aria-hidden="false">
									
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label>Test Text 1 :</label>
												<input type="text" class="form-control">
											</div>
										</div>
								
									</div>
									
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label>Test Text 2 :</label>
												<input type="text" class="form-control">
											</div>
										</div>
									</div>
									
									<!-- 대여할 브랜드 자동 선택 -->
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label>상품브랜드 :</label>
												<select class="custom-select form-control">
													<option value="#">스타벅스</option>
													<option value="#">스노우</option>
													<option value="#">캠퍼스</option>
													<option value="#">아시아나</option>
													<option value="#">오랜만</option>
													<option value="#">테스트</option>
												</select>
											</div>
										</div>
										
							<!-- 상품 입고 일자 선택 -->
							<div class="col-md-6">
								<div class="form-group">
									<label>상품입고일 :</label>
									<input type="text" class="form-control date-picker" placeholder="Select Date">
								</div>
							</div>
								
							<!-- 상품등록, 취소 버튼 -->	
							<div class="btn-list">
								<button type="button" class="btn btn-lg btn-primary" >입고등록</button> <!-- disable 추후 추가 예정 -->
								<button type="button" class="btn btn-secondary btn-lg" >취소</button> <!-- disable 추후 추가 예정 -->
							</div>		
										
								</div>
							</section>
						</div>
					</form>
				</div>
			</div>
				
		</div>
	
	</div>
			
		<!-- js -->
		<jsp:include page="/WEB-INF/views/modules/adminJS.jsp" />

</body>
</html>