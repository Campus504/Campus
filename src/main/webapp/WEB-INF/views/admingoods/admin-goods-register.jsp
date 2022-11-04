<%@ page language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>

	<!-- Basic Page Info -->
	<meta charset="UTF-8">
	<title>Campus - 상품등록</title>

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
								<h4> 상품등록</h4>
							</div>
							<nav aria-label="breadcrumb" role="navigation">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="#">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">상품등록</li>
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
	
				<!-- 상품 등록 페이지 시작 -->
				<div class="pd-20 card-box mb-30">
					<div class="clearfix">
						<h4 class="text-blue h4">상품 정보를 입력하세요</h4>
						<p class="mb-30">등록 될 상품의 정보를 입력해주세요</p>				
					</div>
	
					<div class="wizard-content">
							<div class="content clearfix">								
								
								<section id="steps-uid-0-p-0" role="tabpanel" aria-labelledby="steps-uid-0-h-0" class="body current" aria-hidden="false">
							 		<form action="admin-goods-register.action" method="post" enctype="multipart/form-data">
									
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label>상품분류 :</label>
												<!-- <input type="text" class="form-control" id="category" name="category" placeholder="상품분류"> -->
												<select name=category class="custom-select form-control">
													<option value="">--옵션을선택하세요--</option>
													<option value="텐트">텐트</option>
													<option value="타프">타프</option>
													<option value="텐트/타프(소품)">텐트/타프(소품)</option>
													<option value="테이블">테이블</option>
													<option value="체어">체어</option>
													<option value="침낭">침낭</option>
													<option value="매트">매트</option>
													<option value="식기">식기</option>
													<option value="코펠">코펠</option>
													<option value="프라이팬">프라이팬</option>
													<option value="프라이팬">컵/머그컵</option>
													<option value="프라이팬">취사도구</option>
													<option value="프라이팬">화로/버너</option>
													<option value="프라이팬">버너/스토브</option>
													<option value="프라이팬">화로대</option>
													<option value="프라이팬">난로</option>
													<option value="프라이팬">화로/버너(소품)</option>
													<option value="프라이팬">캠핑소품</option>
													<option value="프라이팬">가전기기</option>
													<option value="프라이팬">랜턴/손전등</option>
													<option value="프라이팬">아이스박스/쿨러</option>
													<option value="프라이팬">수납박스/케이스</option>
													<option value="프라이팬">캠핑소품</option>
												</select>	
												
											</div>
										</div>
										
										<div class="col-md-6">
											<div class="form-group">
												<label>브랜드 :</label>
												<!-- <input type="text" class="form-control" id="brand" name="brand" placeholder="브랜드"> -->
												<select name="brand" class="custom-select form-control" >
													<option value="">--옵션을선택하세요--</option>
													<option value="스노우">스노우</option>
													<option value="노스페이스">노스페이스</option>
													<option value="블랙야크">블랙야크</option>
												</select>
																
											</div>
										</div>
										
										<div class="col-md-6">
											<div class="form-group">
												<label>상품명 :</label>
												<input type="text" class="form-control" id="goodsName" name="goodsName" placeholder="상품명">
												<!-- <select name="optionDataType" class="custom-select form-control" >
													<option value="">--옵션을선택하세요--</option>
													<option value="#">test 1</option>
													<option value="#">test 2</option>
												</select> -->
												
											</div>
										</div>
										
										<!-- <div class="col-md-6">
											<div class="form-group">
												<label>속성이름 :</label>
												<input type="text" class="form-control" id="optionName" name="optionName" placeholder="속성이름">
											</div>
										</div> -->
										
										
										
								<!-- 		<div class="col-md-6">
											<div class="form-group">
												<label>속성값 :</label>
												<input type="text" class="form-control" id="optionValue" name="optionValue" placeholder="속성값">
												<select class="custom-select form-control" >
													<option value="">--옵션을선택하세요--</option>
													<option value="#">옵션1</option>
													<option value="#">옵션2</option>
												</select>				
											
											</div>
										</div>
										
										<div class="col-md-6">
											<div class="form-group">
												<label>옵션값 :</label>
												<input type="text" class="form-control" id="optionSeletionValue" name="optionSeletionValue" placeholder="옵션값">
												<select class="custom-select form-control" >
													<option value="">--옵션을선택하세요--</option>
													<option value="#">옵션1</option>
													<option value="#">옵션2</option>
												</select>												
											
											</div>
										</div>
										
										<div class="col-md-6">
											<div class="form-group">
												<label>상세설명 :</label>
												<input type="text" class="form-control" id="detail" name="detail" placeholder="상세설명">
											</div>
										</div>
										
										<div class="col-md-6">
											<div class="form-group">
												<label>대여가격 :</label> 
												<input type="text" class="form-control" id="rentPrice" name="rentPrice" placeholder="대여가격">
											</div>
										</div>
										
										<div class="col-md-6">
											<div class="form-group">
												<label>입고 :</label>
												<input type="text" class="form-control" id="goodsIn" name="goodsIn" placeholder="입고">
											</div>
										</div>
										
										<div class="col-md-6">
											<div class="form-group">
												<label>입고일자 :</label>
												<input type="text" class="form-control date-picker" id="goodsInDate" name="goodsInDate" placeholder="입고일자">
											</div>
										</div> -->
								</div>
								
						<!-- 상품등록, 취소 버튼 -->	
						<div class="btn-list">
							<button type="submit" id="goodsRegister" name="goodsRegister" value="상품등록" class="btn btn-lg btn-primary" >상품등록</button>
							<button type="reset" id="goodsRegister" name="goodsRegister" value="입력초기화" class="btn btn-secondary btn-lg" >초기화</button>
							<button type="button" class="btn btn-secondary btn-lg">취소</button>
						</div>	
				
							</form>
							</section>
							
					</div>
				</div> 
			</div>
				<!-- 상품 등록 페이지 끝 -->	
	
		<!-- js -->
		<jsp:include page="/WEB-INF/views/modules/adminJS.jsp" />

</body>
</html>