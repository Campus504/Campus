<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<!-- Basic Page Info -->
<meta charset="UTF-8">
<title>Campus - 회원 상세 정보</title>

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
<!-- <script async
	src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());

	gtag('config', 'UA-119386393-1');
</script> -->
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
	<!-- end of header -->
	<!--  sidebar -->
	<jsp:include page="/WEB-INF/views/modules/adminSidebar.jsp" />
	<!-- end of sidebar -->

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
								<h4>회원 상세 정보</h4>
							</div>
							<nav aria-label="breadcrumb" role="navigation">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="admin-main">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">회원
										상세 정보</li>
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

				<div class="mb-9">
					<div
						class="row align-items-center justify-content-between g-3 mb-4">
						<div class="col-auto">
							<h2 class="mb-0">회원 상세 정보</h2>
						</div>

					</div>
					<div class="row g-5">
						<div class="col-12 col-xxl-4">
							<div class="row g-3 g-xxl-0 h-100">
								<div class="col-12 col-md-7 col-xxl-12 mb-xxl-3">
									<div class="card h-100">
										<div
											class="card-body d-flex flex-column justify-content-between pb-3">
											<div
												class="row align-items-center g-5 mb-3 text-center text-sm-start">
												<div class="col-12 col-sm-auto mb-sm-2">
													<div class="avatar avatar-5xl">
														<img class="rounded-circle"
															src="/campus/resources/assets/img/team/15.png" alt="" />
													</div>
												</div>
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
														<fmt:formatDate value="${member.joinDate}"
															pattern="yyyy-MM-dd" />
													</p>
													&nbsp;
													<p class="text-800">권한 : ${member.admin}</p>

												</div>
											</div>

										</div>
									</div>
								</div>
								<div class="col-12 col-md-5 col-xxl-12 mb-xxl-3"></div>
								<div class="col-12">
									<div class="card h-100"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-12 col-xxl-8">
		<div class="mb-6">
			<h3 class="mb-4">
				<br> <br>게시글 <span class="text-700 fw-normal"></span>
			</h3>
			<div class="border-top border-bottom border-200"
				id="customerOrdersTable"
				data-list='{"valueNames":["order","total","payment_status","fulfilment_status","delivery_type","date"],"page":6,"pagination":true}'>
				<div class="table-responsive scrollbar">
					<table class="table table-sm fs--1 mb-0">
						<thead>
							<tr>
								<th class="sort white-space-nowrap align-middle ps-0 pe-3"
									scope="col" data-sort="order" style="width: 10%;">글 번호</th>
								<th class="sort align-middle text-end pe-7" scope="col"
									data-sort="total" style="width: 10%;">카테고리</th>
								<th class="sort align-middle white-space-nowrap pe-3"
									scope="col" data-sort="payment_status" style="width: 15%;">제목</th>
								<th class="sort align-middle white-space-nowrap text-start pe-3"
									scope="col" data-sort="fulfilment_status" style="width: 20%;">작성
									일자</th>
								<th class="sort align-middle white-space-nowrap text-start pe-3"
									scope="col" data-sort="fulfilment_status" style="width: 20%;">삭제</th>
								<!-- <th class="sort align-middle white-space-nowrap text-start"
									scope="col" data-sort="delivery_type" style="width: 30%;">DELIVERY
									TYPE</th>
								<th class="sort align-middle text-end pe-0" scope="col"
									data-sort="date">DATE</th>-->
								<th class="sort text-end align-middle pe-0 ps-5" scope="col"></th>
							</tr>
						</thead>
						<tbody class="list" id="table-latest-review-body">
							<c:forEach var="board" items="${ boards }" varStatus="status">
								<c:if test="${ board.active eq 'TRUE' }">
									<tr
										class="hover-actions-trigger btn-reveal-trigger position-static">



										<td class="order align-middle white-space-nowrap ps-0"><a
											class="fw-semi-bold" href="#!">${ board.boardNo }</a></td>
										<td class="total align-middle text-end fw-semi-bold pe-7">${board.category}</td>
										<td
											class="payment_status align-middle white-space-nowrap text-start fw-bold text-700"><span
											class="badge badge-phoenix fs--2 badge-phoenix-success"><span
												class="badge-label"> ${board.title}</span><span class="ms-1"
												data-feather="check" style="height: 12.8px; width: 12.8px;"></span></span></td>
										<td
											class="fulfilment_status align-middle white-space-nowrap text-start fw-bold text-700"><span
											class="badge badge-phoenix fs--2 badge-phoenix-success"><span
												class="badge-label"><fmt:formatDate
														value="${board.writeDate}" pattern="yyyy-MM-dd" /></span><span
												class="ms-1" data-feather="check"
												style="height: 12.8px; width: 12.8px;"></span></span></td>
										<td><input type="button" class="boardDeleted"
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
		<div class="mb-6">
			<h3 class="mb-4">
				<br> <br>주문목록 <span class="text-700 fw-normal"></span>
			</h3>
			<div class="border-200 border-top border-bottom"
				id="customerWishlistTable"
				data-list='{"valueNames":["products","color","size","price","quantity","total"],"page":5,"pagination":true}'>
				<div class="table-responsive scrollbar">
					<table class="table fs--1 mb-0">
						<thead>
							<tr>
								<th class="sort white-space-nowrap align-middle fs--2"
									scope="col" style="width: 7%;"></th>
								<th class="sort white-space-nowrap align-middle" scope="col"
									style="width: 35%; min-width: 250px;" data-sort="products">주문번호</th>
								<th class="sort align-middle" scope="col" data-sort="color"
									style="width: 15%;">주문일자</th>
								<th class="sort align-middle" scope="col" data-sort="size"
									style="width: 10%;">대여일자</th>
								<th class="sort align-middle text-end" scope="col"
									data-sort="price" style="width: 15%;">반납일자</th>
								<th class="sort align-middle text-end" scope="col"
									data-sort="total" style="width: 15%;">결제방식</th>
							</tr>
						</thead>
						<tbody class="list" id="customer-wishlist-table-body">
							<c:forEach var="orderList" items="${orderLists}"
								varStatus="status">
								<tr
									class="hover-actions-trigger btn-reveal-trigger position-static">
									<td class="align-middle white-space-nowrap py-0"><img
										src="../../../assets/img//products/1.png" alt="" width="53" />${orderList.orderNo}</td>
									<td class="products align-middle"><a
										class="fw-semi-bold mb-0" href="#!"></a></td>
									<td
										class="color align-middle white-space-nowrap fs--1 text-900">
										<fmt:parseDate var="orderDate1" value="${orderList.orderDate}"
											pattern="yyyy-MM-dd" /> <fmt:formatDate var="orderDate"
											value="${orderDate1}" pattern="yyyy-MM-dd" /> ${orderDate}
									</td>
									<td
										class="size align-middle white-space-nowrap text-700 fs--1 fw-semi-bold">
										<fmt:parseDate var="orderDate2" value="${orderList.rentDate}"
											pattern="yyyy-MM-dd" /> <fmt:formatDate var="orderDate3"
											value="${orderDate2}" pattern="yyyy-MM-dd" /> ${orderDate3}
									</td>
									<td
										class="price align-middle text-900 fs--1 fw-semi-bold text-end">
										<fmt:parseDate var="orderDate4"
											value="${orderList.returnDate}" pattern="yyyy-MM-dd" /> <fmt:formatDate
											var="orderDate5" value="${orderDate4}" pattern="yyyy-MM-dd" />
										${orderDate5}
									</td>
									<td class="total align-middle fw-bold text-1000 text-end">${orderList.pay}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>

			</div>
		</div>
		<!-- js -->
		<jsp:include page="/WEB-INF/views/modules/adminJS.jsp" />
		<script type="text/javascript">
			$(function() {

				$(".boardDeleted").on(
						'click',
						function(event) {
							var memberId = $(this).attr('data-memberId')
							var boardNo = $(this).attr('data-boardNo')

							if (confirm('정말 삭제하시겠습니까?')) {
								location.href = boardNo
								+ "/board-deleted?memberId=" + memberId;
							}
								return true;
							


						})

			});
		</script>

		<!-- end of js -->
</body>
</html>