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
				
					
			<!-- 상품 리스트 시작! -->
				<!-- table -->
				<div class="card-box mb-30">
					<div class="pd-20">
						<h4 class="text-blue h4">관리자페이지 내에 상품 등록을 통해 등록된 상품을 확인 할 수 있는 페이지 입니다.</h4>
						<p class="mb-30">등록 된 상품 리스트를 확인하여 상품들의 현황을 확인 해주세요.</p>
					</div>
					<div class="pb-20">
						<table class="table hover multiple-select-row data-table-export nowrap" id="goods-register-list-table">
							<thead>
								<tr>
									
									<th>상품이름</th>
									<th>브랜드</th>
									<th>상품분류</th>
									
									<th>옵션보기</th> <!-- Modal Popup 상품 정보 수정 -->
									<th>상품 삭제</th>
									
								</tr>
							</thead>
							
							<c:forEach  var="goods" items='${goods}' >
							<c:set var="i" value="${ i+1 }" />
							<input id="findRowNo${i}" style="display:none" value="${ goods.goodsCode }" />
							<tbody>
								
								<tr role="row" class="goodsCode-${ goods.goodsCode }" data-goodscode="${ goods.goodsCode }" style="background-color:rgb(255,255,255)" >

									<td>${ goods.goodsName }</td>
									<td>${ goods.brand }</td>
									<td>${ goods.category }</td>
									
									<td>
									
									<button type="button" class="btn btn-success btn-lg btn-block" id="add-goods-property">삼품 옵션 보기</button></td>
									
									<td><button type="button" data-goodscode="${ goods.goodsCode }" class="btn btn-secondary btn-lg delete-goods" >취소</button></td>
									
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
						<div class="modal fade" id="add-goods-property-modal" tabindex="-1" aria-hidden="true">
						  <div class="modal-dialog">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h3 class="modal-title fs-5">상품 속성 입력</h3>
						      </div>
						      <div class="modal-body">
						      
						      <form>
						      
						      <div class="form-group">
								<label>4. 속성이름 :</label>
								<input type="text" class="form-control" name="option_name" placeholder="속성 이름을 입력하세요">
							</div>
							
								
						<div class="btn-group btn-group-toggle" data-toggle="buttons">		
							<div class="form-group">
								<label>5. 속성자료형 (두가지선택) :</label>
								
								<label class="btn btn-outline-secondary active">
									<input type="radio" name="option_value_type" autocomplete="off" value="single" checked> 단일 값 
								</label>
								
								<!-- <label class="btn btn-outline-secondary">
									<input type="radio" name="option-value-type" autocomplete="off" value="selection"> 선택 값
								</label> -->
							
							</div>
						</div>
						
						<div class="form-group">
							<label>6. 속성값 :</label>
								<input type="text" class="form-control" name="option_single_value" name="category" placeholder="옵션 값을 입력하세요">
							</div>
							
						<div class="form-group">
							<label>7. 옵션값(속성값에 따른 옵션값 추가예정) :</label>
							<!-- <input type="text" class="form-control" id="category" name="category" placeholder="상품분류"> -->
								<select name=category class="custom-select form-control">
									<option value="">--옵션을선택하세요--</option>
									<option value="optionSeletionValue">Test</option>
								</select>	
							</div>
						
						<div class="form-group">
							 <label>8. 속성설명(상품상세정보, 이미지 or 텍스트 추가):</label>
							 <input type="text" class="form-control" name="option_description" placeholder="속성 설명을 입력하세요">

								</div>
					      </form>
				  	</div>
						      
					      <div class="modal-footer">
					        <!-- <button type="reset" id="goodsRegisterReset" name="goodsRegisterReset" class="btn btn-secondary" value="초기화">초기화</button> -->
					        <button type="button" id="add-goods-property-modal-confirm" class="btn btn-primary">속성저장</button>
					        <button type="button" id="add-goods-property-modal-cancel" class="btn btn-secondary">취소</button>
					      </div>
					    </div>
					  </div>
					</div>
				<!--  상품 속성 등록 팝업 / end of goods option registration modal -->
		
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
		<script src="vendors/scripts/datatable-setting.js"></script>
		<script type="text/javascript">

		$(function(){
			
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

		});

		</script>
		
</body>
</html>