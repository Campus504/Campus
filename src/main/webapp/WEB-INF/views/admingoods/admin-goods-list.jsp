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
	<title>Campus - 상품목록 </title>

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
								<h4>상품목록</h4>
							</div>
							<nav aria-label="breadcrumb" role="navigation">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="#">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">상품목록</li>
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
				<!-- 페이지 해더입니다. 없으면 하단 컨텐츠가 모두 깨집니다!! -->
				
			<!-- 상품 리스트 시작! -->
				<!-- table -->
				<div class="card-box mb-30">
					<div class="pd-20">
						<h4 class="text-blue h4">상품등록을 통해 등록된 상품을 확인 할 수 있는 페이지 입니다.</h4>
						<p class="mb-30">등록 된 상품 리스트를 확인하여 상품들의 현황을 확인하세요</p>
					</div>
					<div class="pb-20">
						<table class="table hover multiple-select-row data-table-export nowrap" id="goods-list-table">
							<thead>
								<tr>
									
									<th>상품이름</th>
									<th>상태</th>
									<th>브랜드</th>
									<th>상품분류</th>
									
									<th>입고등록</th>
									<th>속성보기</th> <!-- Modal Popup 상품 정보 수정 -->
									<th>상품삭제</th>
									
								</tr>
							</thead>
							
							<c:forEach  var="goods" items='${goods}' >
							<c:set var="i" value="${ i+1 }" />
							<input id="findRowNo${i}" style="display:none" value="${ goods.goodsCode }" />
							<tbody>
								
								<tr role="row" class="goodsCode-${ goods.goodsCode }" data-goodscode="${ goods.goodsCode }" style="background-color:rgb(255,255,255)" >

									<td>${ goods.goodsName }</td>
									<td>${ goods.status }</td>
									<td>${ goods.brand }</td>
									<td>${ goods.category }</td>
									
									<td><a href="admin-goods-register-in.action?goodsCode=${goods.goodsCode}&goodsName=${goods.goodsName}"><button type="submit" id="add-goods-option-list-modal-confirm" name="goodsRegisterList" value="입고등록" class="btn btn-lg btn-primary" >입고등록</button></a></td>
									<td><button type="button" class="btn btn-success btn-lg btn-block" id="show-goods-option-list" value="상품옵션보기">상품 옵션 보기</button></td>
									<td><button type="button" data-goodscode="${ goods.goodsCode }" class="btn btn-secondary btn-lg delete-goods" >상품삭제</button></td>
									
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				<!-- end of table -->
				
						</div>
					</div>
				</div>			

			<!-- 상품 속성 등록 팝업 / goods option registration modal -->	
			<div class="modal fade" id="goods-option-list-modal" tabindex="-1" aria-hidden="true">
			  <div class="modal-dialog modal-xl">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h3 class="modal-title fs-5">상품 속성 목록</h3>
			      </div>
			      	
			      	<!-- 데이터 테이블 만들기 -->			
					<div class="modal-body" style="width:100%; height:200px; overflow:auto">
						<form>
						
						<table class="checkbox-datatable table nowrap dataTable no-footer dtr-inline-block overflow-auto" id="goods-register-list-table" role="grid" aria-describedby="DataTables_Table_3_info">
							<thead>
									<tr role="row" >
										
										<th class="sorting" tabindex="0" rowspan="1" colspan="1">옵션이름</th>
										<th class="sorting" tabindex="0" rowspan="1" colspan="1">옵션설명</th>
										<th class="sorting" tabindex="0" rowspan="1" colspan="1">단일값/목록값</th> <!-- 확인 후 삭제 예정 -->
										
										<th class="sorting" tabindex="0" rowspan="1" colspan="1">옵션값</th> 		<!-- 확인 후 삭제 예정 -->
										
										<th class="sorting" tabindex="0" rowspan="1" colspan="1">속성수정</th>
										<th class="sorting" tabindex="0" rowspan="1" colspan="1">속성삭제</th>
										
									</tr>
								</thead>				
												
								<tbody id="goods-option-list-tbody">
								</tbody>
								
							</table>
						</form>
					</div>
				
			<!-- 모달 푸터 -->
			      <div class="modal-footer">
			        <!-- <button type="reset" id="goodsRegisterReset" name="goodsRegisterReset" class="btn btn-secondary" value="초기화">초기화</button> -->
					<!-- <button type="submit" id="goods-option-list-modal-confirm" name="goodsRegisterList" value="상품속성수정" class="btn btn-lg btn-primary" >속성수정</button> -->
			        <button type="button" id="goods-option-list-modal-cancel" name="goodsRegisterList" class="btn btn-secondary btn-lg" value="닫기">닫기</button>
			      </div>
			    </div>
			  </div>
			</div>
			
			<!--  상품 속성 등록 팝업 끗 / end of goods option registration modal -->
		
		<!-- js -->
		<jsp:include page="/WEB-INF/views/modules/adminJS.jsp" />
		<!-- end of js -->

		<!-- <script src="http://code.jquery.com/jquery-latest.min.js"></script> -->
		<!-- <script src="vendors/scripts/core.js"></script> -->

		<script src="/campus/resources/vendors/scripts/script.min.js"></script>
		<script src="/campus/resources/vendors/scripts/process.js"></script>
		<script src="/campus/resources/vendors/scripts/layout-settings.js"></script>
		<script src="/campus/resources/src/plugins/datatables/js/jquery.dataTables.min.js"></script>
		<script src="/campus/resources/src/plugins/datatables/js/dataTables.bootstrap4.min.js"></script>
		<script src="/campus/resources/src/plugins/datatables/js/dataTables.responsive.min.js"></script>
			<!-- buttons for Export datatable -->
		<script src="/campus/resources/src/plugins/datatables/js/dataTables.buttons.min.js"></script>
		<script src="/campus/resources/src/plugins/datatables/js/buttons.bootstrap4.min.js"></script>
		<script src="/campus/resources/src/plugins/datatables/js/buttons.print.min.js"></script>
		<script src="/campus/resources/src/plugins/datatables/js/buttons.html5.min.js"></script>
		<script src="/campus/resources/src/plugins/datatables/js/buttons.flash.min.js"></script>
		<script src="/campus/resources/src/plugins/datatables/js/pdfmake.min.js"></script>
		<script src="/campus/resources/src/plugins/datatables/js/vfs_fonts.js"></script>
		<!-- Datatable Setting js -->
		<script src="/vendors/scripts/datatable-setting.js"></script>
		
		<script type="text/javascript">
		$(function(){
			
			// 상품 속성 보기 모달에 대해서
			
			// 상품 속성 보기 팝업 열기
			$('#show-goods-option-list').on('click', function(event) {
				
				const goodsCode = $(this).parent().parent().data('goodscode');
			
				$('#goods-option-list-tbody').load("load-goods-option-list.action?goodsCode=" + goodsCode, function() {
					$('#goods-option-list-modal').modal('show');
				});
				
			});
			
			
			// 상품 속성 보기 팝업 숨기기
			$('#goods-option-list-modal-cancel').on('click', function(event) {
				$('#goods-option-list-modal').modal("hide");		
			});
			
			// 상품 속성 삭제하기
			$('#options-table').on('click', '.remove-option-btn', function(event) {		// th 삭제 버튼 클릭 시 row 리스트 삭제
				const ok = confirm('속성을 삭제할까요?');	// ok는 '속성을 삭제할까요?' 라는 confirm alert을 실행한다
				if (!ok) {  							// ok가 아닐때
					return;								// 실행한다
				}
				
				$(this).parent().parent().remove();  // 위에 호출되는 함수(this) parent 내에 parent까지 삭제
			});
			
			
			// 상품 상태 delect로 수정하기
			let goodsCode = null;
								
			$('[class*=delete-goods]').on('click', function(event) {

				const ok = confirm("상품상태를 수정하시겠습니까?");
				if (!ok)
					return;
				
				status = $(this).data('status');
						
				location.href = 'admin-goods-delete.action?status=' + status;
			});
			
			
		});
		
		
		</script>
		
</body>
</html>