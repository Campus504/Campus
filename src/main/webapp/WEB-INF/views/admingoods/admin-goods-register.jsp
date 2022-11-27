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

	</script>
	
</head>
<body>

	<!-- pre loader(페이지 진입 시 로딩바 보이기) -->
	<jsp:include page="/WEB-INF/views/modules/preLoader.jsp" />
	
	<!--  header -->
	<jsp:include page="/WEB-INF/views/modules/adminHeader.jsp" />
	
	<!--  sidebar -->
	<jsp:include page="/WEB-INF/views/modules/adminSidebar.jsp" />
	
	
	<!-- 페이지 시작 합니다 -->
	<div class="mobile-menu-overlay"></div>

	<div class="main-container">

		<div class="pd-ltr-20 xs-pd-20-10">
			<div class="min-height-200px">

				<!-- page header : all most -->
				<div class="page-header">
					<div class="row">
						<div class="col-sm-12">
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
						
					</div>
				</div>
		
				<!-- 상품 등록 페이지 시작 -->
				<div class="pd-20 card-box mb-30">
					<div class="clearfix">
						<h4 class="text-blue h4">Campus 에서 대여 될 상품을 등록 하세요.</h4>
						<p class="mb-30">상품 등록을 통해 대여 상품을 등록 합니다.</p>
					</div>
	
					<div class="wizard-content">
							<div class="content clearfix">								
								
								<section id="steps-uid-0-p-0" role="tabpanel" aria-labelledby="steps-uid-0-h-0" class="body current" aria-hidden="false">
							 		
							 		<!-- form error : action, id 수정 시 에러 -->
							 		<form action="admin-goods-register.action" id="admin-goods-register-form" method="post">
									
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label>1. 상품 분류 :</label>
												<select name=category class="custom-select form-control">
													<option value="">----텐트/타프(선택불가)----</option>
													<option value="텐트">텐트</option>
													<option value="타프">타프</option>
													<option value="텐트/타프(소품)">텐트/타프(소품)</option>
													
													<option value="">----테이블/체어(선택불가)----</option>
													<option value="테이블">테이블</option>
													<option value="체어">체어</option>
													
													<option value="">----침낭/매트(선택불가)----</option>
													<option value="침낭">침낭</option>
													<option value="매트">매트</option>
													<option value="야전침대">야전침대</option>
													<option value="베개/해먹">베개/해먹</option>
													<option value="소품">소품</option>
													
													<option value="">----식기(선택불가)----</option>
													<option value="코펠">코펠</option>
													<option value="프라이팬">프라이팬</option>
													<option value="컵/머그컵">컵/머그컵</option>
													<option value="취사도구/양념통">취사도구/양념통</option>
													
													<option value="">----화로/버너(선택불가)----</option>
													<option value="버너/스토브">버너/스토브</option>
													<option value="화로대">화로대</option>
													<option value="난로">난로</option>
													<option value="화로/버너(소품)">화로/버너(소품)</option>
													
													<option value="">----캠핑소품(선택불가)----</option>
													<option value="가전기기">가전기기</option>
													<option value="랜턴/손전등">랜턴/손전등</option>
													<option value="아이스박스/쿨러">아이스박스/쿨러</option>
													<option value="수납박스/케이스">수납박스/케이스</option>
													<option value="기타소품">기타소품</option>
												</select>
											</div>
										</div>
										
										<div class="col-md-6">
											<div class="form-group">
												<label>2. 브랜드 :</label>
												<!-- <input type="text" class="form-control" id="brand" name="brand" placeholder="브랜드"> -->
												<select name="brand" class="custom-select form-control" >
													<option value="">----브랜드선택(선택불가)----</option>
													<option value="snowline">snowline</option>
													<option value="Covea">Covea</option>
													<option value="Snowpeak">Snowpeak</option>
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
									
							<!-- optionValue Table -->
								<table class="checkbox-datatable table nowrap dataTable no-footer dtr-inline" id="options-table" role="grid" aria-describedby="DataTables_Table_3_info">

								<thead>
									<tr role="row">
										<th class="dt-body-center sorting_disabled" rowspan="1" colspan="1" aria-label="">
											<div class="dt-checkbox">
												<input type="checkbox" name="select_all" value="1" id="example-select-all"> 
												<span class="dt-checkbox-label"></span>
											</div>
										</th>
										<th>속성이름</th>
										<th>속성자료형</th>
										<th>속성값</th>
										<th>옵션값</th>
										<th>속성설명</th>
										
									</tr>
								</thead>


								<tbody>
								<!-- 속성의 리스트가 표시 되는 tbody -->
								</tbody>
								
								</table>
							    <!-- 속성값을 받을 테이블 추가 끗 -->
						
						<!-- 속성 추가 버튼 -->
						<div class="footer-wrap pd-20 mb-20 card-box">
							<div class="form-group">
							<!-- Button trigger modal -->
								<button type="button" class="btn btn-success btn-lg btn-block" id="add-goods-property">속성을 추가하세요</button>
							</div>
						</div>
								
						<!-- 상품등록, 취소 버튼 -->	
						<div class="btn-list">
							<button type="reset" id="goodsRegisterReset" name="goodsRegister" value="초기화" class="btn btn-secondary btn-lg">초기화</button>
							<button type="submit" id="goodsRegisterConfirm" name="goodsRegister" value="상품등록" class="btn btn-lg btn-primary">상품등록</button>
							<!-- <button type="button" class="btn btn-secondary btn-lg">취소</button> -->
						</div>	
						
							</form>
							</section>
								
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
								<label>5. 속성자료형 :</label> <!-- 속성에 대한 자료형을 다양하게 적용 가능 -->
								
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
							<label>7. 옵션값 :</label> <!-- ex) 색상속성에 따른 값. 색상=>노랑 -->
							<!-- <input type="text" class="form-control" id="category" name="category" placeholder="상품분류"> -->
								<select name=category class="custom-select form-control">
									<option value="">demoValue</option>
									<option value="">demoTable</option>
								</select>	
							</div>
						
						<div class="form-group">
							 <label>8. 속성설명 :</label> <!-- (상품상세정보, 이미지 or 텍스트 추가) 를 위한 공간 -->
							 <input type="text" class="form-control" name="option_description" placeholder="속성 설명을 입력하세요">

								</div>
					      </form>
				  	</div>
						      
					      <div class="modal-footer">
					        <!-- <button type="reset" id="goodsRegisterReset" name="goodsRegisterReset" class="btn btn-secondary" value="초기화">초기화</button> -->
					        <button type="button" id="add-goods-property-modal-confirm" class="btn btn-primary">저장</button>
					        <button type="button" id="add-goods-property-modal-cancel" class="btn btn-secondary">취소</button>
					      </div>
					    </div>
					  </div>
					</div>
			
					</div>
				</div>
				</div>
				<!--  상품 속성 등록 팝업 / end of goods option registration modal -->
	
		<!-- js -->
		<jsp:include page="/WEB-INF/views/modules/adminJS.jsp" />

		<script type="text/javascript">
			$(function() {
				$('#add-goods-property').on('click', function(event) {
					$('#add-goods-property-modal').modal("show");									// 상품 속성 팝업 열기
				});
				
				$('#add-goods-property-modal-cancel').on('click', function(event) {
					$('#add-goods-property-modal').modal("hide");									// 상품 속성 팝업 숨기기
				});
				
				$('#add-goods-property-modal-confirm').on('click', function(event) {
					// 입력된 속성을 저장하는 코드 작성
					const option_name = $('input[name=option_name]').val(); 						// option_name / 속성이름 입력
					const option_value_type = $('input[name=option_value_type]:checked').val();		// option_value_type / 속성자료형 입력
					const option_single_value = $('input[name=option_single_value]').val();			// option_single_value / 속성값 입력
					const option_description = $('input[name=option_description]').val();			// option_description / 속성설명 입력
					
					// alert(option_name + " / " + option_value_type + " / " + option_single_value + " / " + option_description);

					// 테이블에 들어갈 데이터 표시
					const tr = `<tr role="row" class="odd">
						<td class=" dt-body-center" tabindex="0">
							<div class="dt-checkbox">							
								<input type="checkbox" name="id[]" value="">
								<span class="dt-checkbox-label"></span>
							</div>
						</td>
					
						<td>` + option_name + `</td> 			// option_name : 속성이름 출력
						<td>` + option_value_type + `</td> 		// option_value_type : 속성자료형 출력
						<td>` + option_single_value + `</td> 	// option_single_value : 속성값 출력
						<td>` + "&nbsp;" + `</td>				// 테이블 빈공간
						<td>` + option_description + `</td> 	// option_description : 속성설명 출력
						<td>` + `<button type="button" class="btn btn-primary btn-sm remove-option-btn">삭제</button>` + `</td>	// td 내에 삭제 버튼 추가
			
					</tr>`
					
					$('#options-table tbody').append(tr)			// tr 의 데이터 options-table tbody 으로 저장
					
					$('#add-goods-property-modal').modal("hide");	// 상품 속성 팝업 숨기기
				});
				
				$('#options-table').on('click', '.remove-option-btn', function(event) {		// th 삭제 버튼 클릭 시 row 리스트 삭제
					const ok = confirm('속성을 삭제 할까요?');	// ok는 '속성을 삭제 할까요?' 라는 confirm alert 실행
					if (!ok) {  							// ok가 아닐때
						return;								// 실행
					}
					
					$(this).parent().parent().remove();  // 위에 호출 되는 함수(this) parent 내에 parent 까지 삭제
				});
				
				$('#goodsRegisterConfirm').on('click', function(event) {				// goodsRegisterConfirm 의 버튼을 클릭 하면 이하 이벤트 실행!
					event.preventDefault();												// 부모 태그로 이벤트 전달 되는 것을 방지
				
					$('#options-table tbody tr').each(function(idx, tr) {				// idx(배열의 인덱스), tr(option테이블의 데이터) 
						let option = '';												// option 변수 선언
						$.each([1, 2, 3, 5], function(idx, no) {						// tr
							option += ($(tr).find('td:eq(' + no + ')').text() + ",");	// tr 내에 td의 모든 데이터를 option에 주입
						});			
						option.trim(",");												// option 데이터의 마지막 "," 삭제
						
						$('#admin-goods-register-form').append("<input type='hidden' name='optionInputs', value='" + option + "'>") // option의 모든 데이터를 admin-goods-register-form 에 주입
						
					});
					
					$('#admin-goods-register-form')[0].submit();   // admin-goods-register-form의 데이터를 서버에 전송
					
					/* 사용하려고 했으나 위 방법으로 구현
					const formData = {};
					formData['category'] = $('select[name=category]').val();
					formData['brand'] = $('select[name=brand]').val();
					formData['goodsName'] = $('input[name=goodsName]').val();
					
					let options = ""
					$('#options-table tbody td').each(function(idx, td) {
						let option = '';
						$.each([1, 2, 3, 5], function(idx, no) {
							option += ($(tr).find('td:eq(' + no + ')').text() + ",");
						});
						options += option + "$";
						
					});
					formData["options"] =  options;
					// console.log(formData);
					
					const jsonFormData = JSON.stringify(formData);
					
					$.ajax({
						"url": "register-goods",
						"method": "post",
						"data": jsonFormData,
						// "dataType": "json",
						"success": function(data, status, xhr) {
							console.log(data);
						},
						"error": function(xhr, status, err) {
							console.log(err);
						}
						
					});
				    */
					
				});
			});
		</script>

</body>
</html>