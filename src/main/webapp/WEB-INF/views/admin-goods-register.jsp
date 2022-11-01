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
									<a class="dropdown-item" href="#">기능1)Export List </a> 
									<a class="dropdown-item" href="#">기능2)Policies </a> 
									<a class="dropdown-item" href="#">기능3)View Assets </a>
									<a class="dropdown-item" href="#">기능4)View Assets </a>
								</div>
							</div>
						</div>
					</div>
				</div>
	
				<!-- 상품 등록 div 시작 -->
				<div class="pd-20 card-box mb-30">
					<div class="clearfix">
						<h4 class="text-blue h4">상품 정보를 입력하세요</h4>
						<p class="mb-30">등록 될 상품의 정보를 입력해주세요</p>				
					</div>
	
					<div class="wizard-content">
			
						<form action="admin-goods-register.action" method="post" class="tab-wizard wizard-circle wizard clearfix" role="application" id="steps-uid-0">
							
							<div class="content clearfix">								
								<section id="steps-uid-0-p-0" role="tabpanel" aria-labelledby="steps-uid-0-h-0" class="body current" aria-hidden="false">
							 
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label>상품분류 :</label>
												<!-- <input type="text" class="form-control" id="category" name="category" placeholder="상품분류"> -->
												<select class="custom-select form-control" >
													<option value="#">옵션1</option>
													<option value="#">옵션2</option>
													<option value="#">옵션3</option>
													<option value="#">옵션4</option>
													<option value="#">옵션5</option>
												</select>				
											</div>
										</div>
										
										<div class="col-md-6">
											<div class="form-group">
												<label>브랜드 :</label>
												<!-- <input type="text" class="form-control" id="brand" name="brand" placeholder="브랜드"> -->
												<select class="custom-select form-control" >
													<option value="#">옵션1</option>
													<option value="#">옵션2</option>
													<option value="#">옵션3</option>
													<option value="#">옵션4</option>
													<option value="#">옵션5</option>
												</select>				
											</div>
										</div>
										
										<div class="col-md-6">
											<div class="form-group">
												<label>속성이름 :</label>
												<input type="text" class="form-control" id="optionName" name="optionName" placeholder="속성이름">
											</div>
										</div>
										
										<div class="col-md-6">
											<div class="form-group">
												<label>속성자료형 :</label>
												<!-- <input type="text" class="form-control" id="optionDataType" name="optionDataType" placeholder="속성자료형"> -->
												<select class="custom-select form-control" >
													<option value="#">옵션1</option>
													<option value="#">옵션2</option>
													<option value="#">옵션3</option>
													<option value="#">옵션4</option>
													<option value="#">옵션5</option>
												</select>
											</div>
										</div>
										
										<div class="col-md-6">
											<div class="form-group">
												<label>속성값 :</label>
												<input type="text" class="form-control" id="optionValue" name="optionValue" placeholder="속성값">
												<select class="custom-select form-control" >
													<option value="#">옵션1</option>
													<option value="#">옵션2</option>
													<option value="#">옵션3</option>
													<option value="#">옵션4</option>
													<option value="#">옵션5</option>
												</select>				
											</div>
										</div>
										
										<div class="col-md-6">
											<div class="form-group">
												<label>옵션값 :</label>
												<input type="text" class="custom-select form-control" id="optionSeletionValue" name="optionSeletionValue" placeholder="옵션값">
												<select class="custom-select form-control" >
													<option value="#">옵션1</option>
													<option value="#">옵션2</option>
													<option value="#">옵션3</option>
													<option value="#">옵션4</option>
													<option value="#">옵션5</option>
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
										</div>
								
						<!-- 상품등록, 취소 버튼 -->	
						<div class="btn-list">
							<button type="submit" id="goodsRegister" name="goodsRegister" value="상품등록" class="btn btn-lg btn-primary" >상품등록</button> <!-- disable 추후 추가 예정 -->
							<button type="button" class="btn btn-secondary btn-lg" >취소</button> <!-- disable 추후 추가 예정 -->
						</div>		
								
								<!-- <input type="submit" id="goodsRegister" name="goodsRegister" value="상품등록" /> -->
										
									</div>
								</section>
							</div>
						</form>
					</div> 
				</div>
				<!-- 상품 등록 div 끝 -->	
				
				<div class="pd-20 card-box mb-30">
			
					<div class="clearfix">
						<h4 class="text-blue h4">관리자 페이지를 통해 등록된 상품을 확인 할 수 있는 리스트입니다.</h4>
						<p class="mb-30"> 상품 리스트를 확인해 주세요 </p>			
					</div>

				<div class="mb-9">
					
					<ul class="nav nav-links mb-3 mb-lg-2 mx-n3">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="#"> 전체주문 <span
								class="text-700 fw-semi-bold">(test)</span></a></li>
						<li class="nav-item"><a class="nav-link" href="#">텐트/타프<span
								class="text-700 fw-semi-bold">(test)</span></a></li>
						<li class="nav-item"><a class="nav-link" href="#">테이블/체어 <span
								class="text-700 fw-semi-bold">(test)</span></a></li>
						<li class="nav-item"><a class="nav-link" href="#">침낭/매트 <span
								class="text-700 fw-semi-bold">(test)</span></a></li>
						<li class="nav-item"><a class="nav-link" href="#">식기 <span
								class="text-700 fw-semi-bold">(test)</span></a></li>
						<li class="nav-item"><a class="nav-link" href="#">화로/버너 <span
								class="text-700 fw-semi-bold">(test)</span></a></li>
						<li class="nav-item"><a class="nav-link" href="#">캠핑소품 <span
								class="text-700 fw-semi-bold">(test)</span></a></li>
					</ul>
					
					<div id="products"
						data-list='{"valueNames":["customer","email","total-orders","total-spent","city","last-seen","last-order"],"page":10,"pagination":true}'>
						<div class="mb-4">
							<div class="row g-3">
								<div class="col-auto">
									
									<div class="search-box">
										<form class="position-relative" data-bs-toggle="search"
											data-bs-display="static">
											<input class="form-control search-input search" type="search"
												placeholder="Search customers" aria-label="Search" />
										</form>
									</div>
									
								</div>
								
								<div class="col-auto scrollbar overflow-hidden-y flex-grow-1">
									<div class="btn-group position-static" role="group">
										
										<div class="btn-group position-static text-nowrap">
											<button class="btn btn-phoenix-secondary px-7 flex-shrink-0"
												type="button" data-bs-toggle="dropdown"
												data-boundary="window" aria-haspopup="true"
												aria-expanded="false" data-bs-reference="parent">
												테스트필터<span class="fas fa-angle-down ms-2"></span>
											</button>
											<ul class="dropdown-menu">
												<li><a class="dropdown-item" href="#">상품명 1</a></li>
												<li><a class="dropdown-item" href="#">상품명 2</a></li>
												<li><a class="dropdown-item" href="#">상품명 3</a></li>
											</ul>
										</div>
										
									<button class="btn btn-phoenix-secondary px-7 flex-shrink-0">More filters </button>
									
									</div>
								</div>
								
								<div class="col-auto">
									<button class="btn btn-primary">
										<span class="fas fa-plus me-2"></span> 엑셀로변환
									</button>
									
								</div>
							</div>
						</div>
						<div class="mx-n4 px-4 mx-lg-n6 px-lg-6 bg-white border-top border-bottom border-200 position-relative top-1">
							<div class="table-responsive scrollbar mx-n1 px-1">
								<table class="table table-sm fs--1 mb-0">
									<thead>
										<tr>
											<th class="white-space-nowrap fs--1 align-middle ps-0">
												<div class="form-check mb-0 fs-0">
													<input class="form-check-input" type="checkbox" />
												</div>
											</th>
											<th class="sort align-middle pe-5" scope="col"
												data-sort="customer" style="width: 10%;"> 상품코드</th>
											<th class="sort align-middle pe-5" scope="col"
												data-sort="email" style="width: 10%;">상품카테고리</th>
											<th class="sort align-middle text-end" scope="col"
												data-sort="total-orders" style="width: 20%">상품브랜드</th>
											<th class="sort align-middle text-end ps-3" scope="col"
												data-sort="total-spent" style="width: 10%">상품명</th>
											<th class="sort align-middle ps-7" scope="col"
												data-sort="city" style="width: 10%;">상품수량</th>
											<th class="sort align-middle text-end" scope="col"
												data-sort="last-seen" style="width: 20%;">입고시간</th>
											<th class="sort align-middle text-end pe-0" scope="col"
												data-sort="last-order" style="width: 15%;">기타</th>
										</tr>
									</thead>
									
									<tbody class="list" id="table-latest-review-body">
										<tr
											class="hover-actions-trigger btn-reveal-trigger position-static">
											<td class="fs--1 align-middle ps-0 py-3">
												<div class="form-check mb-0 fs-0">
													<input class="form-check-input" type="checkbox" />
												</div>
											</td>
											<td class="customer align-middle white-space-nowrap pe-5"><a
												class="d-flex align-items-center" href="#!">
													<div class="avatar avatar-m">
														<img class="rounded-circle"
															src="../../../assets/img/team/32.png" alt="" />
													</div>
													<p class="mb-0 ms-3 text-1100 fw-bold">Carry Anna</p>
											</a></td>
											<td class="email align-middle white-space-nowrap pe-5"><a
												class="fw-semi-bold text-1100"
												href="mailto:annac34@gmail.com">annac34@gmail.com</a></td>
											<td
												class="total-orders align-middle white-space-nowrap fw-semi-bold text-end">89</td>
											<td
												class="total-spent align-middle white-space-nowrap fw-bold text-end ps-3">$
												23987</td>
											<td
												class="city align-middle white-space-nowrap text-900 ps-7">Budapest</td>
											<td
												class="last-seen align-middle white-space-nowrap text-700 text-end">34
												min ago</td>
											<td
												class="last-order align-middle white-space-nowrap text-700 text-end">Dec
												12, 12:56 PM</td>
										</tr>
										
											</tbody>
										</table>
									</div>
									
								</div>
							</div>
						</div>	
					</div>		
									
				</div>
			</div>
	
		<!-- js -->
		<jsp:include page="/WEB-INF/views/modules/adminJS.jsp" />

</body>
</html>