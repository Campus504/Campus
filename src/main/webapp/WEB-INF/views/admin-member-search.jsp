<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- Basic Page Info -->
<meta charset="UTF-8">
<title>Campus - 회원정보</title>

<!-- Site favicon -->
<link rel="apple-touch-icon" sizes="180x180"
	href="/campus/resources/vendors/images/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="/campus/resources/vendors/images/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="/campus/resources/vendors/images/favicon-16x16.png">

<!-- Mobile Specific Metas -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap"
	rel="stylesheet">
<!-- CSS -->
<link rel="stylesheet" type="text/css"
	href="/campus/resources/vendors/styles/core.css">
<link rel="stylesheet" type="text/css"
	href="/campus/resources/vendors/styles/icon-font.min.css">
<link rel="stylesheet" type="text/css"
	href="/campus/resources/src/plugins/datatables/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" type="text/css"
	href="/campus/resources/src/plugins/datatables/css/responsive.bootstrap4.min.css">
<link rel="stylesheet" type="text/css"
	href="/campus/resources/vendors/styles/style.css">

<!-- Global site tag (gtag.js) - Google Analytics -->
<!-- 구글 태그 / 활용해보고 삭제 예정입니다 -->
<style>
.justify-content-center {
	display: flex;
}

.justify-content-center>li {
	margin-left: 30px;
}

.justify-content-center>li>a {
	font-weight: bold;
	width: 40px;
	height: 10px;
	padding: 10px 25px;
	border-radius: 15px;
	color: #1b00ff;
	transition: 0.3s;
}

.justify-content-center>li>a:hover {
	background-color: #1b00ff;
	color: #fff;
}
</style>
<script src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
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
								<h4>회원정보</h4>
							</div>
							<nav aria-label="breadcrumb" role="navigation">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="admin-main">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">회원정보</li>
								</ol>
							</nav>
						</div>

						<div class="col-md-6 col-sm-12 text-right">
							<div class="dropdown">
								<a class="btn btn-primary dropdown-toggle" href="#"
									role="button" data-toggle="dropdown"> Oct 2022 </a>

								<div class="dropdown-menu dropdown-menu-right">
									<a class="dropdown-item" href="#">기능1)Export List </a> <a
										class="dropdown-item" href="#">기능2)Policies </a> <a
										class="dropdown-item" href="#">기능3)View Assets </a> <a
										class="dropdown-item" href="#">기능4)View Assets </a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- 페이지 해더 종료 입니다. 없으면 하단 컨텐츠가 모두 깨집니다!! -->


				<div class="pd-20 card-box mb-30">

					<div class="clearfix">
						<h4 class="text-blue h4">관리자페이지를 통해 회원 정보를 확인 할 수 있는 리스트입니다.</h4>
						<p class="mb-30">"${ search }" 검색 결과 입니다</p>
					</div>

					<div class="card-box mb-30">
						<div class="pd-20">
							<h4 class="text-blue h4"></h4>
						</div>

						<div class="pb-20">
							<div id="DataTables_Table_3_wrapper"
								class="dataTables_wrapper dt-bootstrap4 no-footer">
								<div class="row">
									<div class="col-sm-12 col-md-6">
										<div class="dataTables_length" id="DataTables_Table_3_length">
											<label>Show <select name="DataTables_Table_3_length"
												aria-controls="DataTables_Table_3"
												class="custom-select custom-select-sm form-control form-control-sm">
													<option value="10">10</option>
													<option value="25">25</option>
													<option value="50">50</option>
													<option value="-1">All</option>
											</select> entries
											</label>
										</div>
									</div>
									<div class="col-sm-12 col-md-6">
										<div class="dataTables_filter">
											<form action="admin-member-search.action" method="post">
												<label>Search: <input type="search" name="search"
													class="form-control form-control-sm" placeholder="Enter"
													aria-controls="DataTables_Table_3">
												</label>
											</form>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-12">

										<form action="" method="">
											<table
												class="checkbox-datatable table nowrap dataTable no-footer dtr-inline"
												id="DataTables_Table_3" role="grid"
												aria-describedby="DataTables_Table_3_info">
												<thead>
													<tr role="row">
														<th class="dt-body-center sorting_disabled" rowspan="1"
															colspan="1" aria-label="">
															<div class="dt-checkbox">
																<input type="checkbox" name="select_all" value="1"
																	id="example-select-all"> <span
																	class="dt-checkbox-label"></span>
															</div>
														</th>
														<th class="sorting_asc" tabindex="0" rowspan="1"
															colspan="1">아이디</th>
														<th class="sorting" tabindex="0" rowspan="1" colspan="1">권한
															이름</th>
														<th class="sorting" tabindex="0" rowspan="1" colspan="1">권한
															부여</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="member" items="${ members }">
														<tr role="row" class="odd">
															<td class=" dt-body-center" tabindex="0">
																<div class="dt-checkbox">
																	<input type="checkbox" name="member"
																		value="member.memberId"> <span
																		class="dt-checkbox-label"></span>
																</div>
															</td>

															<td>${ member.memberId }</td>
															<td id="member-admin-${ member.memberId }">${ member.admin }</td>
															<td>
																<div class="form-check">
																	<label class="form-check-label" for="flexRadioDefault2">
																		<input type="button" class="change-admin"
																		style="cursor:" data-memberId="${member.memberId}"
																		name="Admin" value="Admin" />
																	</label>
																</div>

																<div class="form-check">
																	<label class="form-check-label" for="flexRadioDefault2">
																		<input type="button" class="change-member2"
																		style="cursor:" data-memberId2="${member.memberId}"
																		name="Member" value="Member" />
																	</label>
																</div>
															</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</form>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-12 col-md-5">
										<div class="dataTables_info" id="DataTables_Table_3_info"
											role="status" aria-live="polite">1-10 of
											${member.memberId} entries</div>
									</div>

									<!-- paging -->
									<jsp:include
										page="/WEB-INF/views/include/admin-search-paging.jsp" />
									<!-- end of paging -->

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- js -->
	<jsp:include page="/WEB-INF/views/modules/adminJS.jsp" />
	<script type="text/javascript">
		$(function() {
			/* $(".change-member2").on('click', function(event) {
				var memberId = $(this).attr('data-memberId2');
				$.ajax({
					"url" : memberId + "/member-change2",
					"type" : "POST",
					"data" : "memberId=" + memberId,
					"success" : function(data) {
						
						location.href = memberId + "/member-change2";
						alert(memberId + "님을 회원으로 변경했습니다");
					},
					"error" : function(request, status, error) {
						alert("error");
						$('#member-admin-' + memberId).load('#DataTables_Table_3')
					}
				});
			}); */

			$(".change-admin").on('click', function(event) {
				var memberId = $(this).attr('data-memberId')

				location.href = memberId + "/admin-change";
				alert(memberId + "님을 관리자로 변경했습니다")

			});

			$(".change-member2").on('click', function(event) {
				var memberId = $(this).attr('data-memberId2')
				location.href = memberId + "/member-change";
				alert(memberId + "님을 회원으로 변경했습니다")

			})
		});
	</script>
	<!-- end of js -->
</body>
</html>