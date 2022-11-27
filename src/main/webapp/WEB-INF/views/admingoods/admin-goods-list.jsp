<%@ page language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="enter" value=" " />
        

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
						
					</div>
				</div>
				<!-- 페이지 해더입니다. 없으면 하단 컨텐츠가 모두 깨집니다!! -->
				
			<!-- 상품 리스트 시작! -->
				<!-- table -->
				<div class="card-box mb-30">
					<div class="pd-20">
						<h4 class="text-blue h4">Campus 에서 대여 할 수 있는 상품 목록입니다.</h4>
						<p class="mb-30">Campus의 상품 리스트를 확인하여 상품들의 현황을 확인하세요.</p>
					</div>
					<div class="pb-20">
						<table class="table hover multiple-select-row data-table-export nowrap" id="goods-list-table">

							<thead>
								<tr class="table-active">
									
									<th>상태</th>
									<th>상품이름</th>
									<th>브랜드</th>
									<th>상품분류</th>
									
									<th>입고등록</th>
									<th>속성보기</th> <!-- Modal Popup 상품 정보 수정 -->
									
								</tr>
							</thead>
							
							<c:forEach  var="goods" items='${goods}' >
							<%-- <c:set var="i" value="${ i+1 }" />
							<input id="findRowNo${i}" style="display:none" value="${ goods.goodsCode }" /> --%>
												
							<tbody>
								<tr role="row" class="goodsCode-${ goods.goodsCode }" data-goodscode="${ goods.goodsCode }" style="background-color:rgb(255,255,255)" >
									<c:if test="${ goods.status eq 'active' }">
									<td>
									<button type="button" name="goodsCode" data-goodscodefordeleted="${ goods.goodsCode }" class="btn btn-warning btn-lg delete-goods" id="deleted-${ goods.goodsCode }">대여가능
									</button>
									</td>
									</c:if>

									<c:if test="${ goods.status eq 'deleted' }">
									<td>
									<button type="button" name="goodsCode" data-goodscodeforactive="${ goods.goodsCode }" class="btn btn-success btn-lg active-goods" id="active-${ goods.goodsCode }">대여불가
									</button>
									</td>
									</c:if>
									
									<td>${ goods.goodsName }</td>
									<td>${ goods.brand }</td>
									<td>${ goods.category }</td>
									
									<td><a href="admin-goods-register-in.action?goodsCode=${goods.goodsCode}&goodsName=${goods.goodsName}"><button type="submit" id="add-goods-option-list-modal-confirm" name="goodsRegisterList" value="입고등록" class="btn btn-lg btn-primary" >입고등록</button></a></td>
									<td><button type="button" class="btn btn-success btn-lg btn-block show-goods-option-list" id="show-goods-option-list" value="상품옵션보기">상품 옵션 보기</button></td>
								</tr>
							</c:forEach>
							</tbody>
							<!-- 대여가능은 첫번째 tbody, 대여불가능은 두번째 tbody로 배치하고 싶음 -->		
							<%-- <thead>
								<tr class="table-active">
									
									<th>상태</th>
									<th>상품이름</th>
									<th>브랜드</th>
									<th>상품분류</th>
									
									<th>입고등록</th>
									<th>속성보기</th> <!-- Modal Popup 상품 정보 수정 -->
									
								</tr>
							</thead>
												
							<c:forEach  var="goods" items='${goods}' >
							<c:set var="i" value="${ i+1 }" />
							<input id="findRowNo${i}" style="display:none" value="${ goods.goodsCode }" />
												
							<tbody>
								
								<tr role="row" class="goodsCode-${ goods.status }" data-goodscode="${ goods.goodsCode }" style="background-color:rgb(255,255,255)" >
									
									<c:if test="${ goods.status eq 'active' }">
									<td>
									<button type="button" name="goodsCode" data-goodscodefordeleted="${ goods.goodsCode }" class="btn btn-warning btn-lg delete-goods" id="deleted-${ goods.goodsCode }">대여가능
									</button>
									</td>
									</c:if>

									<c:if test="${ goods.status eq 'deleted' }">
									<td>
									<button type="button" name="goodsCode" data-goodscodeforactive="${ goods.goodsCode }" class="btn btn-success btn-lg active-goods" id="active-${ goods.goodsCode }">대여불가
									</button>
									</td>
									</c:if>
									
									<td>${ goods.goodsName }</td>
									<td>${ goods.brand }</td>
									<td>${ goods.category }</td>
									
									<td><a href="admin-goods-register-in.action?goodsCode=${goods.goodsCode}&goodsName=${goods.goodsName}"><button type="submit" id="add-goods-option-list-modal-confirm" name="goodsRegisterList" value="입고등록" class="btn btn-lg btn-primary" >입고등록</button></a></td>
									<td><button type="button" class="btn btn-success btn-lg btn-block show-goods-option-list" id="show-goods-option-list" value="상품옵션보기">상품 옵션 보기</button></td>
								</tr>

							</c:forEach>
							</tbody> --%>							
							
									</table>
								</div>
							</div>
							</div>
						</div>
					</div>			
				<!-- end of table -->

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
										<th>옵션이름</th>
										<th>옵션설명</th>
										<th>단일값/목록값</th>
										
										<th>옵션값</th> 
										
										<th>속성수정</th>
										<th>옵션삭제</th>
									</tr>
								</thead>				
												
								<tbody id="goods-option-list-tbody">
								</tbody>
								
							</table>
						</form>
					</div>
				
			<!-- modal footer -->
			      <div class="modal-footer">
			        <!-- <button type="reset" id="goodsRegisterReset" name="goodsRegisterReset" class="btn btn-secondary" value="초기화">초기화</button> -->
					<!-- <button type="submit" id="goods-option-list-modal-confirm" name="goodsRegisterList" value="상품속성수정" class="btn btn-lg btn-primary" >속성수정</button> -->
			        <button type="button" id="goods-option-list-modal-cancel" name="goodsRegisterList" class="btn btn-secondary btn-lg" value="닫기">닫기</button>
			      </div>
			    </div>
			  </div>
			</div>
			<!--  상품 속성 등록 팝업 끗 / end of goods option registration modal -->
			
			<!-- 상품 속성 수정 팝업 / goods option registration modal -->	
			<div class="modal fade" id="goods-option-edit-modal" tabindex="-1" aria-hidden="true">
			  <div class="modal-dialog modal-xl">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h3 class="modal-title fs-5">상품 속성 수정</h3>
			      </div>
			      	
			      	<!-- 데이터 테이블 만들기 -->			
					<div class="modal-body" style="width:100%; height:200px; overflow:auto">
						
						<form action="goods-option-edit.action" id="goods-option-edit-form" method="post">
						<input type="hidden" name="optionNo" value="">
						
						<table class="checkbox-datatable table nowrap dataTable no-footer dtr-inline-block overflow-auto" id="goods-register-edit-table" role="grid" aria-describedby="DataTables_Table_3_info">
							<thead>
								<tr role="row" >
									<th>속성이름</th>
									<th>속성설명</th>
									<th>단일값/목록값</th>
									<th>옵션값</th> 
								</tr>
							</thead>								
								<tr role="row" data-optionno="${ option.optionNo }" >
									<td><input type="text" class="form-control" id="optionName" name="optionName" placeholder="옵션 이름" value="${ option.optionName }"></td>
									<td><input type="text" class="form-control" id="optionDesc" name="optionDesc" placeholder="옵션 설명" value="${ option.optionDesc }"></td>
									<td><input type="text" class="form-control" id="optionDataType" name="optionDataType" placeholder="옵션 데이터 타입" value="${ option.optionDataType }" readonly></td>
									<td><input type="text" class="form-control" id="optionValue" name="optionValue" placeholder="옵션값" value="${ option.optionValue }"></td>
								</tr>
							</table>
						</form>
					</div>
				
			<!-- modal footer -->
			      <div class="modal-footer">
			        <!-- <button type="reset" id="goodsRegisterReset" name="goodsRegisterReset" class="btn btn-secondary" value="초기화">초기화</button> -->
					<button type="button" id="goods-option-edit-modal-cancel" class="btn btn-lg btn-secondary">닫기</button>
			        <button type="button" id="goods-option-edit-modal-confirm" class="btn btn-primary btn-lg">수정</button>
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
		<!-- <script src="/vendors/scripts/datatable-setting.js"></script> -->
		
		<script type="text/javascript">
		$(function(){
			
			// 상품 속성 보기 팝업 열기
			/* $('#show-goods-option-list').on('click', function(event) { */
			$('.show-goods-option-list').on('click', function(event) {
				const goodsCode = $(this).parent().parent().data('goodscode');
			
				$('#goods-option-list-tbody').load("load-goods-option-list.action?goodsCode=" + goodsCode, function() {
					$('#goods-option-list-modal').modal('show');
				});
			});
			
			// 상품 속성 보기 팝업 숨기기
			$('#goods-option-list-modal-cancel').on('click', function(event) {
				$('#goods-option-list-modal').modal("hide");
			});
			
			// 상품속성보기 팝업 내에 수정 팝업 열기
			$('#goods-option-list-modal').on('click', 'a.edit-option-in-modal', function() {
				
				// 데이터 표시 
				const tr = $(this).parent().parent();
				// const optionNo = $(this).data('optionno');
				// const tr = $('#goods-option-list-modal').find('tr[data-optionno=' + optionNo + ']')
				
				// 목록 모달의 선택된 행 (tr)의 데이터 읽기 
				tds = tr.find('td');
				const optionName = $(tds[0]).text();
				const optionDesc = $(tds[1]).text();
				const optionDataType = $(tds[2]).text();
				const optionValue = $(tds[3]).text();
				
				// 목록에서 읽은 데이터를 수정 모달의 입력요소에 저장 
				$('#goods-option-edit-modal input[name=optionNo]').val($(this).data('optionno'));
				$('#goods-option-edit-modal #optionName').val(optionName);
				$('#goods-option-edit-modal #optionDesc').val(optionDesc);
				$('#goods-option-edit-modal #optionDataType').val(optionDataType);
				$('#goods-option-edit-modal #optionValue').val(optionValue);
				
				// 모달 보여주기 
				$('#goods-option-edit-modal').modal('show');
			});
			
			// 속성 수정 모달 닫기 버튼 처리 
			$('#goods-option-edit-modal-cancel').on('click', function(event) {
				$('#goods-option-edit-modal form')[0].reset();
				$('#goods-option-edit-modal').modal('hide');
			});
			
			// 속성 수정 모달 수정 버튼 처리 
			$('#goods-option-edit-modal-confirm').on('click', function(event) {
				
				//사용자가 입력한 데이터를 전송 가능한 형식으로 변경 
				const formData = $('#goods-option-edit-modal form').serialize();

				// 서버에 ajax 요청 
				$.ajax({
					"url": "update-goods-option.action",
					"method": "post",
					"data": formData,
					"success": function(data, status, xhr) {
						
						// 속성 수정 모달의 입력 요소에서 사용자가 수정한 값 읽기 
						const optionNo = $('#goods-option-edit-modal input[name=optionNo]').val();
						const optionName = $('#goods-option-edit-modal #optionName').val();
						const optionDesc = $('#goods-option-edit-modal #optionDesc').val();
						// const optionDataType = $('#goods-option-edit-modal #optionDataType').val();
						const optionValue = $('#goods-option-edit-modal #optionValue').val();
						
						// 속성 목록 모달의 수정 선택된 행의 값을 변경 
						const tr = $('#goods-option-list-modal tr[data-optionno=' + optionNo + ']');
						tds = tr.find('td');
						
						$(tds[0]).text(optionName);
						$(tds[1]).text(optionDesc);
						// $(tds[2]).text(optionDataType);
						$(tds[3]).text(optionValue);
				
						$('#goods-option-edit-modal').modal('hide');	
					},
					"error": function(xhr, status, data){
						alert('속성 수정 실패');
					}
				});
			});
			
			// 상품 속성 삭제
			$('#options-table').on('click', '.remove-option-btn', function(event) {		// th 삭제 버튼 클릭 시 row 리스트 삭제

				const ok = confirm('속성을 삭제할까요?');	// ok는 '속성을 삭제할까요?' 라는 confirm alert을 실행한다
				if (!ok)   							// ok가 아닐때
					return;								// 실행한다
				
				$(this).parent().parent().remove();  // 위에 호출되는 함수(this) parent 내에 parent까지 삭제
			});
			
			// 상품 상태 deleted로 수정
			let goodsCode = null;
								
			$('.delete-goods').on('click', function(event) {
				
				var goodsCode = $(this).attr('data-goodscodefordeleted');
				const ok = confirm("상품상태를 Deleted로 수정하시겠습니까?");
				if (!ok)
					return;
				
				/* alert(goodsCode); */
				
				location.href = 'admin-goods-delete.action?goodsCode=' + goodsCode;
			});
			
			// 상품 상태 active로 수정
			$('.active-goods').on('click', function(event) {

				var goodsCode = $(this).attr('data-goodscodeforactive');
				const ok = confirm("상품상태를 Active로 수정하시겠습니까?");
				if (!ok)
					return;

				/* alert(goodsCode); */
				
				location.href = 'admin-goods-active.action?goodsCode=' + goodsCode;
			});
			
		});
		</script>
		
</body>
</html>