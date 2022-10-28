<%@ page language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<!-- Basic Page Info -->
	<meta charset="UTF-8">
	<title>Campus - 상품 목록</title>

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
	<div class="mobile-menu-overlay">

	<div class="main-container">

		<div class="pd-ltr-20 xs-pd-20-10"> 
			<div class="min-height-200px"> 
			</div>
		</div>

				<!-- 페이지 해더입니다. 없으면 하단 컨텐츠가 모두 깨집니다!! -->
				<div class="page-header">
					<div class="row">
						<div class="col-md-6 col-sm-12">
							<div class="title">
								<h4> 상품목록</h4>
							</div>
							<nav aria-label="breadcrumb" role="navigation">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="#">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">상품목록</li>
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
			</div>
		</div>
				
				
				
		<div class="mb-9">
            <div class="row g-3 mb-4">
              <div class="col-auto">
                <h2 class="mb-0"> 상품 목록을 확인하는 페이지 입니다. </h2>
              </div>
            </div>
            
            <ul class="nav nav-links mb-3 mb-lg-2 mx-n3">
              <li class="nav-item"><a class="nav-link active" aria-current="page" href="#">전체상품<span class="text-700 fw-semi-bold">(상품수량)</span></a></li>
              <li class="nav-item"><a class="nav-link" href="#">텐트/타프 <span class="text-700 fw-semi-bold">(상품수량)</span></a></li>
              <li class="nav-item"><a class="nav-link" href="#">테이블/체어 <span class="text-700 fw-semi-bold">(상품수량)</span></a></li>
              <li class="nav-item"><a class="nav-link" href="#">침낭/매트 <span class="text-700 fw-semi-bold">(상품수량)</span></a></li>
              <li class="nav-item"><a class="nav-link" href="#">식기 <span class="text-700 fw-semi-bold">(상품수량)</span></a></li>
              <li class="nav-item"><a class="nav-link" href="#">화로/버너 <span class="text-700 fw-semi-bold">(상품수량)</span></a></li>
              <li class="nav-item"><a class="nav-link" href="#">캠핑소품 <span class="text-700 fw-semi-bold">(상품수량)</span></a></li>
            </ul>
            
            <div id="products" data-list='{"valueNames":["product","price","category","tags","vendor","time"],"page":10,"pagination":true}'>
              <div class="mb-4">
                <div class="row g-3">
                  <div class="col-auto">
                    <div class="search-box">
                      
                      <form class="position-relative" data-bs-toggle="search" data-bs-display="static">
                      <input class="form-control search-input search" type="search" placeholder="Search products" aria-label="Search" />
                        <span class="fas fa-search search-box-icon"></span>
                      </form>
                      
                   </div>
                 </div>
                 
                  <div class="col-auto scrollbar overflow-hidden-y flex-grow-1">
                    <div class="btn-group position-static" role="group">
                     
                      <div class="btn-group position-static text-nowrap">
                      <button class="btn btn-phoenix-secondary px-7 flex-shrink-0" type="button" data-bs-toggle="dropdown" data-boundary="window" aria-haspopup="true" aria-expanded="false" data-bs-reference="parent">Category </button>
                      <span class="fas fa-angle-down ms-2"></span>
                      
                        <ul class="dropdown-menu">
                          <li><a class="dropdown-item" href="#">Action</a></li>
                          <li><a class="dropdown-item" href="#">Another action</a></li>
                          <li><a class="dropdown-item" href="#">Something else here</a></li>
                          <li><hr class="dropdown-divider"></li>
                          <li><a class="dropdown-item" href="#">Separated link</a></li>
                        </ul>
                      </div>
                      
                    </div>
                  </div>
                  
                  	<div> 
                  	<button class="btn btn-primary"></button> 
                  	<span class="fas fa-plus me-2"> 엑셀로 변환 </span> 
                  	</div>
                  	
                </div>
              </div>
              
              <div class="mx-n4 px-4 mx-lg-n6 px-lg-6 bg-white border-top border-bottom border-200 position-relative top-1">
                <div class="table-responsive scrollbar mx-n1 px-1">
                  <table class="table fs--1 mb-0">
                    
                    <thead>
                      <tr>
                        <th class="white-space-nowrap fs--1 align-middle ps-0">
                          <div class="form-check mb-0 fs-0">
                          <input class="form-check-input" type="checkbox" /></div>
                        </th>
                        <th class="sort white-space-nowrap align-middle fs--2" scope="col" style="width:70px;"></th>
                        <th class="sort white-space-nowrap align-middle" scope="col" style="width:350px;" data-sort="product">ㅅ</th>
                        <th class="sort align-middle text-end" scope="col" data-sort="price" style="width:80px;">대여가격</th>
                        <th class="sort align-middle ps-4" scope="col" data-sort="category" style="width:150px;">CATEGORY</th>
                        <th class="sort align-middle ps-3" scope="col" data-sort="tags" style="width:250px;">TAGS</th>
                        <th class="sort align-middle fs-0 text-center" scope="col" style="width:125px;"></th>
                        <th class="sort align-middle" scope="col" data-sort="vendor" style="width:200px;">VENDOR</th>
                        <th class="sort align-middle" scope="col" data-sort="time" style="width:150px;">PUBLISHED ON</th>
                        <th class="sort text-end align-middle pe-0" scope="col"></th>
                      </tr>
                    </thead>
                                      
                      <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                        <td class="fs--1 align-middle ps-0">
                          <div class="form-check mb-0 fs-0"><input class="form-check-input" type="checkbox"></div>
                        </td>
                        <td class="align-middle white-space-nowrap py-0"><img src="../../../assets/img//products/6.png" alt="" width="53" /></td>
                        <td class="product align-middle"><a class="fw-semi-bold line-clamp-3 mb-0" href="#!">PlayStation 5 DualSense Wireless Controller</a></td>
                        <td class="price align-middle white-space-nowrap text-end fw-bold text-700">$239</td>
                        <td class="category align-middle white-space-nowrap text-600 fs--1 ps-4 fw-semi-bold">Gadgets</td>
                        <td class="tags align-middle review pb-2" style="min-width:225px;"><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Game</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Control</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Nav</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Playstation</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Wireless</span></a></td>
                        <td class="align-middle review fs-0 text-center">
                          <div class="d-toggle-container">
                            <div class="d-block-hover"><span class="fas fa-star text-warning"></span></div>
                            <div class="d-none-hover"><span class="far fa-star text-warning"></span></div>
                          </div>
                        </td>
                        <td class="vendor align-middle text-start fw-semi-bold"><a href="#!">FutureTech Inc</a></td>
                        <td class="time align-middle white-space-nowrap text-600">Nov 6, 11:34 PM</td>
                        <td class="align-middle white-space-nowrap text-end pe-0">
                          <div class="position-relative">
                            <div class="hover-actions"><button class="btn btn-sm btn-phoenix-secondary me-1 fs--2"><span class="fas fa-check"></span></button><button class="btn btn-sm btn-phoenix-secondary fs--2"><span class="fas fa-trash"></span></button></div>
                          </div>
                          <div class="font-sans-serif btn-reveal-trigger"><button class="btn btn-sm dropdown-toggle dropdown-caret-none transition-none btn-reveal fs--2" type="button" data-bs-toggle="dropdown" data-boundary="window" aria-haspopup="true" aria-expanded="false" data-bs-reference="parent"><span class="fas fa-ellipsis-h fs--2"></span></button>
                            <div class="dropdown-menu dropdown-menu-end py-2"><a class="dropdown-item" href="#!">View</a><a class="dropdown-item" href="#!">Export</a>
                              <div class="dropdown-divider"></div><a class="dropdown-item text-danger" href="#!">Remove</a>
                            </div>
                          </div>
                        </td>
                      </tr>
                      
                    </tbody>
                  </table>
                </div>
       
                <div class="row align-items-center justify-content-between py-2 pe-0 fs--1">
                  <div class="col-auto d-flex">
                    <p class="mb-0 d-none d-sm-block me-3 fw-semi-bold text-900" data-list-info="data-list-info"></p><a class="fw-semi-bold" href="#!" data-list-view="*">View all<span class="fas fa-angle-right ms-1" data-fa-transform="down-1"></span></a><a class="fw-semi-bold d-none" href="#!" data-list-view="less">View Less<span class="fas fa-angle-right ms-1" data-fa-transform="down-1"></span></a>
                  </div>
                  
                <div class="col-auto d-flex">
                <button class="page-link" data-list-pagination="prev">
                <span class="fas fa-chevron-left"></span></button>
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