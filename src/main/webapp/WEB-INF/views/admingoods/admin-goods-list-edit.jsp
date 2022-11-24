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
	<title>Campus - 상품 정보 수정 </title>

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
	
	<style>
	
	</style>
	
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
						<h4> 상품 정보 수정</h4>
					</div>
					<nav aria-label="breadcrumb" role="navigation">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="admin-main">Home</a></li>
							<li class="breadcrumb-item active" aria-current="page">상품 정보 수정</li>
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
				<h4 class="text-blue h4">등록된 상품의 정보를 수정할 수 있는 페이지 입니다.</h4>
				<p class="mb-30">상품 정보를 수정한 후 [수정] 버튼을 눌러주세요.</p>
			</div>
		</div>	
				
		<div class="card-box mb-30">
		<div class="pd-20">
			<h4 class="text-blue h4"></h4>
		</div>
	
		<div class="row">
			<div class="col-sm-12">		

				<form action="admin-goods-list-edit.action" method="post" autocomplete="off">	
				<table class="checkbox-datatable table nowrap dataTable no-footer dtr-inline overflow-auto" id="goods-register-list-table" role="grid" aria-describedby="DataTables_Table_3_info">
					
					<thead>
						<tr role="row" >
					
							<th>상품명</th>
							<th>브랜드</th>
							<th>상품분류</th>
		
						</tr>
					</thead>
						
					<c:forEach  var="goods" items='${goods}' varStatus="status">
					<tbody>
						
						<tr role="row" class="goodsCode-${ goods.goodsCode }" data-goodscode="${ goods.goodsCode }" >
							
						<td><input name="goodsName" value="${ goods.goodsName }" /></td>
						<td><input name="brand" value="${ goods.brand }" /></td>
						<td><input name="category" value="${ goods.category }" /></td>
							
						<td><input name="optionValue" value="${ goods.optionValue }" /></td>
					</tr>
					
					</tbody>
					</c:forEach>						
							
					</table>	
				
				<!-- 상품등록, 취소 버튼 -->	
					<div class="btn-list">
						<button type="submit" id="goodsEditConfirm" name="goodsEditConfirm" class="btn btn-primary btn-sm" value="수정" >수정</button>
						<button type="button" class="btn btn-secondary btn-sm" value="취소" >취소</button>
					</div>		
				
					</form>
				<!-- 상품등록, 취소 버튼 종료 -->
				
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
		<script src="/campus/resources/vendors/scripts/script.min.js"></script>
		<script src="/campus/resources/vendors/scripts/process.js"></script>
		<script src="/campus/resources/vendors/scripts/layout-settings.js"></script>
		
		<script type="text/javascript">
		
/* 			var formObj = $("form[role='form']");
			  
			  $("#goodsEditConfirm").click(function(){
			   formObj.attr("action", "/admin-goods-list");
			   formObj.attr("method", "get")
			   formObj.submit();
			  });
			  
			  alert()
 */			
		
		
		</script>
		
</body>
</html>