<%@ page language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
	<!-- Basic Page Info -->
	<meta charset="UTF-8">
	<title>Campus - 관리자 메인 페이지</title>

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
<!-- pre loader -->
	<jsp:include page="/WEB-INF/views/modules/preLoader.jsp" />
<!--  header -->
	<jsp:include page="/WEB-INF/views/modules/adminHeader.jsp" />
<!-- end of header -->
	

<!--  sidebar -->
	<jsp:include page="/WEB-INF/views/modules/adminSidebar.jsp" />
<!--  end of sidebar -->
	<div class="mobile-menu-overlay"></div>

	<div class="main-container">
	
		<!--  개별 페이지 내용은 여기에 작성하세 -->
	
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
