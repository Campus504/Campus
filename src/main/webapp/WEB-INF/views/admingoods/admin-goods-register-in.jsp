<%@ page language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>

	<!-- Basic Page Info -->
	<meta charset="UTF-8">
	<title>Campus - 입고등록</title>

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
	<script src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>
	
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
								<h4>입고등록</h4>
							</div>
							<nav aria-label="breadcrumb" role="navigation">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="#">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">입고등록</li>
								</ol>
							</nav>
						</div>
						
						<div class="col-md-6 col-sm-12 text-right">
							<div class="dropdown">
								<a class="btn btn-primary dropdown-toggle" href="#"
									role="button" data-toggle="dropdown"> Oct 2022 </a>
								
								<div class="dropdown-menu dropdown-menu-right">
									<a class="dropdown-item" href="#">기능1</a> 
									<a class="dropdown-item" href="#">기능2</a> 
								</div>
							</div>
						</div>
					</div>
				</div>
				
	
				<!-- 입고 등록 페이지 시작 -->
				<div class="pd-20 card-box mb-30">
					<div class="clearfix">
						<h4 class="text-blue h4">입고 상품 정보를 입력하세요 </h4>
						<p class="mb-30">입고 될 상품의 정보를 입력해주세요 </p>				
					</div>
	
					<div class="wizard-content">
							<div class="content clearfix">								
								
								<section id="steps-uid-0-p-0" role="tabpanel" aria-labelledby="steps-uid-0-h-0" class="body current" aria-hidden="false">
								<form action="admin-goods-register-in.action" name="admin-goods-in-form" method="post">
							 		<div class="row">
										<div class="col-md-6">
		
											<!-- 입고 미 입고 여부 확인 -->
											<div class="form-group">
												<label>1. 입고상품:</label>
												<input type="hidden" class="form-control" id="goodsCode" name="goodsCode" value="${ goodsCode }">
												<input type="text" class="form-control" id="goodsName" name="goodsName" placeholder="입고 상품" value="${ goodsName }">
											</div>
										
											<div class="form-group">
												<label>3. 대여가격 :</label>
												<input type="text" class="form-control" id="rentPrice" name="rentPrice" placeholder="숫자만 입력하세요">
											</div>
										
											<div class="form-group">
												<label>5. 입고일자 :</label>
												<input type="text" class="form-control date-picker" id="goodsInDate" name="goodsInDate" placeholder="입고일자">
											</div>
										</div>
											
											<div class="col-md-6">
											<div class="form-group">
												<label>2. 속성설명:</label>
												<input type="text" class="form-control" id="detail" name="option_description" placeholder="상세설명" value="${ optionDesc }">
											</div>
											
											<div class="form-group">
												<label>4. 입고수량 :</label>
												<input type="text" class="form-control" id="goodsIn" name="goodsIn" placeholder="입고 수량">
											</div>
											
										</div>
									</div>
								
						<!-- 상품등록, 취소 버튼 -->
						<div class="btn-list">
							<button type="submit" id="adminGoodsRegisterIn" name="adminGoodsRegisterIn" value="입고등록" class="btn btn-lg btn-primary" >입고등록</button>
							<button type="reset" id="goodsRegister" name="goodsRegister" value="입력초기화" class="btn btn-secondary btn-lg" >초기화</button>
							<button type="button" class="btn btn-secondary btn-lg">취소</button>
						</div>	
							 		</form>
								</section>
							 		
							 		</div>
							 		</div>
							 		</div>
							 		
							 	</div>
							</div>
				 		</div>
				<!-- 상품 등록 페이지 끝 -->	
	
	
		<!-- js -->
		<jsp:include page="/WEB-INF/views/modules/adminJS.jsp" />

</body>
</html>