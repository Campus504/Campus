<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

	<!-- Basic Page Info -->
	<meta charset="UTF-8">
	<title>Campus - 주문 목록</title>

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
								<h4> 주문목록</h4>
							</div>
							<nav aria-label="breadcrumb" role="navigation">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="#">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">주문목록</li>
								</ol>
							</nav>
						</div>
						
						<div class="col-md-6 col-sm-12 text-right">
							<div class="dropdown">
								<a class="btn btn-primary dropdown-toggle" href="#"
									role="button" data-toggle="dropdown"> Oct 2022 </a>
								
								<div class="dropdown-menu dropdown-menu-right">
									<a class="dropdown-item" href="#">기능1)Export List </a> 
									<a class="dropdown-item" href="#">기능2)Policies </a> 
									<a class="dropdown-item" href="#">기능3)View Assets </a>
									<a class="dropdown-item" href="#">기능4)View Assets </a>
								</div>
							</div>
						</div>
					</div>
				</div>
					
		<div class="mb-9">
            <div class="row g-3 mb-4">
              <div class="col-auto">
                <h2 class="mb-0">사용자의 주문목록을 표시하는 페이지입니다. </h2>
              </div>
            </div>
            <ul class="nav nav-links mb-3 mb-lg-2 mx-n3">
              <li class="nav-item"><a class="nav-link active" aria-current="page" href="#">총주문 <span class="text-700 fw-semi-bold">(주문수)</span></a></li>
              <li class="nav-item"><a class="nav-link" href="#">대여수 <span class="text-700 fw-semi-bold">(대여수)</span></a></li>
              <li class="nav-item"><a class="nav-link" href="#">Test <span class="text-700 fw-semi-bold">(testNo)</span></a></li>
              
            </ul>
            
            <div id="orderTable" data-list='{"valueNames":["order","total","customer","payment_status","fulfilment_status","delivery_type","date"],"page":10,"pagination":true}'>
              <div class="mb-4">
                <div class="row g-3">
                  <div class="col-auto">
                    <div class="search-box">
                      <form class="position-relative" data-bs-toggle="search" data-bs-display="static">
                      <input class="form-control search-input search" type="search" placeholder="Search orders" aria-label="Search" />
                        <span class="fas fa-search search-box-icon"></span>
                      </form>
                    </div>
                  </div>
                  
                  <div class="col-auto scrollbar overflow-hidden-y flex-grow-1">
                    <div class="btn-group position-static" role="group">
                      <div class="btn-group position-static text-nowrap" role="group"><button class="btn btn-phoenix-secondary px-7 flex-shrink-0" type="button" data-bs-toggle="dropdown" data-boundary="window" aria-haspopup="true" aria-expanded="false" data-bs-reference="parent"> Payment status
                      <span class="fas fa-angle-down ms-2"></span></button>
                        <ul class="dropdown-menu dropdown-menu-end">
                          <li><a class="dropdown-item" href="#">Action</a></li>
                          <li><a class="dropdown-item" href="#">Another action</a></li>
                          <li><a class="dropdown-item" href="#">Something else here</a></li>
                          <li>
                            <hr class="dropdown-divider" />
                          </li>
                          <li><a class="dropdown-item" href="#">Separated link</a></li>
                        </ul>
                      </div>
                     </div>
                                     
                    </div>
                  
                  	<div>
						<button class="btn btn-primary"></button>
						<span class="fas fa-plus me-2"> 엑셀로 변환</span>
					</div>
                  
                </div>
              </div>
              
              <div class="mx-n4 px-4 mx-lg-n6 px-lg-6 bg-white border-top border-bottom border-200 position-relative top-1">
                <div class="table-responsive scrollbar mx-n1 px-1">
                  
                  <table class="table table-sm fs--1 mb-0">
                    <thead>
                      <tr>
                        <th class="white-space-nowrap fs--1 align-middle ps-0" style="width:26px;">
                          <div class="form-check mb-0 fs-0"><input class="form-check-input" type="checkbox" /></div>
                        </th>
                        <th class="sort white-space-nowrap align-middle pe-3" scope="col" data-sort="order" style="width:5%;">주문자</th>
                        <th class="sort align-middle text-end" scope="col" data-sort="total" style="width:6%;">총주문수량</th>
                        <th class="sort align-middle ps-8" scope="col" data-sort="customer" style="width:28%;">CUSTOMER</th>
                        <th class="sort align-middle pe-3" scope="col" data-sort="payment_status" style="width:10%;">PAYMENT STATUS</th>
                        <th class="sort align-middle text-start pe-3" scope="col" data-sort="fulfilment_status" style="width:12%;">FULFILMENT STATUS</th>
                        <th class="sort align-middle text-start" scope="col" data-sort="delivery_type" style="width:30%;">DELIVERY TYPE</th>
                        <th class="sort align-middle text-end pe-0" scope="col" data-sort="date">DATE</th>
                      </tr>
                    </thead>
                    
                    <tbody class="list" id="table-latest-review-body">
                      <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                        <td class="fs--1 align-middle px-0 py-3">
                          <div class="form-check mb-0 fs-0"><input class="form-check-input" type="checkbox" /></div>
                        </td>
                        <td class="order align-middle white-space-nowrap py-0"><a class="fw-semi-bold" href="#!">#2453</a></td>
                        <td class="total align-middle text-end fw-semi-bold">$87</td>
                        <td class="customer align-middle white-space-nowrap ps-8"><a class="d-flex align-items-center" href="#!">
                            <div class="avatar avatar-m"><img class="rounded-circle" src="../../../assets/img/team/32.png" alt="" /></div>
                            <h6 class="mb-0 ms-3 text-900">Carry Anna</h6>
                          </a></td>
                        <td class="payment_status align-middle white-space-nowrap text-start fw-bold text-700"><span class="badge badge-phoenix fs--2 badge-phoenix-success"><span class="badge-label">Complete</span><span class="ms-1" data-feather="check" style="height:12.8px;width:12.8px;"></span></span></td>
                        <td class="fulfilment_status align-middle white-space-nowrap text-start fw-bold text-700"><span class="badge badge-phoenix fs--2 badge-phoenix-secondary"><span class="badge-label">Cancelled</span><span class="ms-1" data-feather="x" style="height:12.8px;width:12.8px;"></span></span></td>
                        <td class="delivery_type align-middle white-space-nowrap text-900 fs--1 text-start">Cash on delivery</td>
                        <td class="date align-middle white-space-nowrap text-700 fs--1 ps-4 text-end">Dec 12, 12:56 PM</td>
                      </tr>
                      <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                        <td class="fs--1 align-middle px-0 py-3">
                          <div class="form-check mb-0 fs-0"><input class="form-check-input" type="checkbox" /></div>
                        </td>
                        <td class="order align-middle white-space-nowrap py-0"><a class="fw-semi-bold" href="#!">#2452</a></td>
                        <td class="total align-middle text-end fw-semi-bold">$7264</td>
                        <td class="customer align-middle white-space-nowrap ps-8"><a class="d-flex align-items-center" href="#!">
                            <div class="avatar avatar-m">
                              <div class="avatar-name rounded-circle"><span>M</span></div>
                            </div>
                            <h6 class="mb-0 ms-3 text-900">Milind Mikuja</h6>
                          </a></td>
                        <td class="payment_status align-middle white-space-nowrap text-start fw-bold text-700"><span class="badge badge-phoenix fs--2 badge-phoenix-secondary"><span class="badge-label">Cancelled</span><span class="ms-1" data-feather="x" style="height:12.8px;width:12.8px;"></span></span></td>
                        <td class="fulfilment_status align-middle white-space-nowrap text-start fw-bold text-700"><span class="badge badge-phoenix fs--2 badge-phoenix-info"><span class="badge-label">Ready to pickup</span><span class="ms-1" data-feather="info" style="height:12.8px;width:12.8px;"></span></span></td>
                        <td class="delivery_type align-middle white-space-nowrap text-900 fs--1 text-start">Free shipping</td>
                        <td class="date align-middle white-space-nowrap text-700 fs--1 ps-4 text-end">Dec 9, 2:28PM</td>
                      </tr>
                      <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                        <td class="fs--1 align-middle px-0 py-3">
                          <div class="form-check mb-0 fs-0"><input class="form-check-input" type="checkbox" /></div>
                        </td>
                        <td class="order align-middle white-space-nowrap py-0"><a class="fw-semi-bold" href="#!">#2451</a></td>
                        <td class="total align-middle text-end fw-semi-bold">$375</td>
                        <td class="customer align-middle white-space-nowrap ps-8"><a class="d-flex align-items-center" href="#!">
                            <div class="avatar avatar-m"><img class="rounded-circle" src="../../../assets/img/team/35.png" alt="" /></div>
                            <h6 class="mb-0 ms-3 text-900">Stanly Drinkwater</h6>
                          </a></td>
                        <td class="payment_status align-middle white-space-nowrap text-start fw-bold text-700"><span class="badge badge-phoenix fs--2 badge-phoenix-warning"><span class="badge-label">Pending</span><span class="ms-1" data-feather="clock" style="height:12.8px;width:12.8px;"></span></span></td>
                        <td class="fulfilment_status align-middle white-space-nowrap text-start fw-bold text-700"><span class="badge badge-phoenix fs--2 badge-phoenix-success"><span class="badge-label">Completed</span><span class="ms-1" data-feather="check" style="height:12.8px;width:12.8px;"></span></span></td>
                        <td class="delivery_type align-middle white-space-nowrap text-900 fs--1 text-start">Local pickup</td>
                        <td class="date align-middle white-space-nowrap text-700 fs--1 ps-4 text-end">Dec 4, 12:56 PM</td>
                      </tr>
                      <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                        <td class="fs--1 align-middle px-0 py-3">
                          <div class="form-check mb-0 fs-0"><input class="form-check-input" type="checkbox" /></div>
                        </td>
                        <td class="order align-middle white-space-nowrap py-0"><a class="fw-semi-bold" href="#!">#2450</a></td>
                        <td class="total align-middle text-end fw-semi-bold">$657</td>
                        <td class="customer align-middle white-space-nowrap ps-8"><a class="d-flex align-items-center" href="#!">
                            <div class="avatar avatar-m"><img class="rounded-circle" src="../../../assets/img/team/57.png" alt="" /></div>
                            <h6 class="mb-0 ms-3 text-900">Josef Stravinsky</h6>
                          </a></td>
                        <td class="payment_status align-middle white-space-nowrap text-start fw-bold text-700"><span class="badge badge-phoenix fs--2 badge-phoenix-secondary"><span class="badge-label">Cancelled</span><span class="ms-1" data-feather="x" style="height:12.8px;width:12.8px;"></span></span></td>
                        <td class="fulfilment_status align-middle white-space-nowrap text-start fw-bold text-700"><span class="badge badge-phoenix fs--2 badge-phoenix-warning"><span class="badge-label">Partially Fulfiled</span><span class="ms-1" data-feather="clock" style="height:12.8px;width:12.8px;"></span></span></td>
                        <td class="delivery_type align-middle white-space-nowrap text-900 fs--1 text-start">Standard shipping</td>
                        <td class="date align-middle white-space-nowrap text-700 fs--1 ps-4 text-end">Dec 1, 4:07 AM</td>
                      </tr>
                     
                    </tbody>
                  </table>
                </div>
                <div class="row align-items-center justify-content-between py-2 pe-0 fs--1">
                  <div class="col-auto d-flex">
                    <p class="mb-0 d-none d-sm-block me-3 fw-semi-bold text-900" data-list-info="data-list-info"></p><a class="fw-semi-bold" href="#!" data-list-view="*">View all<span class="fas fa-angle-right ms-1" data-fa-transform="down-1"></span></a><a class="fw-semi-bold d-none" href="#!" data-list-view="less">View Less<span class="fas fa-angle-right ms-1" data-fa-transform="down-1"></span></a>
                  </div>
                  <div class="col-auto d-flex"><button class="page-link" data-list-pagination="prev"><span class="fas fa-chevron-left"></span></button>
                    <ul class="mb-0 pagination"></ul><button class="page-link pe-0" data-list-pagination="next"><span class="fas fa-chevron-right"></span></button>
                  </div>
                </div>
              </div>
            </div>
          </div>
         
          <!-- js -->
         	<jsp:include page="/WEB-INF/views/modules/adminJS.jsp" />	
          <!-- end of js -->
          
</body>
</html>