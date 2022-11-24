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
	<title>Campus - 입고목록 </title>

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
						<h4> 입고목록 </h4>
					</div>
					<nav aria-label="breadcrumb" role="navigation">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="admin-main">Home</a></li>
							<li class="breadcrumb-item active" aria-current="page">입고목록</li>
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
			<h4 class="text-blue h4">관리자페이지 내에 입고등록을 통해 입고된 상품을 확인 할 수 있는 페이지 입니다.</h4>
			<p class="mb-30">입고등록 된 상품들의 현황을 확인하세요</p>
		</div>

		<div class="card-box mb-30">
			<div class="pd-20">
				<h4 class="text-blue h4"></h4>
			</div>

			<div class="pb-20">
				<div id="DataTables_Table_3_wrapper"
					class="dataTables_wrapper dt-bootstrap4 no-footer">
					
					<div class="row" style="margin-right: 100%;"></div>
					
					<!-- 등록된 상품의 리스트 테이블 만들기 -->
					<div class="row">
						<div class="col-sm-12">
							
							<form action="admin-goods-list.action" method="post">
							<table class="checkbox-datatable table nowrap dataTable no-footer dtr-inline overflow-auto" id="goods-register-list-table" role="grid" aria-describedby="DataTables_Table_3_info">
								
								<thead>
									<tr role="row" >
										
										<th>입고코드</th>
										<th>상품코드</th>
										
										<th>대여가격</th>
										<th>입고수량</th>
										<th>입고메모</th>
										<th>입고일자</th>
										
										<!-- <th>입고 정보 수정</th> -->
										<!-- <th>상품 삭제</th> -->
										
									</tr>
								</thead>
								
								<c:forEach  var="goodsregister" items='${goodsregisters}' varStatus="status">
								<%-- <c:set var="i" value="${ i+1 }" /> --%>
								<%-- <input id="findRowNo${i}" style="display:none" value="${ goodsregister.goodsCode }" /> --%>
								<tbody>
								
									<tr role="row" class="goodsCode-${ goodsregister.goodsCode }" data-goodscode="${ goodsregister.goodsCode }"  >
										
										<td>${ goodsregister.goodsCode }</td>
										<td>${ goodsregister.inCode }</td>
										
										<td>${ goodsregister.rentPrice }</td>
										<td>${ goodsregister.goodsIn }</td>
										<td>${ goodsregister.detail }</td>
										<td>${ goodsregister.goodsInDate }</td>
										
										<%-- <td><a href="admin-goods-edit.action?goodsCode=${goodsregister.goodsCode}"><i class="icon-copy fa fa-pencil" aria-hidden="true"></i></a></td> --%>
										<!-- <td><a href="admin-goods-list-edit.action"><i class="icon-copy fa fa-pencil" aria-hidden="true"></i></a></td> -->
										<%-- <td><a class="delete-goods" data-goodscode="${ goodsregister.goodsCode }"><i class="icon-copy fa fa-trash" aria-hidden="true" style="cursor:pointer"></i></a></td> --%>
									</tr>
									
								</tbody>
								</c:forEach>
								
							</table>
							</form>		

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

		<script src="/campus/resources/vendors/scripts/script.min.js"></script>
		<script src="/campus/resources/vendors/scripts/process.js"></script>
		<script src="/campus/resources/vendors/scripts/layout-settings.js"></script>
		<script type="text/javascript">

		/* $(function(){
			
			let rowNo = null;               // rowNo 는 null
			let rowNoBefore = null;         // rowNoBefore 는 null
			
				for(var n=2; n<=${i}; n++){
					
					if($('#findRowNo'+n).val()!=$( '#findRowNo'+(n-1)).val()){
						rowNo = $('#findRowNo'+n).val();
						rowNoBefore  =$('#findRowNo'+(n-1)).val();
						
						if( $('.goodsCode-'+rowNoBefore).css("background-color")=='rgb(255, 255, 255)' ){
							$('.goodsCode-'+rowNo).css("background-color","lightgray");
						}else if($('.goodsCode-'+rowNoBefore).css("background-color")!='rgb(255, 255, 255)'){
							$('.goodsCode-'+rowNo).css("background-color","rgb(255,255,255)");
						}
						}
					}
		    
			let goodsCode = null;
								
			$('[class*=delete-goods]').on('click', function(event) {

				const ok = confirm("등록된 상품을 삭제할까요?");
				if (!ok)
					return;
				
				goodsCode = $(this).data('goodscode');
				location.href = 'admin-goods-delete.action?goodsCode='+goodsCode;
				
			});

		}); */

		</script>
		
</body>
</html>