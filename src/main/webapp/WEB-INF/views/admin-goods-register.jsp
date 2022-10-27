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
<!-- end of header -->
	
<!--  sidebar -->
	<jsp:include page="/WEB-INF/views/modules/adminSidebar.jsp" />
<!--  end of sidebar -->
	
	<div class="mobile-menu-overlay"></div>

	<div class="main-container">
	
		<div class="pd-ltr-20 xs-pd-20-10">
			<div class="min-height-200px">
			
				<div class="pd-20 card-box mb-30">
					<div class="clearfix">
						<h4 class="text-blue h4">상품 등록</h4>
						<p class="mb-30">우리가 대여할 상품을 등록하는 페이지 </p>
					</div>
					<div class="wizard-content">
						<form class="tab-wizard wizard-circle wizard clearfix" role="application" id="steps-uid-0">
							
							<div class="content clearfix">
								<h5 id="steps-uid-0-h-0" tabindex="-1" class="title current">상품정보를 입력하세</h5><br><br>
								<section id="steps-uid-0-p-0" role="tabpanel" aria-labelledby="steps-uid-0-h-0" class="body current" aria-hidden="false">
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label>First Name :</label>
												<input type="text" class="form-control">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>Last Name :</label>
												<input type="text" class="form-control">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label>Email Address :</label>
												<input type="email" class="form-control">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>Phone Number :</label>
												<input type="text" class="form-control">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label>Select City :</label>
												<select class="custom-select form-control">
													<option value="">Select City</option>
													<option value="Amsterdam">India</option>
													<option value="Berlin">UK</option>
													<option value="Frankfurt">US</option>
												</select>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>Date of Birth :</label>
												<input type="text" class="form-control date-picker" placeholder="Select Date">
											</div>
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
	<script src="/campus/resources/vendors/scripts/core.js"></script>
	<script src="/campus/resources/vendors/scripts/script.min.js"></script>
	<script src="/campus/resources/vendors/scripts/process.js"></script>
	<script src="/campus/resources/vendors/scripts/layout-settings.js"></script>
	<script src="/campus/resources/src/plugins/apexcharts/apexcharts.min.js"></script>
	<script src="/campus/resources/src/plugins/datatables/js/jquery.dataTables.min.js"></script>
	<script src="/campus/resources/src/plugins/datatables/js/dataTables.bootstrap4.min.js"></script>
	<script src="/campus/resources/src/plugins/datatables/js/dataTables.responsive.min.js"></script>
	<script src="/campus/resources/src/plugins/datatables/js/responsive.bootstrap4.min.js"></script>
	<script src="/campus/resources/vendors/scripts/dashboard.js"></script>
</body>
</html>
