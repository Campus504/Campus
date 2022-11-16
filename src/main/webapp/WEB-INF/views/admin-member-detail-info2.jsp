<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
									<li class="breadcrumb-item active" aria-current="page">회원 상세 정보</li>
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
													<h3><input name="memberId" value="${member.memberId}" readonly="readonly"></h3> <!--  foreach문 걸기 -->
													<p class="text-800">Joined 3 months ago</p>
													<div>
														<a class="me-2" href="#!"><span
															class="fab fa-linkedin-in text-400 hover-primary"></span></a><a
															class="me-2" href="#!"><span
															class="fab fa-facebook text-400 hover-primary"></span></a><a
															href="#!"><span
															class="fab fa-twitter text-400 hover-primary"></span></a>
													</div>
												</div>
											</div>
											
										</div>
									</div>
								</div>
								<div class="col-12 col-md-5 col-xxl-12 mb-xxl-3">
									
								</div>
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
				Orders <span class="text-700 fw-normal">(97)</span>
			</h3>
			<div class="border-top border-bottom border-200"
				id="customerOrdersTable"
				data-list='{"valueNames":["order","total","payment_status","fulfilment_status","delivery_type","date"],"page":6,"pagination":true}'>
				<div class="table-responsive scrollbar">
					<table class="table table-sm fs--1 mb-0">
						<thead>
							<tr>
								<th class="sort white-space-nowrap align-middle ps-0 pe-3"
									scope="col" data-sort="order" style="width: 10%;">ORDER</th>
								<th class="sort align-middle text-end pe-7" scope="col"
									data-sort="total" style="width: 10%;">TOTAL</th>
								<th class="sort align-middle white-space-nowrap pe-3"
									scope="col" data-sort="payment_status" style="width: 15%;">PAYMENT
									STATUS</th>
								<th class="sort align-middle white-space-nowrap text-start pe-3"
									scope="col" data-sort="fulfilment_status" style="width: 20%;">FULFILMENT
									STATUS</th>
								<th class="sort align-middle white-space-nowrap text-start"
									scope="col" data-sort="delivery_type" style="width: 30%;">DELIVERY
									TYPE</th>
								<th class="sort align-middle text-end pe-0" scope="col"
									data-sort="date">DATE</th>
								<th class="sort text-end align-middle pe-0 ps-5" scope="col"></th>
							</tr>
						</thead>
						<tbody class="list" id="table-latest-review-body">
							<tr
								class="hover-actions-trigger btn-reveal-trigger position-static">
								<td class="order align-middle white-space-nowrap ps-0"><a
									class="fw-semi-bold" href="#!">#2453</a></td>
								<td class="total align-middle text-end fw-semi-bold pe-7">$87</td>
								<td
									class="payment_status align-middle white-space-nowrap text-start fw-bold text-700"><span
									class="badge badge-phoenix fs--2 badge-phoenix-success"><span
										class="badge-label">Paid</span><span class="ms-1"
										data-feather="check" style="height: 12.8px; width: 12.8px;"></span></span></td>
								<td
									class="fulfilment_status align-middle white-space-nowrap text-start fw-bold text-700"><span
									class="badge badge-phoenix fs--2 badge-phoenix-success"><span
										class="badge-label">Order Fulfilled</span><span class="ms-1"
										data-feather="check" style="height: 12.8px; width: 12.8px;"></span></span></td>
								<td
									class="delivery_type align-middle white-space-nowrap text-900 fs--1 text-start">Cash
									on delivery</td>
								<td
									class="date align-middle white-space-nowrap text-700 fs--1 ps-4 text-end">Dec
									12, 12:56 PM</td>
								<td class="align-middle white-space-nowrap text-end pe-0 ps-5">
									<div class="font-sans-serif btn-reveal-trigger">
										<button
											class="btn btn-sm dropdown-toggle dropdown-caret-none transition-none btn-reveal fs--2"
											type="button" data-bs-toggle="dropdown"
											data-boundary="window" aria-haspopup="true"
											aria-expanded="false" data-bs-reference="parent">
											<span class="fas fa-ellipsis-h fs--2"></span>
										</button>
										<div class="dropdown-menu dropdown-menu-end py-2">
											<a class="dropdown-item" href="#!">View</a><a
												class="dropdown-item" href="#!">Export</a>
											<div class="dropdown-divider"></div>
											<a class="dropdown-item text-danger" href="#!">Remove</a>
										</div>
									</div>
								</td>
							</tr>
							<tr
								class="hover-actions-trigger btn-reveal-trigger position-static">
								<td class="order align-middle white-space-nowrap ps-0"><a
									class="fw-semi-bold" href="#!">#2452</a></td>
								<td class="total align-middle text-end fw-semi-bold pe-7">$7264</td>
								<td
									class="payment_status align-middle white-space-nowrap text-start fw-bold text-700"><span
									class="badge badge-phoenix fs--2 badge-phoenix-secondary"><span
										class="badge-label">Cancelled</span><span class="ms-1"
										data-feather="x" style="height: 12.8px; width: 12.8px;"></span></span></td>
								<td
									class="fulfilment_status align-middle white-space-nowrap text-start fw-bold text-700"><span
									class="badge badge-phoenix fs--2 badge-phoenix-info"><span
										class="badge-label">Ready to pickup</span><span class="ms-1"
										data-feather="info" style="height: 12.8px; width: 12.8px;"></span></span></td>
								<td
									class="delivery_type align-middle white-space-nowrap text-900 fs--1 text-start">Free
									shipping</td>
								<td
									class="date align-middle white-space-nowrap text-700 fs--1 ps-4 text-end">Dec
									9, 2:28PM</td>
								<td class="align-middle white-space-nowrap text-end pe-0 ps-5">
									<div class="font-sans-serif btn-reveal-trigger">
										<button
											class="btn btn-sm dropdown-toggle dropdown-caret-none transition-none btn-reveal fs--2"
											type="button" data-bs-toggle="dropdown"
											data-boundary="window" aria-haspopup="true"
											aria-expanded="false" data-bs-reference="parent">
											<span class="fas fa-ellipsis-h fs--2"></span>
										</button>
										<div class="dropdown-menu dropdown-menu-end py-2">
											<a class="dropdown-item" href="#!">View</a><a
												class="dropdown-item" href="#!">Export</a>
											<div class="dropdown-divider"></div>
											<a class="dropdown-item text-danger" href="#!">Remove</a>
										</div>
									</div>
								</td>
							</tr>
							<tr
								class="hover-actions-trigger btn-reveal-trigger position-static">
								<td class="order align-middle white-space-nowrap ps-0"><a
									class="fw-semi-bold" href="#!">#2451</a></td>
								<td class="total align-middle text-end fw-semi-bold pe-7">$375</td>
								<td
									class="payment_status align-middle white-space-nowrap text-start fw-bold text-700"><span
									class="badge badge-phoenix fs--2 badge-phoenix-warning"><span
										class="badge-label">Pending</span><span class="ms-1"
										data-feather="alert-octagon"
										style="height: 12.8px; width: 12.8px;"></span></span></td>
								<td
									class="fulfilment_status align-middle white-space-nowrap text-start fw-bold text-700"><span
									class="badge badge-phoenix fs--2 badge-phoenix-warning"><span
										class="badge-label">Partial FulfiLled</span><span class="ms-1"
										data-feather="alert-octagon"
										style="height: 12.8px; width: 12.8px;"></span></span></td>
								<td
									class="delivery_type align-middle white-space-nowrap text-900 fs--1 text-start">Local
									pickup</td>
								<td
									class="date align-middle white-space-nowrap text-700 fs--1 ps-4 text-end">Dec
									4, 12:56 PM</td>
								<td class="align-middle white-space-nowrap text-end pe-0 ps-5">
									<div class="font-sans-serif btn-reveal-trigger">
										<button
											class="btn btn-sm dropdown-toggle dropdown-caret-none transition-none btn-reveal fs--2"
											type="button" data-bs-toggle="dropdown"
											data-boundary="window" aria-haspopup="true"
											aria-expanded="false" data-bs-reference="parent">
											<span class="fas fa-ellipsis-h fs--2"></span>
										</button>
										<div class="dropdown-menu dropdown-menu-end py-2">
											<a class="dropdown-item" href="#!">View</a><a
												class="dropdown-item" href="#!">Export</a>
											<div class="dropdown-divider"></div>
											<a class="dropdown-item text-danger" href="#!">Remove</a>
										</div>
									</div>
								</td>
							</tr>
							<tr
								class="hover-actions-trigger btn-reveal-trigger position-static">
								<td class="order align-middle white-space-nowrap ps-0"><a
									class="fw-semi-bold" href="#!">#2450</a></td>
								<td class="total align-middle text-end fw-semi-bold pe-7">$657</td>
								<td
									class="payment_status align-middle white-space-nowrap text-start fw-bold text-700"><span
									class="badge badge-phoenix fs--2 badge-phoenix-secondary"><span
										class="badge-label">Cancelled</span><span class="ms-1"
										data-feather="x" style="height: 12.8px; width: 12.8px;"></span></span></td>
								<td
									class="fulfilment_status align-middle white-space-nowrap text-start fw-bold text-700"><span
									class="badge badge-phoenix fs--2 badge-phoenix-secondary"><span
										class="badge-label">Order CancelLed</span><span class="ms-1"
										data-feather="x" style="height: 12.8px; width: 12.8px;"></span></span></td>
								<td
									class="delivery_type align-middle white-space-nowrap text-900 fs--1 text-start">Standard
									shipping</td>
								<td
									class="date align-middle white-space-nowrap text-700 fs--1 ps-4 text-end">Dec
									1, 4:07 AM</td>
								<td class="align-middle white-space-nowrap text-end pe-0 ps-5">
									<div class="font-sans-serif btn-reveal-trigger">
										<button
											class="btn btn-sm dropdown-toggle dropdown-caret-none transition-none btn-reveal fs--2"
											type="button" data-bs-toggle="dropdown"
											data-boundary="window" aria-haspopup="true"
											aria-expanded="false" data-bs-reference="parent">
											<span class="fas fa-ellipsis-h fs--2"></span>
										</button>
										<div class="dropdown-menu dropdown-menu-end py-2">
											<a class="dropdown-item" href="#!">View</a><a
												class="dropdown-item" href="#!">Export</a>
											<div class="dropdown-divider"></div>
											<a class="dropdown-item text-danger" href="#!">Remove</a>
										</div>
									</div>
								</td>
							</tr>
							<tr
								class="hover-actions-trigger btn-reveal-trigger position-static">
								<td class="order align-middle white-space-nowrap ps-0"><a
									class="fw-semi-bold" href="#!">#2449</a></td>
								<td class="total align-middle text-end fw-semi-bold pe-7">$9562</td>
								<td
									class="payment_status align-middle white-space-nowrap text-start fw-bold text-700"><span
									class="badge badge-phoenix fs--2 badge-phoenix-danger"><span
										class="badge-label">Failed</span><span class="ms-1"
										data-feather="alert-octagon"
										style="height: 12.8px; width: 12.8px;"></span></span></td>
								<td
									class="fulfilment_status align-middle white-space-nowrap text-start fw-bold text-700"><span
									class="badge badge-phoenix fs--2 badge-phoenix-success"><span
										class="badge-label">Order Fulfilled</span><span class="ms-1"
										data-feather="check" style="height: 12.8px; width: 12.8px;"></span></span></td>
								<td
									class="delivery_type align-middle white-space-nowrap text-900 fs--1 text-start">Express</td>
								<td
									class="date align-middle white-space-nowrap text-700 fs--1 ps-4 text-end">Nov
									28, 7:28 PM</td>
								<td class="align-middle white-space-nowrap text-end pe-0 ps-5">
									<div class="font-sans-serif btn-reveal-trigger">
										<button
											class="btn btn-sm dropdown-toggle dropdown-caret-none transition-none btn-reveal fs--2"
											type="button" data-bs-toggle="dropdown"
											data-boundary="window" aria-haspopup="true"
											aria-expanded="false" data-bs-reference="parent">
											<span class="fas fa-ellipsis-h fs--2"></span>
										</button>
										<div class="dropdown-menu dropdown-menu-end py-2">
											<a class="dropdown-item" href="#!">View</a><a
												class="dropdown-item" href="#!">Export</a>
											<div class="dropdown-divider"></div>
											<a class="dropdown-item text-danger" href="#!">Remove</a>
										</div>
									</div>
								</td>
							</tr>
							<tr
								class="hover-actions-trigger btn-reveal-trigger position-static">
								<td class="order align-middle white-space-nowrap ps-0"><a
									class="fw-semi-bold" href="#!">#2448</a></td>
								<td class="total align-middle text-end fw-semi-bold pe-7">$46</td>
								<td
									class="payment_status align-middle white-space-nowrap text-start fw-bold text-700"><span
									class="badge badge-phoenix fs--2 badge-phoenix-success"><span
										class="badge-label">Paid</span><span class="ms-1"
										data-feather="check" style="height: 12.8px; width: 12.8px;"></span></span></td>
								<td
									class="fulfilment_status align-middle white-space-nowrap text-start fw-bold text-700"><span
									class="badge badge-phoenix fs--2 badge-phoenix-danger"><span
										class="badge-label">Delivery Delayed</span><span class="ms-1"
										data-feather="alert-octagon"
										style="height: 12.8px; width: 12.8px;"></span></span></td>
								<td
									class="delivery_type align-middle white-space-nowrap text-900 fs--1 text-start">Local
									delivery</td>
								<td
									class="date align-middle white-space-nowrap text-700 fs--1 ps-4 text-end">Nov
									24, 10:16 AM</td>
								<td class="align-middle white-space-nowrap text-end pe-0 ps-5">
									<div class="font-sans-serif btn-reveal-trigger">
										<button
											class="btn btn-sm dropdown-toggle dropdown-caret-none transition-none btn-reveal fs--2"
											type="button" data-bs-toggle="dropdown"
											data-boundary="window" aria-haspopup="true"
											aria-expanded="false" data-bs-reference="parent">
											<span class="fas fa-ellipsis-h fs--2"></span>
										</button>
										<div class="dropdown-menu dropdown-menu-end py-2">
											<a class="dropdown-item" href="#!">View</a><a
												class="dropdown-item" href="#!">Export</a>
											<div class="dropdown-divider"></div>
											<a class="dropdown-item text-danger" href="#!">Remove</a>
										</div>
									</div>
								</td>
							</tr>
							<tr
								class="hover-actions-trigger btn-reveal-trigger position-static">
								<td class="order align-middle white-space-nowrap ps-0"><a
									class="fw-semi-bold" href="#!">#2447</a></td>
								<td class="total align-middle text-end fw-semi-bold pe-7">$953</td>
								<td
									class="payment_status align-middle white-space-nowrap text-start fw-bold text-700"><span
									class="badge badge-phoenix fs--2 badge-phoenix-warning"><span
										class="badge-label">Pending</span><span class="ms-1"
										data-feather="alert-octagon"
										style="height: 12.8px; width: 12.8px;"></span></span></td>
								<td
									class="fulfilment_status align-middle white-space-nowrap text-start fw-bold text-700"><span
									class="badge badge-phoenix fs--2 badge-phoenix-success"><span
										class="badge-label">Fulfiled</span><span class="ms-1"
										data-feather="check" style="height: 12.8px; width: 12.8px;"></span></span></td>
								<td
									class="delivery_type align-middle white-space-nowrap text-900 fs--1 text-start">Cash
									on delivery</td>
								<td
									class="date align-middle white-space-nowrap text-700 fs--1 ps-4 text-end">Nov
									18, 5:43 PM</td>
								<td class="align-middle white-space-nowrap text-end pe-0 ps-5">
									<div class="font-sans-serif btn-reveal-trigger">
										<button
											class="btn btn-sm dropdown-toggle dropdown-caret-none transition-none btn-reveal fs--2"
											type="button" data-bs-toggle="dropdown"
											data-boundary="window" aria-haspopup="true"
											aria-expanded="false" data-bs-reference="parent">
											<span class="fas fa-ellipsis-h fs--2"></span>
										</button>
										<div class="dropdown-menu dropdown-menu-end py-2">
											<a class="dropdown-item" href="#!">View</a><a
												class="dropdown-item" href="#!">Export</a>
											<div class="dropdown-divider"></div>
											<a class="dropdown-item text-danger" href="#!">Remove</a>
										</div>
									</div>
								</td>
							</tr>
							<tr
								class="hover-actions-trigger btn-reveal-trigger position-static">
								<td class="order align-middle white-space-nowrap ps-0"><a
									class="fw-semi-bold" href="#!">#2446</a></td>
								<td class="total align-middle text-end fw-semi-bold pe-7">$12</td>
								<td
									class="payment_status align-middle white-space-nowrap text-start fw-bold text-700"><span
									class="badge badge-phoenix fs--2 badge-phoenix-warning"><span
										class="badge-label">Pending</span><span class="ms-1"
										data-feather="alert-octagon"
										style="height: 12.8px; width: 12.8px;"></span></span></td>
								<td
									class="fulfilment_status align-middle white-space-nowrap text-start fw-bold text-700"><span
									class="badge badge-phoenix fs--2 badge-phoenix-success"><span
										class="badge-label">Fulfiled</span><span class="ms-1"
										data-feather="check" style="height: 12.8px; width: 12.8px;"></span></span></td>
								<td
									class="delivery_type align-middle white-space-nowrap text-900 fs--1 text-start">Standard
									shipping</td>
								<td
									class="date align-middle white-space-nowrap text-700 fs--1 ps-4 text-end">Nov
									18, 2:09 AM</td>
								<td class="align-middle white-space-nowrap text-end pe-0 ps-5">
									<div class="font-sans-serif btn-reveal-trigger">
										<button
											class="btn btn-sm dropdown-toggle dropdown-caret-none transition-none btn-reveal fs--2"
											type="button" data-bs-toggle="dropdown"
											data-boundary="window" aria-haspopup="true"
											aria-expanded="false" data-bs-reference="parent">
											<span class="fas fa-ellipsis-h fs--2"></span>
										</button>
										<div class="dropdown-menu dropdown-menu-end py-2">
											<a class="dropdown-item" href="#!">View</a><a
												class="dropdown-item" href="#!">Export</a>
											<div class="dropdown-divider"></div>
											<a class="dropdown-item text-danger" href="#!">Remove</a>
										</div>
									</div>
								</td>
							</tr>
							<tr
								class="hover-actions-trigger btn-reveal-trigger position-static">
								<td class="order align-middle white-space-nowrap ps-0"><a
									class="fw-semi-bold" href="#!">#2445</a></td>
								<td class="total align-middle text-end fw-semi-bold pe-7">$3927</td>
								<td
									class="payment_status align-middle white-space-nowrap text-start fw-bold text-700"><span
									class="badge badge-phoenix fs--2 badge-phoenix-success"><span
										class="badge-label">Paid</span><span class="ms-1"
										data-feather="check" style="height: 12.8px; width: 12.8px;"></span></span></td>
								<td
									class="fulfilment_status align-middle white-space-nowrap text-start fw-bold text-700"><span
									class="badge badge-phoenix fs--2 badge-phoenix-secondary"><span
										class="badge-label">Canceled</span><span class="ms-1"
										data-feather="x" style="height: 12.8px; width: 12.8px;"></span></span></td>
								<td
									class="delivery_type align-middle white-space-nowrap text-900 fs--1 text-start">Cash
									on delivery</td>
								<td
									class="date align-middle white-space-nowrap text-700 fs--1 ps-4 text-end">Nov
									16, 3:22 PM</td>
								<td class="align-middle white-space-nowrap text-end pe-0 ps-5">
									<div class="font-sans-serif btn-reveal-trigger">
										<button
											class="btn btn-sm dropdown-toggle dropdown-caret-none transition-none btn-reveal fs--2"
											type="button" data-bs-toggle="dropdown"
											data-boundary="window" aria-haspopup="true"
											aria-expanded="false" data-bs-reference="parent">
											<span class="fas fa-ellipsis-h fs--2"></span>
										</button>
										<div class="dropdown-menu dropdown-menu-end py-2">
											<a class="dropdown-item" href="#!">View</a><a
												class="dropdown-item" href="#!">Export</a>
											<div class="dropdown-divider"></div>
											<a class="dropdown-item text-danger" href="#!">Remove</a>
										</div>
									</div>
								</td>
							</tr>
							<tr
								class="hover-actions-trigger btn-reveal-trigger position-static">
								<td class="order align-middle white-space-nowrap ps-0"><a
									class="fw-semi-bold" href="#!">#2444</a></td>
								<td class="total align-middle text-end fw-semi-bold pe-7">$5937</td>
								<td
									class="payment_status align-middle white-space-nowrap text-start fw-bold text-700"><span
									class="badge badge-phoenix fs--2 badge-phoenix-success"><span
										class="badge-label">Paid</span><span class="ms-1"
										data-feather="check" style="height: 12.8px; width: 12.8px;"></span></span></td>
								<td
									class="fulfilment_status align-middle white-space-nowrap text-start fw-bold text-700"><span
									class="badge badge-phoenix fs--2 badge-phoenix-secondary"><span
										class="badge-label">Ready to pickup</span><span class="ms-1"
										data-feather="info" style="height: 12.8px; width: 12.8px;"></span></span></td>
								<td
									class="delivery_type align-middle white-space-nowrap text-900 fs--1 text-start">Local
									pickup</td>
								<td
									class="date align-middle white-space-nowrap text-700 fs--1 ps-4 text-end">Nov
									09, 8:49 AM</td>
								<td class="align-middle white-space-nowrap text-end pe-0 ps-5">
									<div class="font-sans-serif btn-reveal-trigger">
										<button
											class="btn btn-sm dropdown-toggle dropdown-caret-none transition-none btn-reveal fs--2"
											type="button" data-bs-toggle="dropdown"
											data-boundary="window" aria-haspopup="true"
											aria-expanded="false" data-bs-reference="parent">
											<span class="fas fa-ellipsis-h fs--2"></span>
										</button>
										<div class="dropdown-menu dropdown-menu-end py-2">
											<a class="dropdown-item" href="#!">View</a><a
												class="dropdown-item" href="#!">Export</a>
											<div class="dropdown-divider"></div>
											<a class="dropdown-item text-danger" href="#!">Remove</a>
										</div>
									</div>
								</td>
							</tr>
							<tr
								class="hover-actions-trigger btn-reveal-trigger position-static">
								<td class="order align-middle white-space-nowrap ps-0"><a
									class="fw-semi-bold" href="#!">#2443</a></td>
								<td class="total align-middle text-end fw-semi-bold pe-7">$124</td>
								<td
									class="payment_status align-middle white-space-nowrap text-start fw-bold text-700"><span
									class="badge badge-phoenix fs--2 badge-phoenix-danger"><span
										class="badge-label">Failed</span><span class="ms-1"
										data-feather="minus-circle"
										style="height: 12.8px; width: 12.8px;"></span></span></td>
								<td
									class="fulfilment_status align-middle white-space-nowrap text-start fw-bold text-700"><span
									class="badge badge-phoenix fs--2 badge-phoenix-danger"><span
										class="badge-label">Unfulfiled</span><span class="ms-1"
										data-feather="x" style="height: 12.8px; width: 12.8px;"></span></span></td>
								<td
									class="delivery_type align-middle white-space-nowrap text-900 fs--1 text-start">Cash
									on delivery</td>
								<td
									class="date align-middle white-space-nowrap text-700 fs--1 ps-4 text-end">Nov
									05, 4:35 PM</td>
								<td class="align-middle white-space-nowrap text-end pe-0 ps-5">
									<div class="font-sans-serif btn-reveal-trigger">
										<button
											class="btn btn-sm dropdown-toggle dropdown-caret-none transition-none btn-reveal fs--2"
											type="button" data-bs-toggle="dropdown"
											data-boundary="window" aria-haspopup="true"
											aria-expanded="false" data-bs-reference="parent">
											<span class="fas fa-ellipsis-h fs--2"></span>
										</button>
										<div class="dropdown-menu dropdown-menu-end py-2">
											<a class="dropdown-item" href="#!">View</a><a
												class="dropdown-item" href="#!">Export</a>
											<div class="dropdown-divider"></div>
											<a class="dropdown-item text-danger" href="#!">Remove</a>
										</div>
									</div>
								</td>
							</tr>
							<tr
								class="hover-actions-trigger btn-reveal-trigger position-static">
								<td class="order align-middle white-space-nowrap ps-0"><a
									class="fw-semi-bold" href="#!">#2442</a></td>
								<td class="total align-middle text-end fw-semi-bold pe-7">$542</td>
								<td
									class="payment_status align-middle white-space-nowrap text-start fw-bold text-700"><span
									class="badge badge-phoenix fs--2 badge-phoenix-warning"><span
										class="badge-label">Pending</span><span class="ms-1"
										data-feather="alert-octagon"
										style="height: 12.8px; width: 12.8px;"></span></span></td>
								<td
									class="fulfilment_status align-middle white-space-nowrap text-start fw-bold text-700"><span
									class="badge badge-phoenix fs--2 badge-phoenix-success"><span
										class="badge-label">Fulfiled</span><span class="ms-1"
										data-feather="check" style="height: 12.8px; width: 12.8px;"></span></span></td>
								<td
									class="delivery_type align-middle white-space-nowrap text-900 fs--1 text-start">Standard
									shipping</td>
								<td
									class="date align-middle white-space-nowrap text-700 fs--1 ps-4 text-end">Nov
									05, 12:00 PM</td>
								<td class="align-middle white-space-nowrap text-end pe-0 ps-5">
									<div class="font-sans-serif btn-reveal-trigger">
										<button
											class="btn btn-sm dropdown-toggle dropdown-caret-none transition-none btn-reveal fs--2"
											type="button" data-bs-toggle="dropdown"
											data-boundary="window" aria-haspopup="true"
											aria-expanded="false" data-bs-reference="parent">
											<span class="fas fa-ellipsis-h fs--2"></span>
										</button>
										<div class="dropdown-menu dropdown-menu-end py-2">
											<a class="dropdown-item" href="#!">View</a><a
												class="dropdown-item" href="#!">Export</a>
											<div class="dropdown-divider"></div>
											<a class="dropdown-item text-danger" href="#!">Remove</a>
										</div>
									</div>
								</td>
							</tr>
							<tr
								class="hover-actions-trigger btn-reveal-trigger position-static">
								<td class="order align-middle white-space-nowrap ps-0"><a
									class="fw-semi-bold" href="#!">#2441</a></td>
								<td class="total align-middle text-end fw-semi-bold pe-7">$1480</td>
								<td
									class="payment_status align-middle white-space-nowrap text-start fw-bold text-700"><span
									class="badge badge-phoenix fs--2 badge-phoenix-success"><span
										class="badge-label">Paid</span><span class="ms-1"
										data-feather="check" style="height: 12.8px; width: 12.8px;"></span></span></td>
								<td
									class="fulfilment_status align-middle white-space-nowrap text-start fw-bold text-700"><span
									class="badge badge-phoenix fs--2 badge-phoenix-info"><span
										class="badge-label">Ready to pickup</span><span class="ms-1"
										data-feather="info" style="height: 12.8px; width: 12.8px;"></span></span></td>
								<td
									class="delivery_type align-middle white-space-nowrap text-900 fs--1 text-start">Local
									delivery</td>
								<td
									class="date align-middle white-space-nowrap text-700 fs--1 ps-4 text-end">Nov
									02, 2:00 AM</td>
								<td class="align-middle white-space-nowrap text-end pe-0 ps-5">
									<div class="font-sans-serif btn-reveal-trigger">
										<button
											class="btn btn-sm dropdown-toggle dropdown-caret-none transition-none btn-reveal fs--2"
											type="button" data-bs-toggle="dropdown"
											data-boundary="window" aria-haspopup="true"
											aria-expanded="false" data-bs-reference="parent">
											<span class="fas fa-ellipsis-h fs--2"></span>
										</button>
										<div class="dropdown-menu dropdown-menu-end py-2">
											<a class="dropdown-item" href="#!">View</a><a
												class="dropdown-item" href="#!">Export</a>
											<div class="dropdown-divider"></div>
											<a class="dropdown-item text-danger" href="#!">Remove</a>
										</div>
									</div>
								</td>
							</tr>
							<tr
								class="hover-actions-trigger btn-reveal-trigger position-static">
								<td class="order align-middle white-space-nowrap ps-0"><a
									class="fw-semi-bold" href="#!">#2440</a></td>
								<td class="total align-middle text-end fw-semi-bold pe-7">$80</td>
								<td
									class="payment_status align-middle white-space-nowrap text-start fw-bold text-700"><span
									class="badge badge-phoenix fs--2 badge-phoenix-secondary"><span
										class="badge-label">Cancelled</span><span class="ms-1"
										data-feather="x" style="height: 12.8px; width: 12.8px;"></span></span></td>
								<td
									class="fulfilment_status align-middle white-space-nowrap text-start fw-bold text-700"><span
									class="badge badge-phoenix fs--2 badge-phoenix-danger"><span
										class="badge-label">Unfulfiled</span><span class="ms-1"
										data-feather="x" style="height: 12.8px; width: 12.8px;"></span></span></td>
								<td
									class="delivery_type align-middle white-space-nowrap text-900 fs--1 text-start">Free
									shipping</td>
								<td
									class="date align-middle white-space-nowrap text-700 fs--1 ps-4 text-end">Oct
									30, 4:25 PM</td>
								<td class="align-middle white-space-nowrap text-end pe-0 ps-5">
									<div class="font-sans-serif btn-reveal-trigger">
										<button
											class="btn btn-sm dropdown-toggle dropdown-caret-none transition-none btn-reveal fs--2"
											type="button" data-bs-toggle="dropdown"
											data-boundary="window" aria-haspopup="true"
											aria-expanded="false" data-bs-reference="parent">
											<span class="fas fa-ellipsis-h fs--2"></span>
										</button>
										<div class="dropdown-menu dropdown-menu-end py-2">
											<a class="dropdown-item" href="#!">View</a><a
												class="dropdown-item" href="#!">Export</a>
											<div class="dropdown-divider"></div>
											<a class="dropdown-item text-danger" href="#!">Remove</a>
										</div>
									</div>
								</td>
							</tr>
							<tr
								class="hover-actions-trigger btn-reveal-trigger position-static">
								<td class="order align-middle white-space-nowrap ps-0"><a
									class="fw-semi-bold" href="#!">#2439</a></td>
								<td class="total align-middle text-end fw-semi-bold pe-7">$999</td>
								<td
									class="payment_status align-middle white-space-nowrap text-start fw-bold text-700"><span
									class="badge badge-phoenix fs--2 badge-phoenix-warning"><span
										class="badge-label">Pending</span><span class="ms-1"
										data-feather="alert-octagon"
										style="height: 12.8px; width: 12.8px;"></span></span></td>
								<td
									class="fulfilment_status align-middle white-space-nowrap text-start fw-bold text-700"><span
									class="badge badge-phoenix fs--2 badge-phoenix-success"><span
										class="badge-label">Fulfiled</span><span class="ms-1"
										data-feather="check" style="height: 12.8px; width: 12.8px;"></span></span></td>
								<td
									class="delivery_type align-middle white-space-nowrap text-900 fs--1 text-start">Cash
									on delivery</td>
								<td
									class="date align-middle white-space-nowrap text-700 fs--1 ps-4 text-end">Oct
									28, 3:00 PM</td>
								<td class="align-middle white-space-nowrap text-end pe-0 ps-5">
									<div class="font-sans-serif btn-reveal-trigger">
										<button
											class="btn btn-sm dropdown-toggle dropdown-caret-none transition-none btn-reveal fs--2"
											type="button" data-bs-toggle="dropdown"
											data-boundary="window" aria-haspopup="true"
											aria-expanded="false" data-bs-reference="parent">
											<span class="fas fa-ellipsis-h fs--2"></span>
										</button>
										<div class="dropdown-menu dropdown-menu-end py-2">
											<a class="dropdown-item" href="#!">View</a><a
												class="dropdown-item" href="#!">Export</a>
											<div class="dropdown-divider"></div>
											<a class="dropdown-item text-danger" href="#!">Remove</a>
										</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div
					class="row align-items-center justify-content-between py-2 pe-0 fs--1">
					<div class="col-auto d-flex">
						<p class="mb-0 d-none d-sm-block me-3 fw-semi-bold text-900"
							data-list-info="data-list-info"></p>
						<a class="fw-semi-bold" href="#!" data-list-view="*">View all<span
							class="fas fa-angle-right ms-1" data-fa-transform="down-1"></span></a><a
							class="fw-semi-bold d-none" href="#!" data-list-view="less">View
							Less<span class="fas fa-angle-right ms-1"
							data-fa-transform="down-1"></span>
						</a>
					</div>
					<div class="col-auto d-flex">
						<button class="page-link" data-list-pagination="prev">
							<span class="fas fa-chevron-left"></span>
						</button>
						<ul class="mb-0 pagination"></ul>
						<button class="page-link pe-0" data-list-pagination="next">
							<span class="fas fa-chevron-right"></span>
						</button>
					</div>
				</div>
			</div>
		</div>
		<div class="mb-6">
			<h3 class="mb-4">
				Wishlist <span class="text-700 fw-normal">(43)</span>
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
									style="width: 35%; min-width: 250px;" data-sort="products">PRODUCTS</th>
								<th class="sort align-middle" scope="col" data-sort="color"
									style="width: 15%;">COLOR</th>
								<th class="sort align-middle" scope="col" data-sort="size"
									style="width: 10%;">SIZE</th>
								<th class="sort align-middle text-end" scope="col"
									data-sort="price" style="width: 15%;">PRICE</th>
								<th class="sort align-middle text-end" scope="col"
									data-sort="total" style="width: 15%;">TOTAL</th>
							</tr>
						</thead>
						<tbody class="list" id="customer-wishlist-table-body">
							<tr
								class="hover-actions-trigger btn-reveal-trigger position-static">
								<td class="align-middle white-space-nowrap py-0"><img
									src="../../../assets/img//products/1.png" alt="" width="53" /></td>
								<td class="products align-middle"><a
									class="fw-semi-bold mb-0" href="#!">Fitbit Sense Advanced
										Smartwatch wi...</a></td>
								<td class="color align-middle white-space-nowrap fs--1 text-900">Pure
									matt black</td>
								<td
									class="size align-middle white-space-nowrap text-700 fs--1 fw-semi-bold">42</td>
								<td
									class="price align-middle text-900 fs--1 fw-semi-bold text-end">$57</td>
								<td class="total align-middle fw-bold text-1000 text-end">$57</td>
							</tr>
							<tr
								class="hover-actions-trigger btn-reveal-trigger position-static">
								<td class="align-middle white-space-nowrap py-0"><img
									src="../../../assets/img//products/7.png" alt="" width="53" /></td>
								<td class="products align-middle"><a
									class="fw-semi-bold mb-0" href="#!">2021 Apple 12.9-inch
										iPad Pro (Wi‑Fi, ...</a></td>
								<td class="color align-middle white-space-nowrap fs--1 text-900">Black</td>
								<td
									class="size align-middle white-space-nowrap text-700 fs--1 fw-semi-bold">Pro</td>
								<td
									class="price align-middle text-900 fs--1 fw-semi-bold text-end">$1,499</td>
								<td class="total align-middle fw-bold text-1000 text-end">$1499</td>
							</tr>
							<tr
								class="hover-actions-trigger btn-reveal-trigger position-static">
								<td class="align-middle white-space-nowrap py-0"><img
									src="../../../assets/img//products/6.png" alt="" width="53" /></td>
								<td class="products align-middle"><a
									class="fw-semi-bold mb-0" href="#!">PlayStation 5 DualSense
										Wireless Cont...</a></td>
								<td class="color align-middle white-space-nowrap fs--1 text-900">White</td>
								<td
									class="size align-middle white-space-nowrap text-700 fs--1 fw-semi-bold">Regular</td>
								<td
									class="price align-middle text-900 fs--1 fw-semi-bold text-end">$299</td>
								<td class="total align-middle fw-bold text-1000 text-end">$359</td>
							</tr>
							<tr
								class="hover-actions-trigger btn-reveal-trigger position-static">
								<td class="align-middle white-space-nowrap py-0"><img
									src="../../../assets/img//products/3.png" alt="" width="53" /></td>
								<td class="products align-middle"><a
									class="fw-semi-bold mb-0" href="#!">Apple MacBook Pro 13
										inch-M1-8/256G...</a></td>
								<td class="color align-middle white-space-nowrap fs--1 text-900">Space
									Gray</td>
								<td
									class="size align-middle white-space-nowrap text-700 fs--1 fw-semi-bold">Pro</td>
								<td
									class="price align-middle text-900 fs--1 fw-semi-bold text-end">$1,699</td>
								<td class="total align-middle fw-bold text-1000 text-end">$1,799</td>
							</tr>
							<tr
								class="hover-actions-trigger btn-reveal-trigger position-static">
								<td class="align-middle white-space-nowrap py-0"><img
									src="../../../assets/img//products/4.png" alt="" width="53" /></td>
								<td class="products align-middle"><a
									class="fw-semi-bold mb-0" href="#!">Apple iMac 24&quot; 4K
										Retina Display M1 8 C...</a></td>
								<td class="color align-middle white-space-nowrap fs--1 text-900">Ocean
									Blue</td>
								<td
									class="size align-middle white-space-nowrap text-700 fs--1 fw-semi-bold">21&quot;</td>
								<td
									class="price align-middle text-900 fs--1 fw-semi-bold text-end">$65</td>
								<td class="total align-middle fw-bold text-1000 text-end">$65</td>
							</tr>
							<tr
								class="hover-actions-trigger btn-reveal-trigger position-static">
								<td class="align-middle white-space-nowrap py-0"><img
									src="../../../assets/img//products/10.png" alt="" width="53" /></td>
								<td class="products align-middle"><a
									class="fw-semi-bold mb-0" href="#!">Apple Magic Mouse
										(Wireless, Recharg...</a></td>
								<td class="color align-middle white-space-nowrap fs--1 text-900">White</td>
								<td
									class="size align-middle white-space-nowrap text-700 fs--1 fw-semi-bold">Regular</td>
								<td
									class="price align-middle text-900 fs--1 fw-semi-bold text-end">$30</td>
								<td class="total align-middle fw-bold text-1000 text-end">$60</td>
							</tr>
							<tr
								class="hover-actions-trigger btn-reveal-trigger position-static">
								<td class="align-middle white-space-nowrap py-0"><img
									src="../../../assets/img//products/8.png" alt="" width="53" /></td>
								<td class="products align-middle"><a
									class="fw-semi-bold mb-0" href="#!">Amazon Basics Matte
										Black Wired Keybo...</a></td>
								<td class="color align-middle white-space-nowrap fs--1 text-900">Black</td>
								<td
									class="size align-middle white-space-nowrap text-700 fs--1 fw-semi-bold">MD</td>
								<td
									class="price align-middle text-900 fs--1 fw-semi-bold text-end">$40</td>
								<td class="total align-middle fw-bold text-1000 text-end">$40</td>
							</tr>
							<tr
								class="hover-actions-trigger btn-reveal-trigger position-static">
								<td class="align-middle white-space-nowrap py-0"><img
									src="../../../assets/img//products/12.png" alt="" width="53" /></td>
								<td class="products align-middle"><a
									class="fw-semi-bold mb-0" href="#!">HORI Racing Wheel Apex
										for PlayStation...</a></td>
								<td class="color align-middle white-space-nowrap fs--1 text-900">Black</td>
								<td
									class="size align-middle white-space-nowrap text-700 fs--1 fw-semi-bold">45</td>
								<td
									class="price align-middle text-900 fs--1 fw-semi-bold text-end">$130</td>
								<td class="total align-middle fw-bold text-1000 text-end">$130</td>
							</tr>
							<tr
								class="hover-actions-trigger btn-reveal-trigger position-static">
								<td class="align-middle white-space-nowrap py-0"><img
									src="../../../assets/img//products/17.png" alt="" width="53" /></td>
								<td class="products align-middle"><a
									class="fw-semi-bold mb-0" href="#!">Xbox Series S</a></td>
								<td class="color align-middle white-space-nowrap fs--1 text-900">Space
									Gray</td>
								<td
									class="size align-middle white-space-nowrap text-700 fs--1 fw-semi-bold">sm</td>
								<td
									class="price align-middle text-900 fs--1 fw-semi-bold text-end">$99</td>
								<td class="total align-middle fw-bold text-1000 text-end">$99</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div
					class="row align-items-center justify-content-between py-2 pe-0 fs--1">
					<div class="col-auto d-flex">
						<p class="mb-0 d-none d-sm-block me-3 fw-semi-bold text-900"
							data-list-info="data-list-info"></p>
						<a class="fw-semi-bold" href="#!" data-list-view="*">View all<span
							class="fas fa-angle-right ms-1" data-fa-transform="down-1"></span></a><a
							class="fw-semi-bold d-none" href="#!" data-list-view="less">View
							Less<span class="fas fa-angle-right ms-1"
							data-fa-transform="down-1"></span>
						</a>
					</div>
					<div class="col-auto d-flex">
						<button class="page-link" data-list-pagination="prev">
							<span class="fas fa-chevron-left"></span>
						</button>
						<ul class="mb-0 pagination"></ul>
						<button class="page-link pe-0" data-list-pagination="next">
							<span class="fas fa-chevron-right"></span>
						</button>
					</div>
				</div>
			</div>
		</div>
		<!-- js -->
		<jsp:include page="/WEB-INF/views/modules/adminJS.jsp" />
		<!-- end of js -->
</body>
</html>