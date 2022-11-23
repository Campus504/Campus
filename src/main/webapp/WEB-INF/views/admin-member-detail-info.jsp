<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<!-- Basic Page Info -->
<meta charset="utf-8">
<title>Campus - 회원 상세 정보</title>

<!-- Site favicon -->
<link rel="apple-touch-icon" sizes="180x180"
	href="vendors/images/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="vendors/images/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="vendors/images/favicon-16x16.png">

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
	
<style>
.boardDeleted btn-rounded {
  background-color: blue;
}
</style>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async
	src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>
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
	<div class="pre-loader">
		<div class="pre-loader-box">
			<div class="loader-logo">
				<img src="vendors/images/deskapp-logo.svg" alt="">
			</div>
			<div class='loader-progress' id="progress_div">
				<div class='bar' id='bar1'></div>
			</div>
			<div class='percent' id='percent1'>0%</div>
			<div class="loading-text">Loading...</div>
		</div>
	</div>

	<!-- pre loader(페이지 진입 시 로딩바 보이기) -->
	<jsp:include page="/WEB-INF/views/modules/preLoader.jsp" />
	<!--  header -->
	<jsp:include page="/WEB-INF/views/modules/adminHeader.jsp" />
	<!-- end of header -->
	<!--  sidebar -->
	<jsp:include page="/WEB-INF/views/modules/adminSidebar.jsp" />
	<!-- end of sidebar -->

	<div class="mobile-menu-overlay"></div>

	<div class="main-container">
		<div class="pd-ltr-20 xs-pd-20-10">
			<div class="min-height-200px">
				<div class="page-header">
					<div class="row">
						<div class="col-md-6 col-sm-12">
							<div class="title">
								<h4>회원 상세 정보</h4>
							</div>
							<nav aria-label="breadcrumb" role="navigation">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.html">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">회원 상세 정보</li>
								</ol>
							</nav>
						</div>
						<div class="col-md-6 col-sm-12 text-right">
							<div class="dropdown">
								<a class="btn btn-primary dropdown-toggle" href="#"
									role="button" data-toggle="dropdown"> January 2018 </a>
								<div class="dropdown-menu dropdown-menu-right">
									<a class="dropdown-item" href="#">Export List</a> <a
										class="dropdown-item" href="#">Policies</a> <a
										class="dropdown-item" href="#">View Assets</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="pd-ltr-20 xs-pd-20-10">
					<div class="pd-20 card-box mb-30">
						<div class="clearfix mb-20">
							<div class="pull-left">
								<h3 class="text-blue h3">회원 상세 정보</h3>
							</div>
						</div>
						<div class="text" align="center">
							<div class="col-12 col-sm-auto flex-1">
								<h3>${member.memberId}</h3>
								&nbsp;
								<p class="text-800">이름 : ${member.memberName}</p>
								&nbsp;
								<p class="text-800">주소 : ${member.address}</p>
								&nbsp;
								<p class="text-800">이메일 : ${member.email}</p>
								&nbsp;
								<p class="text-800">전화번호 : ${member.phone}</p>
								&nbsp;
								<p class="text-800">
									가입 일자 :
									<fmt:formatDate value="${member.joinDate}" pattern="yyyy-MM-dd" />
								</p>
								&nbsp;
								<p class="text-800">권한 : ${member.admin}</p>
							</div>
						</div>
					</div>
				</div>
				<div class="pd-ltr-20 xs-pd-20-10">
					<div class="pd-20 card-box mb-30">
						<div class="clearfix mb-20">
							<div class="pull-left">
								<h3 class="text-blue h3">게시글</h3>
							</div>
						</div>
						<div class="col-12 col-xxl-8">
							<div class="mb-6">
								<div class="border-top border-bottom border-200"
									id="customerOrdersTable"
									data-list='{"valueNames":["order","total","payment_status","fulfilment_status","delivery_type","date"],"page":6,"pagination":true}'>
									<div class="table-responsive scrollbar">
										<table class="table table-sm fs--1 mb-0">
											<thead>
												<tr>
													<th class="sort white-space-nowrap align-middle ps-0 pe-3"
														scope="col" data-sort="order" style="width: 20%;">글
														번호</th>
													<th class="sort align-middle text-end pe-7" scope="col"
														data-sort="total" style="width: 20%;">카테고리</th>
													<th class="sort align-middle white-space-nowrap pe-3"
														scope="col" data-sort="payment_status" style="width: 20%;">제목</th>
													<th
														class="sort align-middle white-space-nowrap text-start pe-3"
														scope="col" data-sort="fulfilment_status"
														style="width: 20%;">작성 일자</th>
													<th
														class="sort align-middle white-space-nowrap text-start pe-3"
														scope="col" data-sort="fulfilment_status"
														style="width: 20%;">삭제</th>
												</tr>
											</thead>
											<tbody class="list" id="table-latest-review-body">
												<c:forEach var="board" items="${ boards }"
													varStatus="status">
													<c:if test="${ board.active eq 'TRUE' }">
														<tr
															class="hover-actions-trigger btn-reveal-trigger position-static">



															<td class="order align-middle white-space-nowrap ps-0"><a
																class="fw-semi-bold" style="font-size: 11pt" href="#!">${ board.boardNo }</a></td>
															<td class="total align-middle text-end fw-semi-bold pe-7" style="font-size: 11pt">${board.category}</td>
															<td
																class="payment_status align-middle white-space-nowrap text-start fw-bold text-700"><span
																class="badge badge-phoenix fs--2 badge-phoenix-success"><span
																	class="badge-label" style="font-size: 11pt"> ${board.title}</span><span
																	class="ms-1" data-feather="check"
																	style="height: 12.8px; width: 12.8px;"></span></span></td>
															<td
																class="fulfilment_status align-middle white-space-nowrap text-start fw-bold text-700"><span
																class="badge badge-phoenix fs--2 badge-phoenix-success"><span
																	class="badge-label" style="font-size: 11pt"><fmt:formatDate
																			value="${board.writeDate}" pattern="yyyy-MM-dd" /></span><span
																	class="ms-1" data-feather="check"
																	style="height: 12.8px; width: 12.8px;"></span></span></td>
															<td><input type="button" class="boardDeleted btn-rounded"
																style="height: 40px; width: 80px;"
																data-memberId="${board.memberId}"
																data-boardNo="${board.boardNo}" value="삭제"></td>
														</tr>
													</c:if>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="pd-ltr-20 xs-pd-20-10">
				<div class="pd-20 card-box mb-30">
					<div class="clearfix mb-20">
						<div class="pull-left">
							<h3 class="text-blue h3">주문 목록</h3>
						</div>
					</div>
					<div class="col-12 col-xxl-8">
						<div class="mb-6">
							<div class="border-200 border-top border-bottom"
								id="customerWishlistTable"
								data-list='{"valueNames":["products","color","size","price","quantity","total"],"page":5,"pagination":true}'>
								<div class="table-responsive scrollbar">
									<table class="table fs--1 mb-0">
										<thead>
											<tr>
												<th class="sort white-space-nowrap align-middle ps-0 pe-3"
													scope="col" data-sort="order" style="width: 15%;">주문번호</th>
												<th class="sort align-middle" scope="col" data-sort="color"
													style="width: 15%;">주문일자</th>
												<th class="sort align-middle" scope="col" data-sort="size"
													style="width: 15%;">대여일자</th>
												<th class="sort align-middle text-end" scope="col"
													data-sort="returnDate" style="width: 15%;">반납일자</th>
												<th class="sort align-middle text-end" scope="col"
													data-sort="amount" style="width: 15%;">수량</th>
												<th class="sort align-middle text-end" scope="col"
													data-sort="price" style="width: 15%;">총액</th>
												<th class="sort align-middle text-end" scope="col"
													data-sort="pay" style="width: 15%;">결제방식</th>
											</tr>
										</thead>
										<tbody class="list" id="customer-wishlist-table-body">
											<c:forEach var="orderList" items="${orderLists}"
												varStatus="status">
												<tr
													class="hover-actions-trigger btn-reveal-trigger position-static">
													<td class="order align-middle white-space-nowrap ps-0"><a
														class="fw-semi-bold" href="#!">${ status.count }</a></td>
													<td
														class="color align-middle white-space-nowrap fs--1 text-900">
														<fmt:parseDate var="orderDate1"
															value="${orderList.orderDate}" pattern="yyyy-MM-dd" /> <fmt:formatDate
															var="orderDate" value="${orderDate1}"
															pattern="yyyy-MM-dd" /> ${orderDate}
													</td>
													<td
														class="size align-middle white-space-nowrap text-700 fs--1 fw-semi-bold">
														<fmt:parseDate var="orderDate2"
															value="${orderList.rentDate}" pattern="yyyy-MM-dd" /> <fmt:formatDate
															var="orderDate3" value="${orderDate2}"
															pattern="yyyy-MM-dd" /> ${orderDate3}
													</td>
													<td
														class="price align-middle text-900 fs--1 fw-semi-bold text-end">
														<fmt:parseDate var="orderDate4"
															value="${orderList.returnDate}" pattern="yyyy-MM-dd" />
														<fmt:formatDate var="orderDate5" value="${orderDate4}"
															pattern="yyyy-MM-dd" /> ${orderDate5}
													</td>
													<td class="total align-middle fw-bold text-1000 text-end">${orderList.amount}</td>
													<td class="total align-middle fw-bold text-1000 text-end">${orderList.price}</td>
													<td class="total align-middle fw-bold text-1000 text-end">${orderList.pay}</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
							<!-- js -->
							<script src="vendors/scripts/core.js"></script>
							<script src="vendors/scripts/script.min.js"></script>
							<script src="vendors/scripts/process.js"></script>
							<script src="vendors/scripts/layout-settings.js"></script>
							<script src="src/plugins/jquery-asColor/dist/jquery-asColor.js"></script>
							<script
								src="src/plugins/jquery-asGradient/dist/jquery-asGradient.js"></script>
							<script
								src="src/plugins/jquery-asColorPicker/jquery-asColorPicker.js"></script>
							<script src="vendors/scripts/colorpicker.js"></script>
							<jsp:include page="/WEB-INF/views/modules/adminJS.jsp" />
							<script type="text/javascript">
								$(function() {

									$(".boardDeleted")
											.on(
													'click',
													function(event) {
														var memberId = $(this)
																.attr(
																		'data-memberId')
														var boardNo = $(this)
																.attr(
																		'data-boardNo')

														if (confirm('정말 삭제하시겠습니까?')) {
															location.href = boardNo
																	+ "/board-deleted?memberId="
																	+ memberId;
														}
														return true;

													})

								});
							</script>
</body>
</html>