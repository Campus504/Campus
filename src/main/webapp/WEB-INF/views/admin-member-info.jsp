<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Basic Page Info -->
<meta charset="UTF-8">
<title>DeskApp - Bootstrap Admin Dashboard HTML Template</title>

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
	<!--  header -->
	<jsp:include page="/WEB-INF/views/modules/adminHeader.jsp" />
	<!-- end of header -->
	<!--  sidebar -->
	<jsp:include page="/WEB-INF/views/modules/adminSidebar.jsp" />
	<!-- end of sidebar -->

	<div class="mb-9">
		<div class="row g-2 mb-4">
			<div class="col-auto">
				<h2 class="mb-0">Customers</h2>
			</div>
		</div>
		<ul class="nav nav-links mb-3 mb-lg-2 mx-n3">
			<li class="nav-item"><a class="nav-link active"
				aria-current="page" href="#">All <span
					class="text-700 fw-semi-bold">(68817)</span></a></li>
			<li class="nav-item"><a class="nav-link" href="#">New <span
					class="text-700 fw-semi-bold">(6)</span></a></li>
			<li class="nav-item"><a class="nav-link" href="#">Abandoned
					checkouts <span class="text-700 fw-semi-bold">(17)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Locals <span
					class="text-700 fw-semi-bold">(6,810)</span></a></li>
			<li class="nav-item"><a class="nav-link" href="#">Email
					subscribers <span class="text-700 fw-semi-bold">(8)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Top
					reviews <span class="text-700 fw-semi-bold">(2)</span>
			</a></li>
		</ul>
		<div id="products"
			data-list='{"valueNames":["customer","email","total-orders","total-spent","city","last-seen","last-order"],"page":10,"pagination":true}'>
			<div class="mb-4">
				<div class="row g-3">
					<div class="col-auto">
						<div class="search-box">
							<form class="position-relative" data-bs-toggle="search"
								data-bs-display="static">
								<input class="form-control search-input search" type="search"
									placeholder="Search customers" aria-label="Search" /> <span
									class="fas fa-search search-box-icon"></span>
							</form>
						</div>
					</div>
					<div class="col-auto scrollbar overflow-hidden-y flex-grow-1">
						<div class="btn-group position-static" role="group">
							<div class="btn-group position-static text-nowrap">
								<button class="btn btn-phoenix-secondary px-7 flex-shrink-0"
									type="button" data-bs-toggle="dropdown" data-boundary="window"
									aria-haspopup="true" aria-expanded="false"
									data-bs-reference="parent">
									Country<span class="fas fa-angle-down ms-2"></span>
								</button>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" href="#">US</a></li>
									<li><a class="dropdown-item" href="#">Uk</a></li>
									<li><a class="dropdown-item" href="#">Australia</a></li>
								</ul>
							</div>
							<div class="btn-group position-static text-nowrap">
								<button
									class="btn btn-sm btn-phoenix-secondary px-7 flex-shrink-0"
									type="button" data-bs-toggle="dropdown" data-boundary="window"
									aria-haspopup="true" aria-expanded="false"
									data-bs-reference="parent">
									VIP<span class="fas fa-angle-down ms-2"></span>
								</button>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" href="#">VIP 1</a></li>
									<li><a class="dropdown-item" href="#">VIP 2</a></li>
									<li><a class="dropdown-item" href="#">VIP 3</a></li>
									<li></li>
								</ul>
							</div>
							<button class="btn btn-phoenix-secondary px-7 flex-shrink-0">More
								filters</button>
						</div>
					</div>
					<div class="col-auto">
						<button class="btn btn-link text-900 me-4 px-0">
							<span class="fa-solid fa-file-export fs--1 me-2"></span>Export
						</button>
						<button class="btn btn-primary">
							<span class="fas fa-plus me-2"></span>Add customer
						</button>
					</div>
				</div>
			</div>
			<div
				class="mx-n4 px-4 mx-lg-n6 px-lg-6 bg-white border-top border-bottom border-200 position-relative top-1">
				<div class="table-responsive scrollbar mx-n1 px-1">
					<table class="table table-sm fs--1 mb-0">
						<thead>
							<tr>
								<th class="white-space-nowrap fs--1 align-middle ps-0">
									<div class="form-check mb-0 fs-0">
										<input class="form-check-input" type="checkbox" />
									</div>
								</th>
								<th class="sort align-middle pe-5" scope="col"
									data-sort="customer" style="width: 10%;">CUSTOMER</th>
								<th class="sort align-middle pe-5" scope="col" data-sort="email"
									style="width: 20%;">EMAIL</th>
								<th class="sort align-middle text-end" scope="col"
									data-sort="total-orders" style="width: 10%">ORDERS</th>
								<th class="sort align-middle text-end ps-3" scope="col"
									data-sort="total-spent" style="width: 10%">TOTAL SPENT</th>
								<th class="sort align-middle ps-7" scope="col" data-sort="city"
									style="width: 25%;">CITY</th>
								<th class="sort align-middle text-end" scope="col"
									data-sort="last-seen" style="width: 15%;">LAST SEEN</th>
								<th class="sort align-middle text-end pe-0" scope="col"
									data-sort="last-order" style="width: 10%;">LAST ORDER</th>
							</tr>
						</thead>
						<tbody class="list" id="table-latest-review-body">
							<tr
								class="hover-actions-trigger btn-reveal-trigger position-static">
								<td class="fs--1 align-middle ps-0 py-3">
									<div class="form-check mb-0 fs-0">
										<input class="form-check-input" type="checkbox" />
									</div>
								</td>
								<td class="customer align-middle white-space-nowrap pe-5"><a
									class="d-flex align-items-center" href="#!">
										<div class="avatar avatar-m">
											<img class="rounded-circle"
												src="../../../assets/img/team/32.png" alt="" />
										</div>
										<p class="mb-0 ms-3 text-1100 fw-bold">Carry Anna</p>
								</a></td>
								<td class="email align-middle white-space-nowrap pe-5"><a
									class="fw-semi-bold text-1100" href="mailto:annac34@gmail.com">annac34@gmail.com</a></td>
								<td
									class="total-orders align-middle white-space-nowrap fw-semi-bold text-end">89</td>
								<td
									class="total-spent align-middle white-space-nowrap fw-bold text-end ps-3">$
									23987</td>
								<td class="city align-middle white-space-nowrap text-900 ps-7">Budapest</td>
								<td
									class="last-seen align-middle white-space-nowrap text-700 text-end">34
									min ago</td>
								<td
									class="last-order align-middle white-space-nowrap text-700 text-end">Dec
									12, 12:56 PM</td>
							</tr>
							<tr
								class="hover-actions-trigger btn-reveal-trigger position-static">
								<td class="fs--1 align-middle ps-0 py-3">
									<div class="form-check mb-0 fs-0">
										<input class="form-check-input" type="checkbox" />
									</div>
								</td>
								<td class="customer align-middle white-space-nowrap pe-5"><a
									class="d-flex align-items-center" href="#!">
										<div class="avatar avatar-m">
											<img class="rounded-circle"
												src="../../../assets/img/team/avatar-placeholder.png" alt="" />
										</div>
										<p class="mb-0 ms-3 text-1100 fw-bold">Milind Mikuja</p>
								</a></td>
								<td class="email align-middle white-space-nowrap pe-5"><a
									class="fw-semi-bold text-1100" href="mailto:mimiku@yahoo.com">mimiku@yahoo.com</a></td>
								<td
									class="total-orders align-middle white-space-nowrap fw-semi-bold text-end">76</td>
								<td
									class="total-spent align-middle white-space-nowrap fw-bold text-end ps-3">$
									21567</td>
								<td class="city align-middle white-space-nowrap text-900 ps-7">Manchester</td>
								<td
									class="last-seen align-middle white-space-nowrap text-700 text-end">6
									hours ago</td>
								<td
									class="last-order align-middle white-space-nowrap text-700 text-end">Dec
									9, 2:28 PM</td>
							</tr>
							<tr
								class="hover-actions-trigger btn-reveal-trigger position-static">
								<td class="fs--1 align-middle ps-0 py-3">
									<div class="form-check mb-0 fs-0">
										<input class="form-check-input" type="checkbox" />
									</div>
								</td>
								<td class="customer align-middle white-space-nowrap pe-5"><a
									class="d-flex align-items-center" href="#!">
										<div class="avatar avatar-m">
											<img class="rounded-circle"
												src="../../../assets/img/team/35.png" alt="" />
										</div>
										<p class="mb-0 ms-3 text-1100 fw-bold">Stanly Drinkwater</p>
								</a></td>
								<td class="email align-middle white-space-nowrap pe-5"><a
									class="fw-semi-bold text-1100"
									href="mailto:stnlwasser@hotmail.com">stnlwasser@hotmail.com</a></td>
								<td
									class="total-orders align-middle white-space-nowrap fw-semi-bold text-end">69</td>
								<td
									class="total-spent align-middle white-space-nowrap fw-bold text-end ps-3">$
									19872</td>
								<td class="city align-middle white-space-nowrap text-900 ps-7">Smallville</td>
								<td
									class="last-seen align-middle white-space-nowrap text-700 text-end">43
									min ago</td>
								<td
									class="last-order align-middle white-space-nowrap text-700 text-end">Dec
									4, 12:56 PM</td>
							</tr>
							<tr
								class="hover-actions-trigger btn-reveal-trigger position-static">
								<td class="fs--1 align-middle ps-0 py-3">
									<div class="form-check mb-0 fs-0">
										<input class="form-check-input" type="checkbox" />
									</div>
								</td>
								<td class="customer align-middle white-space-nowrap pe-5"><a
									class="d-flex align-items-center" href="#!">
										<div class="avatar avatar-m">
											<img class="rounded-circle"
												src="../../../assets/img/team/57.png" alt="" />
										</div>
										<p class="mb-0 ms-3 text-1100 fw-bold">Josef Stravinsky</p>
								</a></td>
								<td class="email align-middle white-space-nowrap pe-5"><a
									class="fw-semi-bold text-1100" href="mailto:Josefsky@sni.it">Josefsky@sni.it</a></td>
								<td
									class="total-orders align-middle white-space-nowrap fw-semi-bold text-end">67</td>
								<td
									class="total-spent align-middle white-space-nowrap fw-bold text-end ps-3">$
									17996</td>
								<td class="city align-middle white-space-nowrap text-900 ps-7">Metropolis</td>
								<td
									class="last-seen align-middle white-space-nowrap text-700 text-end">2
									hours ago</td>
								<td
									class="last-order align-middle white-space-nowrap text-700 text-end">Dec
									1, 4:07 AM</td>
							</tr>
							<tr
								class="hover-actions-trigger btn-reveal-trigger position-static">
								<td class="fs--1 align-middle ps-0 py-3">
									<div class="form-check mb-0 fs-0">
										<input class="form-check-input" type="checkbox" />
									</div>
								</td>
								<td class="customer align-middle white-space-nowrap pe-5"><a
									class="d-flex align-items-center" href="#!">
										<div class="avatar avatar-m">
											<img class="rounded-circle"
												src="../../../assets/img/team/58.png" alt="" />
										</div>
										<p class="mb-0 ms-3 text-1100 fw-bold">Igor Borvibson</p>
								</a></td>
								<td class="email align-middle white-space-nowrap pe-5"><a
									class="fw-semi-bold text-1100"
									href="mailto:vibigorr@technext.it">vibigorr@technext.it</a></td>
								<td
									class="total-orders align-middle white-space-nowrap fw-semi-bold text-end">61</td>
								<td
									class="total-spent align-middle white-space-nowrap fw-bold text-end ps-3">$
									16785</td>
								<td class="city align-middle white-space-nowrap text-900 ps-7">Central
									city</td>
								<td
									class="last-seen align-middle white-space-nowrap text-700 text-end">5
									days ago</td>
								<td
									class="last-order align-middle white-space-nowrap text-700 text-end">Nov
									28, 7:28 PM</td>
							</tr>
							<tr
								class="hover-actions-trigger btn-reveal-trigger position-static">
								<td class="fs--1 align-middle ps-0 py-3">
									<div class="form-check mb-0 fs-0">
										<input class="form-check-input" type="checkbox" />
									</div>
								</td>
								<td class="customer align-middle white-space-nowrap pe-5"><a
									class="d-flex align-items-center" href="#!">
										<div class="avatar avatar-m">
											<img class="rounded-circle"
												src="../../../assets/img/team/59.png" alt="" />
										</div>
										<p class="mb-0 ms-3 text-1100 fw-bold">Katerina Karenin</p>
								</a></td>
								<td class="email align-middle white-space-nowrap pe-5"><a
									class="fw-semi-bold text-1100" href="mailto:karkat99@gmail.com">karkat99@gmail.com</a></td>
								<td
									class="total-orders align-middle white-space-nowrap fw-semi-bold text-end">58</td>
								<td
									class="total-spent align-middle white-space-nowrap fw-bold text-end ps-3">$
									14956</td>
								<td class="city align-middle white-space-nowrap text-900 ps-7">Gotham</td>
								<td
									class="last-seen align-middle white-space-nowrap text-700 text-end">2
									weeks ago</td>
								<td
									class="last-order align-middle white-space-nowrap text-700 text-end">Nov
									24, 10:16 AM</td>
							</tr>
							<tr
								class="hover-actions-trigger btn-reveal-trigger position-static">
								<td class="fs--1 align-middle ps-0 py-3">
									<div class="form-check mb-0 fs-0">
										<input class="form-check-input" type="checkbox" />
									</div>
								</td>
								<td class="customer align-middle white-space-nowrap pe-5"><a
									class="d-flex align-items-center" href="#!">
										<div class="avatar avatar-m">
											<img class="rounded-circle"
												src="../../../assets/img/team/r.png" alt="" />
										</div>
										<p class="mb-0 ms-3 text-1100 fw-bold">Roy Anderson</p>
								</a></td>
								<td class="email align-middle white-space-nowrap pe-5"><a
									class="fw-semi-bold text-1100"
									href="mailto:andersonroy@netflix.chill">andersonroy@netflix.chill</a></td>
								<td
									class="total-orders align-middle white-space-nowrap fw-semi-bold text-end">52</td>
								<td
									class="total-spent align-middle white-space-nowrap fw-bold text-end ps-3">$
									12509</td>
								<td class="city align-middle white-space-nowrap text-900 ps-7">Vancouver</td>
								<td
									class="last-seen align-middle white-space-nowrap text-700 text-end">4
									days ago</td>
								<td
									class="last-order align-middle white-space-nowrap text-700 text-end">Nov
									18, 5:43 PM</td>
							</tr>
							<tr
								class="hover-actions-trigger btn-reveal-trigger position-static">
								<td class="fs--1 align-middle ps-0 py-3">
									<div class="form-check mb-0 fs-0">
										<input class="form-check-input" type="checkbox" />
									</div>
								</td>
								<td class="customer align-middle white-space-nowrap pe-5"><a
									class="d-flex align-items-center" href="#!">
										<div class="avatar avatar-m">
											<img class="rounded-circle"
												src="../../../assets/img/team/31.png" alt="" />
										</div>
										<p class="mb-0 ms-3 text-1100 fw-bold">Martina scorcese</p>
								</a></td>
								<td class="email align-middle white-space-nowrap pe-5"><a
									class="fw-semi-bold text-1100"
									href="mailto:cesetina1@gmail.com">cesetina1@gmail.com</a></td>
								<td
									class="total-orders align-middle white-space-nowrap fw-semi-bold text-end">49</td>
								<td
									class="total-spent align-middle white-space-nowrap fw-bold text-end ps-3">$
									11003</td>
								<td class="city align-middle white-space-nowrap text-900 ps-7">Viena</td>
								<td
									class="last-seen align-middle white-space-nowrap text-700 text-end">6
									min ago</td>
								<td
									class="last-order align-middle white-space-nowrap text-700 text-end">Nov
									18, 2:09 AM</td>
							</tr>
							<tr
								class="hover-actions-trigger btn-reveal-trigger position-static">
								<td class="fs--1 align-middle ps-0 py-3">
									<div class="form-check mb-0 fs-0">
										<input class="form-check-input" type="checkbox" />
									</div>
								</td>
								<td class="customer align-middle white-space-nowrap pe-5"><a
									class="d-flex align-items-center" href="#!">
										<div class="avatar avatar-m">
											<img class="rounded-circle"
												src="../../../assets/img/team/33.png" alt="" />
										</div>
										<p class="mb-0 ms-3 text-1100 fw-bold">Luis Bunuel</p>
								</a></td>
								<td class="email align-middle white-space-nowrap pe-5"><a
									class="fw-semi-bold text-1100" href="mailto:luisuel@live.com">luisuel@live.com</a></td>
								<td
									class="total-orders align-middle white-space-nowrap fw-semi-bold text-end">44</td>
								<td
									class="total-spent align-middle white-space-nowrap fw-bold text-end ps-3">$
									7897</td>
								<td class="city align-middle white-space-nowrap text-900 ps-7">Bangalore</td>
								<td
									class="last-seen align-middle white-space-nowrap text-700 text-end">56
									min ago</td>
								<td
									class="last-order align-middle white-space-nowrap text-700 text-end">Nov
									16, 3:22 PM</td>
							</tr>
							<tr
								class="hover-actions-trigger btn-reveal-trigger position-static">
								<td class="fs--1 align-middle ps-0 py-3">
									<div class="form-check mb-0 fs-0">
										<input class="form-check-input" type="checkbox" />
									</div>
								</td>
								<td class="customer align-middle white-space-nowrap pe-5"><a
									class="d-flex align-items-center" href="#!">
										<div class="avatar avatar-m">
											<img class="rounded-circle"
												src="../../../assets/img/team/34.png" alt="" />
										</div>
										<p class="mb-0 ms-3 text-1100 fw-bold">Jean Renoir</p>
								</a></td>
								<td class="email align-middle white-space-nowrap pe-5"><a
									class="fw-semi-bold text-1100"
									href="mailto:renoirjean1836@gmail.com">renoirjean1836@gmail.com</a></td>
								<td
									class="total-orders align-middle white-space-nowrap fw-semi-bold text-end">37</td>
								<td
									class="total-spent align-middle white-space-nowrap fw-bold text-end ps-3">$
									7781</td>
								<td class="city align-middle white-space-nowrap text-900 ps-7">Chittagong</td>
								<td
									class="last-seen align-middle white-space-nowrap text-700 text-end">Yesterday</td>
								<td
									class="last-order align-middle white-space-nowrap text-700 text-end">Nov
									09, 8:49 AM</td>
							</tr>
							<tr
								class="hover-actions-trigger btn-reveal-trigger position-static">
								<td class="fs--1 align-middle ps-0 py-3">
									<div class="form-check mb-0 fs-0">
										<input class="form-check-input" type="checkbox" />
									</div>
								</td>
								<td class="customer align-middle white-space-nowrap pe-5"><a
									class="d-flex align-items-center" href="#!">
										<div class="avatar avatar-m">
											<img class="rounded-circle"
												src="../../../assets/img/team/29.png" alt="" />
										</div>
										<p class="mb-0 ms-3 text-1100 fw-bold">Ricky Antony</p>
								</a></td>
								<td class="email align-middle white-space-nowrap pe-5"><a
									class="fw-semi-bold text-1100" href="mailto:ricky@example.com">ricky@example.com</a></td>
								<td
									class="total-orders align-middle white-space-nowrap fw-semi-bold text-end">33</td>
								<td
									class="total-spent align-middle white-space-nowrap fw-bold text-end ps-3">$
									7825</td>
								<td class="city align-middle white-space-nowrap text-900 ps-7">New
									Jersey</td>
								<td
									class="last-seen align-middle white-space-nowrap text-700 text-end">1
									hour ago</td>
								<td
									class="last-order align-middle white-space-nowrap text-700 text-end">Oct
									19, 8:00 AM</td>
							</tr>
							<tr
								class="hover-actions-trigger btn-reveal-trigger position-static">
								<td class="fs--1 align-middle ps-0 py-3">
									<div class="form-check mb-0 fs-0">
										<input class="form-check-input" type="checkbox" />
									</div>
								</td>
								<td class="customer align-middle white-space-nowrap pe-5"><a
									class="d-flex align-items-center" href="#!">
										<div class="avatar avatar-m">
											<img class="rounded-circle"
												src="../../../assets/img/team/3.png" alt="" />
										</div>
										<p class="mb-0 ms-3 text-1100 fw-bold">Emma Watson</p>
								</a></td>
								<td class="email align-middle white-space-nowrap pe-5"><a
									class="fw-semi-bold text-1100" href="mailto:emma@example.com">emma@example.com</a></td>
								<td
									class="total-orders align-middle white-space-nowrap fw-semi-bold text-end">45</td>
								<td
									class="total-spent align-middle white-space-nowrap fw-bold text-end ps-3">$
									18975</td>
								<td class="city align-middle white-space-nowrap text-900 ps-7">New
									York</td>
								<td
									class="last-seen align-middle white-space-nowrap text-700 text-end">6
									hours ago</td>
								<td
									class="last-order align-middle white-space-nowrap text-700 text-end">Oct
									15, 12:00 PM</td>
							</tr>
							<tr
								class="hover-actions-trigger btn-reveal-trigger position-static">
								<td class="fs--1 align-middle ps-0 py-3">
									<div class="form-check mb-0 fs-0">
										<input class="form-check-input" type="checkbox" />
									</div>
								</td>
								<td class="customer align-middle white-space-nowrap pe-5"><a
									class="d-flex align-items-center" href="#!">
										<div class="avatar avatar-m">
											<img class="rounded-circle"
												src="../../../assets/img/team/avatar-placeholder.png" alt="" />
										</div>
										<p class="mb-0 ms-3 text-1100 fw-bold">Jennifer Schramm</p>
								</a></td>
								<td class="email align-middle white-space-nowrap pe-5"><a
									class="fw-semi-bold text-1100"
									href="mailto:jennifer@example.com">jennifer@example.com</a></td>
								<td
									class="total-orders align-middle white-space-nowrap fw-semi-bold text-end">39</td>
								<td
									class="total-spent align-middle white-space-nowrap fw-bold text-end ps-3">$
									8967</td>
								<td class="city align-middle white-space-nowrap text-900 ps-7">Charlotte</td>
								<td
									class="last-seen align-middle white-space-nowrap text-700 text-end">12
									hours ago</td>
								<td
									class="last-order align-middle white-space-nowrap text-700 text-end">Oct
									12, 11:00 AM</td>
							</tr>
							<tr
								class="hover-actions-trigger btn-reveal-trigger position-static">
								<td class="fs--1 align-middle ps-0 py-3">
									<div class="form-check mb-0 fs-0">
										<input class="form-check-input" type="checkbox" />
									</div>
								</td>
								<td class="customer align-middle white-space-nowrap pe-5"><a
									class="d-flex align-items-center" href="#!">
										<div class="avatar avatar-m">
											<img class="rounded-circle"
												src="../../../assets/img/team/32.png" alt="" />
										</div>
										<p class="mb-0 ms-3 text-1100 fw-bold">Raymond Mims</p>
								</a></td>
								<td class="email align-middle white-space-nowrap pe-5"><a
									class="fw-semi-bold text-1100"
									href="mailto:raymond@example.com">raymond@example.com</a></td>
								<td
									class="total-orders align-middle white-space-nowrap fw-semi-bold text-end">30</td>
								<td
									class="total-spent align-middle white-space-nowrap fw-bold text-end ps-3">$
									14587</td>
								<td class="city align-middle white-space-nowrap text-900 ps-7">Artesia</td>
								<td
									class="last-seen align-middle white-space-nowrap text-700 text-end">2
									day ago</td>
								<td
									class="last-order align-middle white-space-nowrap text-700 text-end">Oct
									10, 8:30 AM</td>
							</tr>
							<tr
								class="hover-actions-trigger btn-reveal-trigger position-static">
								<td class="fs--1 align-middle ps-0 py-3">
									<div class="form-check mb-0 fs-0">
										<input class="form-check-input" type="checkbox" />
									</div>
								</td>
								<td class="customer align-middle white-space-nowrap pe-5"><a
									class="d-flex align-items-center" href="#!">
										<div class="avatar avatar-m">
											<img class="rounded-circle"
												src="../../../assets/img/team/25.png" alt="" />
										</div>
										<p class="mb-0 ms-3 text-1100 fw-bold">Michael Jenkins</p>
								</a></td>
								<td class="email align-middle white-space-nowrap pe-5"><a
									class="fw-semi-bold text-1100"
									href="mailto:jenkins@example.com">jenkins@example.com</a></td>
								<td
									class="total-orders align-middle white-space-nowrap fw-semi-bold text-end">43</td>
								<td
									class="total-spent align-middle white-space-nowrap fw-bold text-end ps-3">$
									45697</td>
								<td class="city align-middle white-space-nowrap text-900 ps-7">Philadelphia</td>
								<td
									class="last-seen align-middle white-space-nowrap text-700 text-end">12
									hours ago</td>
								<td
									class="last-order align-middle white-space-nowrap text-700 text-end">Oct
									3, 8:30 AM</td>
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
	</div>
</body>
</html>