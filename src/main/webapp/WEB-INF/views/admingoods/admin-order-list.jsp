<%@ page language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="enter" value="
" />


<!DOCTYPE html>
<html>
<head>
	<!-- Basic Page Info -->
	<meta charset="UTF-8">
	<title>Campus - 주문목록 </title>

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
						<h4> 주문목록</h4>
					</div>
					<nav aria-label="breadcrumb" role="navigation">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="admin-main">Home</a></li>
							<li class="breadcrumb-item active" aria-current="page">주문목록</li>
						</ol>
					</nav>
				</div>
				
			</div>
		</div>
	</div>
	<!-- 페이지 해더 종료 입니다. 없으면 하단 컨텐츠가 모두 깨집니다!! -->
	
	<!-- 상품 리스트 시작! -->
	<div class="pd-20 card-box mb-30">

		<div class="clearfix">
			<h4 class="text-blue h4">회원들의 전체 주문 목록을 확인 할 수 있는 페이지 입니다.</h4>
			<p class="mb-30">클릭하여 상세 주문 정보를 확인 할 수 있습니다.</p>
		</div>

		<div class="card-box mb-30">
			<div class="pd-20">
				<h4 class="text-blue h4"></h4>
			</div>

			<div class="pb-20">
				<div id="DataTables_Table_3_wrapper"
					class="dataTables_wrapper dt-bootstrap4 no-footer">
					<div class="row">
					
							<div class="dataTables_filter">
								<form action="admin-goods-list-search.action" method="post">
									<label>검색하기: <input type="search" name="search"
										class="form-control form-control-sm" placeholder=" "
										aria-controls="DataTables_Table_3" >
									</label>
									<button type="submit" style="display:none;">
										<i class="bi bi-search"></i>
									</button>
								</form>
							</div>
						</div>
						<div class="row">
							<div class="col">
					<!-- 등록된 상품의 리스트 테이블 만들기 -->
							<table class="checkbox-datatable table nowrap dataTable no-footer dtr-inline" id="goods-register-list-table" role="grid" aria-describedby="DataTables_Table_3_info">
								
								<thead>
									<tr role="row" >
										
										<th>회원아이디</th>
										<th>주문일</th>
										<th>상품 수령일</th>
										<th>상품 반납일</th>
										<th>결제방법</th>
										
									</tr>
								</thead>
								
								<c:forEach  var="orderList" items='${orderList}' >
								<tbody>
								
									<tr role="row" class="orderNo-${ orderList.orderNo }" data-orderNo="${ orderList.orderNo }" >
										
										<td>${ orderList.memberId }</td>
										<td>${ orderList.orderDate }</td>
										<td>${ orderList.rentDate }</td>
										<td>${ orderList.returnDate }</td>
										<td>${ orderList.pay }</td>
									</tr>
								
								</tbody>
								</c:forEach>
								
							</table>

						</div>
					</div>
					
				</div>
			</div>
		</div>
		</div>
		</div>
		</div>
		<!-- 상품 리스트 ! -->	
		
		<!-- js -->
		<jsp:include page="/WEB-INF/views/modules/adminJS.jsp" />
		<!-- end of js -->

		<!-- <script src="http://code.jquery.com/jquery-latest.min.js"></script> -->
		<!-- <script src="vendors/scripts/core.js"></script> -->

		<script src="vendors/scripts/script.min.js"></script>
		<script src="vendors/scripts/process.js"></script>
		<script src="vendors/scripts/layout-settings.js"></script>
		<script type="text/javascript">

		$(function(){
			
		    

		});

		</script>
		
</body>
</html>