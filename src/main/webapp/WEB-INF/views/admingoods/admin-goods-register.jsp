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
								<h4>상품등록</h4>
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
							 		<form action="admin-goods-register.action" name="admin-goods-register-form" method="post" modelAttribute="memberDto" enctype="multipart/form-data">
									
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label>1. 상품분류(대카테고리) :</label>
												<select name=category class="custom-select form-control">
													
													<option value="">--옵션을선택하세요(선택불가)--</option>
													<option value="텐트/타프">텐트/타프</option>
													<!-- <option value="텐트">텐트</option>
													<option value="타프">타프</option>
													<option value="텐트/타프(소품)">텐트/타프(소품)</option> -->
													
													<option value="테이블/체어">테이블/체어</option>
													<!-- <option value="테이블">테이블</option>
													<option value="체어">체어</option> -->
													
													<option value="침낭/매트">침낭/매트</option>
													<!-- <option value="침낭">침낭</option>
													<option value="매트">매트</option>
													<option value="매트">야전침대</option>
													<option value="매트">베개/해먹</option>
													<option value="매트">소품</option> -->
													
													<option value="식기">식기</option>
													<!-- <option value="코펠">코펠</option>
													<option value="프라이팬">프라이팬</option>
													<option value="컵/머그컵">컵/머그컵</option>
													<option value="취사도구">취사도구/양념통</option> -->
													
													<option value="화로/버너">화로/버너</option>
													<!-- <option value="버너/스토브">버너/스토브</option>
													<option value="화로대">화로대</option>
													<option value="난로">난로</option>
													<option value="화로/버너(소품)">화로/버너(소품)</option> -->
													
													<option value="캠핑소품">캠핑소품</option>
													<!-- <option value="가전기기">가전기기</option>
													<option value="랜턴/손전등">랜턴/손전등</option>
													<option value="아이스박스/쿨러">아이스박스/쿨러</option>
													<option value="수납박스/케이스">수납박스/케이스</option>
													<option value="기타소품">기타소품</option> -->
												
												</select>	
											</div>
										</div>
										
										<div class="col-md-6">
											<div class="form-group">
												<label>2. 브랜드 :</label>
												<!-- <input type="text" class="form-control" id="brand" name="brand" placeholder="브랜드"> -->
												<select name="brand" class="custom-select form-control" >
													<option value="">--브랜드선택(선택불가)--</option>
													<option value="snowline">snowline</option>
												</select>
																
											</div>
										</div>
										
										<div class="col-md-6">
											<div class="form-group">
												<label>3. 상품명 :</label>
												<input type="text" class="form-control" id="goodsName" name="goodsName" placeholder="상품명">
											</div>
										</div>
									</div>		
									
									<!-- 속성값을 받을 테이블 추가 -->
								<table class="checkbox-datatable table nowrap dataTable no-footer dtr-inline" id="options-table" role="grid" aria-describedby="DataTables_Table_3_info">
								<thead>
									<tr role="row">
										<th class="dt-body-center sorting_disabled" rowspan="1" colspan="1" aria-label="">
											<div class="dt-checkbox">
												<input type="checkbox" name="select_all" value="1" id="example-select-all"> 
												<span class="dt-checkbox-label"></span>
											</div>
										</th>
										<th class="sorting_asc" tabindex="0" rowspan="1" colspan="1">상품코드</th>
										<th class="sorting" tabindex="0" rowspan="1" colspan="1">상품분류</th>
										<th class="sorting" tabindex="0" rowspan="1" colspan="1">브랜드</th>
										<th class="sorting" tabindex="0" rowspan="1" colspan="1">상품명</th>
										
									</tr>
								</thead>
								<tbody>
									
								</tbody>
							</table>
									<!-- 속성값을 받을 테이블 추가 끗 -->
										
									<div class="footer-wrap pd-20 mb-20 card-box">
											<div class="form-group">
											<!-- Button trigger modal -->
												<button type="button" class="btn btn-success btn-lg btn-block" id="add-goods-property">속성추가</button>
											</div>
									</div>
								
						<!-- 상품등록, 취소 버튼 -->	
						<div class="btn-list">
							<button type="reset" id="goodsRegister" name="goodsRegister" value="초기화" class="btn btn-secondary btn-lg">초기화</button>
							<button type="submit" id="goodsRegister" name="goodsRegister" value="상품등록" class="btn btn-lg btn-primary" >상품등록</button>
							<button type="button" class="btn btn-secondary btn-lg">취소</button>
						</div>	
						
							</form>
							</section>
								
						</div>
					</div> 
				</div>
				<!-- 상품 등록 페이지 끝 -->	

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
								<!--
								<select name=category class="custom-select form-control">
									<option value="">--텐트/타프 (선택불가)--</option>
									<option value="텐트">텐트</option>
									<option value="타프">타프</option>
									<option value="텐트/타프(소품)">텐트/타프(소품)</option>
									
									<option value="">--테이블/체어 (선택불가)--</option>
									<option value="테이블">테이블</option>
									<option value="체어">체어</option>
									
									<option value="">--침낭/매트 (선택불가)--</option>
									<option value="침낭">침낭</option>
									<option value="매트">매트</option>
									<option value="야전침대">야전침대</option>
									<option value="베개/해먹">베개/해먹</option>
									<option value="소품">소품</option>
									
									<option value="">--식기 (선택불가)--</option>
									<option value="코펠">코펠</option>
									<option value="프라이팬">프라이팬</option>
									<option value="컵/머그컵">컵/머그컵</option>
									<option value="취사도구/양념통">취사도구/양념통</option>
									
									<option value="">--화로/버너 (선택불가)--</option>
									<option value="버너/스토브">버너/스토브</option>
									<option value="화로대">화로대</option>
									<option value="난로">난로</option>
									<option value="화로/버너(소품)">화로/버너(소품)</option>
									
									<option value="">--캠핑소품 (선택불가)--</option>
									<option value="가전기기">가전기기</option>
									<option value="랜턴/손전등">랜턴/손전등</option>
									<option value="아이스박스/쿨러">아이스박스/쿨러</option>
									<option value="수납박스/케이스">수납박스/케이스</option>
									<option value="기타소품">기타소품</option>
								</select>
								-->
							</div>
							
								
						<div class="btn-group btn-group-toggle" data-toggle="buttons">		
							<div class="form-group">
								<label>5. 속성자료형 (두가지선택) :</label>
								
								<label class="btn btn-outline-secondary active">
									<input type="radio" name="option_value_type" autocomplete="off" value="single" checked> 단일 값 
								</label>
								<label class="btn btn-outline-secondary">
									<input type="radio" name="option-value-type" autocomplete="off" value="selection"> 선택 값
								</label>
							
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
					        <button type="reset" id="goodsRegister" name="goodsRegister" class="btn btn-secondary" value="초기화">초기화</button>
					        <button type="button" id="add-goods-property-modal-confirm" class="btn btn-primary">속성저장</button>
					        <button type="button" id="add-goods-property-modal-cancel" class="btn btn-secondary">취소</button>
					      </div>
					    </div>
					  </div>
					</div>
				<!--  상품 속성 등록 팝업  / end of goods option registration modal -->
	
		<!-- js -->
		<jsp:include page="/WEB-INF/views/modules/adminJS.jsp" />


		<script type="text/javascript">
			$(function() {
				$('#add-goods-property').on('click', function(event) {
					$('#add-goods-property-modal').modal("show");
				});
				
				$('#add-goods-property-modal-cancel').on('click', function(event) {
					$('#add-goods-property-modal').modal("hide");
				});
				
				$('#add-goods-property-modal-confirm').on('click', function(event) {
					// 입력된 속성을 저장하는 코드 작성
					const option_name = $('input[name=option_name]').val();
					const option_value_type = $('input[name=option_value_type]:checked').val();
					const option_single_value = $('input[name=option_single_value]').val();
					const option_description = $('input[name=option_description]').val();
					
					// alert(option_name + " / " + option_value_type + " / " + option_single_value + " / " + option_description);
					const tr = `<tr role="row" class="odd">
						<td class=" dt-body-center" tabindex="0">
							<div class="dt-checkbox">
								<input type="checkbox" name="id[]" value="">
								<span class="dt-checkbox-label"></span>
							</div>
						</td>
					
						<td>` + option_name + `</td>
						<td>` + option_value_type + `</td>
						<td>` + option_single_value + `</td>
						<td>` + option_description + `</td>
			
					</tr>`
					
					$('#options-table tbody').append(tr)
					
					
					$('#add-goods-property-modal').modal("hide");
				});
				
			});
		</script>


</body>
</html>