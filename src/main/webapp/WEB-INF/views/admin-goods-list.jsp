<%@ page language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Basic Page Info -->
	<meta charset="UTF-8">
	<title>DeskApp - Bootstrap Admin Dashboard HTML Template</title>

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
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
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
            <div class="row g-3 mb-4">
              <div class="col-auto">
                <h2 class="mb-0">Products</h2>
              </div>
            </div>
            <ul class="nav nav-links mb-3 mb-lg-2 mx-n3">
              <li class="nav-item"><a class="nav-link active" aria-current="page" href="#">All <span class="text-700 fw-semi-bold">(68817)</span></a></li>
              <li class="nav-item"><a class="nav-link" href="#">Published <span class="text-700 fw-semi-bold">(70348)</span></a></li>
              <li class="nav-item"><a class="nav-link" href="#">Drafts <span class="text-700 fw-semi-bold">(17)</span></a></li>
              <li class="nav-item"><a class="nav-link" href="#">On discount <span class="text-700 fw-semi-bold">(810)</span></a></li>
            </ul>
            <div id="products" data-list='{"valueNames":["product","price","category","tags","vendor","time"],"page":10,"pagination":true}'>
              <div class="mb-4">
                <div class="row g-3">
                  <div class="col-auto">
                    <div class="search-box">
                      <form class="position-relative" data-bs-toggle="search" data-bs-display="static"><input class="form-control search-input search" type="search" placeholder="Search products" aria-label="Search" />
                        <span class="fas fa-search search-box-icon"></span>
                      </form>
                    </div>
                  </div>
                  <div class="col-auto scrollbar overflow-hidden-y flex-grow-1">
                    <div class="btn-group position-static" role="group">
                      <div class="btn-group position-static text-nowrap"><button class="btn btn-phoenix-secondary px-7 flex-shrink-0" type="button" data-bs-toggle="dropdown" data-boundary="window" aria-haspopup="true" aria-expanded="false" data-bs-reference="parent"> Category<span class="fas fa-angle-down ms-2"></span></button>
                        <ul class="dropdown-menu">
                          <li><a class="dropdown-item" href="#">Action</a></li>
                          <li><a class="dropdown-item" href="#">Another action</a></li>
                          <li><a class="dropdown-item" href="#">Something else here</a></li>
                          <li>
                            <hr class="dropdown-divider" />
                          </li>
                          <li><a class="dropdown-item" href="#">Separated link</a></li>
                        </ul>
                      </div>
                      <div class="btn-group position-static text-nowrap"><button class="btn btn-sm btn-phoenix-secondary px-7 flex-shrink-0" type="button" data-bs-toggle="dropdown" data-boundary="window" aria-haspopup="true" aria-expanded="false" data-bs-reference="parent"> Vendor<span class="fas fa-angle-down ms-2"></span></button>
                        <ul class="dropdown-menu">
                          <li><a class="dropdown-item" href="#">Action</a></li>
                          <li><a class="dropdown-item" href="#">Another action</a></li>
                          <li><a class="dropdown-item" href="#">Something else here</a></li>
                          <li>
                            <hr class="dropdown-divider" />
                          </li>
                          <li><a class="dropdown-item" href="#">Separated link</a></li>
                        </ul>
                      </div><button class="btn btn-sm btn-phoenix-secondary px-7 flex-shrink-0">More filters</button>
                    </div>
                  </div>
                  <div class="col-auto"><button class="btn btn-link text-900 me-4 px-0"><span class="fa-solid fa-file-export fs--1 me-2"></span>Export</button><button class="btn btn-primary"><span class="fas fa-plus me-2"></span>Add product</button></div>
                </div>
              </div>
              <div class="mx-n4 px-4 mx-lg-n6 px-lg-6 bg-white border-top border-bottom border-200 position-relative top-1">
                <div class="table-responsive scrollbar mx-n1 px-1">
                  <table class="table fs--1 mb-0">
                    <thead>
                      <tr>
                        <th class="white-space-nowrap fs--1 align-middle ps-0">
                          <div class="form-check mb-0 fs-0"><input class="form-check-input" type="checkbox" /></div>
                        </th>
                        <th class="sort white-space-nowrap align-middle fs--2" scope="col" style="width:70px;"></th>
                        <th class="sort white-space-nowrap align-middle" scope="col" style="width:350px;" data-sort="product">PRODUCT NAME</th>
                        <th class="sort align-middle text-end" scope="col" data-sort="price" style="width:80px;">PRICE</th>
                        <th class="sort align-middle ps-4" scope="col" data-sort="category" style="width:150px;">CATEGORY</th>
                        <th class="sort align-middle ps-3" scope="col" data-sort="tags" style="width:250px;">TAGS</th>
                        <th class="sort align-middle fs-0 text-center" scope="col" style="width:125px;"></th>
                        <th class="sort align-middle" scope="col" data-sort="vendor" style="width:200px;">VENDOR</th>
                        <th class="sort align-middle" scope="col" data-sort="time" style="width:150px;">PUBLISHED ON</th>
                        <th class="sort text-end align-middle pe-0" scope="col"></th>
                      </tr>
                    </thead>
                    <tbody class="list" id="table-latest-review-body">
                      <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                        <td class="fs--1 align-middle ps-0">
                          <div class="form-check mb-0 fs-0"><input class="form-check-input" type="checkbox" /></div>
                        </td>
                        <td class="align-middle white-space-nowrap py-0"><img src="../../../assets/img//products/1.png" alt="" width="53" /></td>
                        <td class="product align-middle"><a class="fw-semi-bold line-clamp-3 mb-0" href="#!">Fitbit Sense Advanced Smartwatch with Tools for Heart Health, Stress Management &amp; Skin Temperature Trends, Carbon/Graphite, One Size (S &amp; ...</a></td>
                        <td class="price align-middle white-space-nowrap text-end fw-bold text-700">$39</td>
                        <td class="category align-middle white-space-nowrap text-600 fs--1 ps-4 fw-semi-bold">Plants</td>
                        <td class="tags align-middle review pb-2" style="min-width:225px;"><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Health</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Exercise</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Discipline</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Lifestyle</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Fitness</span></a></td>
                        <td class="align-middle review fs-0 text-center">
                          <div class="d-toggle-container">
                            <div class="d-block-hover"><span class="fas fa-star text-warning"></span></div>
                            <div class="d-none-hover"><span class="far fa-star text-warning"></span></div>
                          </div>
                        </td>
                        <td class="vendor align-middle text-start fw-semi-bold"><a href="#!">Blue Olive Plant sellers. Inc</a></td>
                        <td class="time align-middle white-space-nowrap text-600">Nov 12, 10:45 PM</td>
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
                      <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                        <td class="fs--1 align-middle ps-0">
                          <div class="form-check mb-0 fs-0"><input class="form-check-input" type="checkbox" /></div>
                        </td>
                        <td class="align-middle white-space-nowrap py-0"><img src="../../../assets/img//products/2.png" alt="" width="53" /></td>
                        <td class="product align-middle"><a class="fw-semi-bold line-clamp-3 mb-0" href="#!">iPhone 13 pro max-Pacific Blue-128GB storage</a></td>
                        <td class="price align-middle white-space-nowrap text-end fw-bold text-700">$87</td>
                        <td class="category align-middle white-space-nowrap text-600 fs--1 ps-4 fw-semi-bold">Furniture</td>
                        <td class="tags align-middle review pb-2" style="min-width:225px;"><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Class</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Camera</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Discipline</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">invincible</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Pro</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Swag</span></a></td>
                        <td class="align-middle review fs-0 text-center"><span class="fas fa-star text-warning"></span></td>
                        <td class="vendor align-middle text-start fw-semi-bold"><a href="#!">Beatrice Furnitures</a></td>
                        <td class="time align-middle white-space-nowrap text-600">Nov 11, 7:36 PM</td>
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
                      <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                        <td class="fs--1 align-middle ps-0">
                          <div class="form-check mb-0 fs-0"><input class="form-check-input" type="checkbox" /></div>
                        </td>
                        <td class="align-middle white-space-nowrap py-0"><img src="../../../assets/img//products/3.png" alt="" width="53" /></td>
                        <td class="product align-middle"><a class="fw-semi-bold line-clamp-3 mb-0" href="#!">Apple MacBook Pro 13 inch-M1-8/256GB-space</a></td>
                        <td class="price align-middle white-space-nowrap text-end fw-bold text-700">$9</td>
                        <td class="category align-middle white-space-nowrap text-600 fs--1 ps-4 fw-semi-bold">Plants</td>
                        <td class="tags align-middle review pb-2" style="min-width:225px;"><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Efficiency</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Handy</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Apple</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Creativity</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Gray</span></a></td>
                        <td class="align-middle review fs-0 text-center">
                          <div class="d-toggle-container">
                            <div class="d-block-hover"><span class="fas fa-star text-warning"></span></div>
                            <div class="d-none-hover"><span class="far fa-star text-warning"></span></div>
                          </div>
                        </td>
                        <td class="vendor align-middle text-start fw-semi-bold"><a href="#!">PlantPlanet</a></td>
                        <td class="time align-middle white-space-nowrap text-600">Nov 11, 8:16 AM</td>
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
                      <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                        <td class="fs--1 align-middle ps-0">
                          <div class="form-check mb-0 fs-0"><input class="form-check-input" type="checkbox" /></div>
                        </td>
                        <td class="align-middle white-space-nowrap py-0"><img src="../../../assets/img//products/4.png" alt="" width="53" /></td>
                        <td class="product align-middle"><a class="fw-semi-bold line-clamp-3 mb-0" href="#!">Apple iMac 24&quot; 4K Retina Display M1 8 Core CPU...</a></td>
                        <td class="price align-middle white-space-nowrap text-end fw-bold text-700">$8 - $58</td>
                        <td class="category align-middle white-space-nowrap text-600 fs--1 ps-4 fw-semi-bold">Toys</td>
                        <td class="tags align-middle review pb-2" style="min-width:225px;"><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Color</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Stunning</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Retina</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Green</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">PC killer</span></a></td>
                        <td class="align-middle review fs-0 text-center">
                          <div class="d-toggle-container">
                            <div class="d-block-hover"><span class="fas fa-star text-warning"></span></div>
                            <div class="d-none-hover"><span class="far fa-star text-warning"></span></div>
                          </div>
                        </td>
                        <td class="vendor align-middle text-start fw-semi-bold"><a href="#!">Kizzstore</a></td>
                        <td class="time align-middle white-space-nowrap text-600">Nov 8, 6:39 PM</td>
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
                      <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                        <td class="fs--1 align-middle ps-0">
                          <div class="form-check mb-0 fs-0"><input class="form-check-input" type="checkbox" /></div>
                        </td>
                        <td class="align-middle white-space-nowrap py-0"><img src="../../../assets/img//products/5.png" alt="" width="53" /></td>
                        <td class="product align-middle"><a class="fw-semi-bold line-clamp-3 mb-0" href="#!">Razer Kraken v3 x Wired 7.1 Surroung Sound Gaming headset</a></td>
                        <td class="price align-middle white-space-nowrap text-end fw-bold text-700">$120</td>
                        <td class="category align-middle white-space-nowrap text-600 fs--1 ps-4 fw-semi-bold">Fashion</td>
                        <td class="tags align-middle review pb-2" style="min-width:225px;"><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Music</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Audio</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Meeting</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Record</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Sound</span></a></td>
                        <td class="align-middle review fs-0 text-center">
                          <div class="d-toggle-container">
                            <div class="d-block-hover"><span class="fas fa-star text-warning"></span></div>
                            <div class="d-none-hover"><span class="far fa-star text-warning"></span></div>
                          </div>
                        </td>
                        <td class="vendor align-middle text-start fw-semi-bold"><a href="#!">Inertia Fashion</a></td>
                        <td class="time align-middle white-space-nowrap text-600">Nov 8, 5:32 PM</td>
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
                      <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                        <td class="fs--1 align-middle ps-0">
                          <div class="form-check mb-0 fs-0"><input class="form-check-input" type="checkbox" /></div>
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
                      <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                        <td class="fs--1 align-middle ps-0">
                          <div class="form-check mb-0 fs-0"><input class="form-check-input" type="checkbox" /></div>
                        </td>
                        <td class="align-middle white-space-nowrap py-0"><img src="../../../assets/img//products/7.png" alt="" width="53" /></td>
                        <td class="product align-middle"><a class="fw-semi-bold line-clamp-3 mb-0" href="#!">2021 Apple 12.9-inch iPad Pro (Wi‑Fi, 128GB) - Space Gray</a></td>
                        <td class="price align-middle white-space-nowrap text-end fw-bold text-700">$4</td>
                        <td class="category align-middle white-space-nowrap text-600 fs--1 ps-4 fw-semi-bold">Food</td>
                        <td class="tags align-middle review pb-2" style="min-width:225px;"><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Ipad</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Pro</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Creativity</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Thunderbolt</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Space</span></a></td>
                        <td class="align-middle review fs-0 text-center">
                          <div class="d-toggle-container">
                            <div class="d-block-hover"><span class="fas fa-star text-warning"></span></div>
                            <div class="d-none-hover"><span class="far fa-star text-warning"></span></div>
                          </div>
                        </td>
                        <td class="vendor align-middle text-start fw-semi-bold"><a href="#!">Maimuna’s Bakery</a></td>
                        <td class="time align-middle white-space-nowrap text-600">Nov 1, 7:45 AM</td>
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
                      <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                        <td class="fs--1 align-middle ps-0">
                          <div class="form-check mb-0 fs-0"><input class="form-check-input" type="checkbox" /></div>
                        </td>
                        <td class="align-middle white-space-nowrap py-0"><img src="../../../assets/img//products/8.png" alt="" width="53" /></td>
                        <td class="product align-middle"><a class="fw-semi-bold line-clamp-3 mb-0" href="#!">Amazon Basics Matte Black Wired Keyboard - US Layout (QWERTY)</a></td>
                        <td class="price align-middle white-space-nowrap text-end fw-bold text-700">$98</td>
                        <td class="category align-middle white-space-nowrap text-600 fs--1 ps-4 fw-semi-bold">Fashion</td>
                        <td class="tags align-middle review pb-2" style="min-width:225px;"><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Keyboard</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Smooth</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Butter</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">RGB</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Black</span></a></td>
                        <td class="align-middle review fs-0 text-center">
                          <div class="d-toggle-container">
                            <div class="d-block-hover"><span class="fas fa-star text-warning"></span></div>
                            <div class="d-none-hover"><span class="far fa-star text-warning"></span></div>
                          </div>
                        </td>
                        <td class="vendor align-middle text-start fw-semi-bold"><a href="#!">Green fashion</a></td>
                        <td class="time align-middle white-space-nowrap text-600">Nov 3, 12:27 PM</td>
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
                      <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                        <td class="fs--1 align-middle ps-0">
                          <div class="form-check mb-0 fs-0"><input class="form-check-input" type="checkbox" /></div>
                        </td>
                        <td class="align-middle white-space-nowrap py-0"><img src="../../../assets/img//products/10.png" alt="" width="53" /></td>
                        <td class="product align-middle"><a class="fw-semi-bold line-clamp-3 mb-0" href="#!">Apple Magic Mouse (Wireless, Rechargable) - Silver</a></td>
                        <td class="price align-middle white-space-nowrap text-end fw-bold text-700">$568</td>
                        <td class="category align-middle white-space-nowrap text-600 fs--1 ps-4 fw-semi-bold">Fashion</td>
                        <td class="tags align-middle review pb-2" style="min-width:225px;"><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Apple</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Wireless</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Battery</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Magic</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Performance</span></a></td>
                        <td class="align-middle review fs-0 text-center">
                          <div class="d-toggle-container">
                            <div class="d-block-hover"><span class="fas fa-star text-warning"></span></div>
                            <div class="d-none-hover"><span class="far fa-star text-warning"></span></div>
                          </div>
                        </td>
                        <td class="vendor align-middle text-start fw-semi-bold"><a href="#!">Eastacy</a></td>
                        <td class="time align-middle white-space-nowrap text-600">Nov 1, 9:39 AM</td>
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
                      <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                        <td class="fs--1 align-middle ps-0">
                          <div class="form-check mb-0 fs-0"><input class="form-check-input" type="checkbox" /></div>
                        </td>
                        <td class="align-middle white-space-nowrap py-0"><img src="../../../assets/img//products/12.png" alt="" width="53" /></td>
                        <td class="product align-middle"><a class="fw-semi-bold line-clamp-3 mb-0" href="#!">HORI Racing Wheel Apex for PlayStation 4_3, and PC</a></td>
                        <td class="price align-middle white-space-nowrap text-end fw-bold text-700">$17</td>
                        <td class="category align-middle white-space-nowrap text-600 fs--1 ps-4 fw-semi-bold">Drinks</td>
                        <td class="tags align-middle review pb-2" style="min-width:225px;"><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Steering</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Gaming</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">PS4/3</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Racing</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Apex</span></a></td>
                        <td class="align-middle review fs-0 text-center">
                          <div class="d-toggle-container">
                            <div class="d-block-hover"><span class="fas fa-star text-warning"></span></div>
                            <div class="d-none-hover"><span class="far fa-star text-warning"></span></div>
                          </div>
                        </td>
                        <td class="vendor align-middle text-start fw-semi-bold"><a href="#!">BrewerBro</a></td>
                        <td class="time align-middle white-space-nowrap text-600">Oct 30, 3:49 PM</td>
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
                      <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                        <td class="fs--1 align-middle ps-0">
                          <div class="form-check mb-0 fs-0"><input class="form-check-input" type="checkbox" /></div>
                        </td>
                        <td class="align-middle white-space-nowrap py-0"><img src="../../../assets/img//products/21.png" alt="" width="53" /></td>
                        <td class="product align-middle"><a class="fw-semi-bold line-clamp-3 mb-0" href="#!">Apple Pencil (2nd Generation)</a></td>
                        <td class="price align-middle white-space-nowrap text-end fw-bold text-700">$28</td>
                        <td class="category align-middle white-space-nowrap text-600 fs--1 ps-4 fw-semi-bold">Fashion</td>
                        <td class="tags align-middle review pb-2" style="min-width:225px;"><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Apple</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Creativity</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Color</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Stunning</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Apex</span></a></td>
                        <td class="align-middle review fs-0 text-center">
                          <div class="d-toggle-container">
                            <div class="d-block-hover"><span class="fas fa-star text-warning"></span></div>
                            <div class="d-none-hover"><span class="far fa-star text-warning"></span></div>
                          </div>
                        </td>
                        <td class="vendor align-middle text-start fw-semi-bold"><a href="#!">Eastacy</a></td>
                        <td class="time align-middle white-space-nowrap text-600">Nov 25, 5:00 PM</td>
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
                      <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                        <td class="fs--1 align-middle ps-0">
                          <div class="form-check mb-0 fs-0"><input class="form-check-input" type="checkbox" /></div>
                        </td>
                        <td class="align-middle white-space-nowrap py-0"><img src="../../../assets/img//products/16.png" alt="" width="53" /></td>
                        <td class="product align-middle"><a class="fw-semi-bold line-clamp-3 mb-0" href="#!">Apple AirPods (2nd Generation)</a></td>
                        <td class="price align-middle white-space-nowrap text-end fw-bold text-700">$20</td>
                        <td class="category align-middle white-space-nowrap text-600 fs--1 ps-4 fw-semi-bold">Fashion</td>
                        <td class="tags align-middle review pb-2" style="min-width:225px;"><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Music</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Audio</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Meeting</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Record</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Sound</span></a></td>
                        <td class="align-middle review fs-0 text-center"><span class="fas fa-star text-warning"></span></td>
                        <td class="vendor align-middle text-start fw-semi-bold"><a href="#!">FutureTech Inc</a></td>
                        <td class="time align-middle white-space-nowrap text-600">Sep 20, 1:00 PM</td>
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
                      <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                        <td class="fs--1 align-middle ps-0">
                          <div class="form-check mb-0 fs-0"><input class="form-check-input" type="checkbox" /></div>
                        </td>
                        <td class="align-middle white-space-nowrap py-0"><img src="../../../assets/img//products/17.png" alt="" width="53" /></td>
                        <td class="product align-middle"><a class="fw-semi-bold line-clamp-3 mb-0" href="#!">Xbox Series S</a></td>
                        <td class="price align-middle white-space-nowrap text-end fw-bold text-700">$30</td>
                        <td class="category align-middle white-space-nowrap text-600 fs--1 ps-4 fw-semi-bold">Gadget</td>
                        <td class="tags align-middle review pb-2" style="min-width:225px;"><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Lifestyle</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Audio</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Magic</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Performance</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Apex</span></a></td>
                        <td class="align-middle review fs-0 text-center">
                          <div class="d-toggle-container">
                            <div class="d-block-hover"><span class="fas fa-star text-warning"></span></div>
                            <div class="d-none-hover"><span class="far fa-star text-warning"></span></div>
                          </div>
                        </td>
                        <td class="vendor align-middle text-start fw-semi-bold"><a href="#!">FutureTech Inc</a></td>
                        <td class="time align-middle white-space-nowrap text-600">Oct 18, 3:40 PM</td>
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
                      <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                        <td class="fs--1 align-middle ps-0">
                          <div class="form-check mb-0 fs-0"><input class="form-check-input" type="checkbox" /></div>
                        </td>
                        <td class="align-middle white-space-nowrap py-0"><img src="../../../assets/img//products/18.png" alt="" width="53" /></td>
                        <td class="product align-middle"><a class="fw-semi-bold line-clamp-3 mb-0" href="#!">Seagate Portable 2TB External Hard Drive Portable HDD</a></td>
                        <td class="price align-middle white-space-nowrap text-end fw-bold text-700">$50</td>
                        <td class="category align-middle white-space-nowrap text-600 fs--1 ps-4 fw-semi-bold">Accessories</td>
                        <td class="tags align-middle review pb-2" style="min-width:225px;"><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Portable</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Gaming</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Magic</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Performance</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Black</span></a></td>
                        <td class="align-middle review fs-0 text-center">
                          <div class="d-toggle-container">
                            <div class="d-block-hover"><span class="fas fa-star text-warning"></span></div>
                            <div class="d-none-hover"><span class="far fa-star text-warning"></span></div>
                          </div>
                        </td>
                        <td class="vendor align-middle text-start fw-semi-bold"><a href="#!">Kizzstore</a></td>
                        <td class="time align-middle white-space-nowrap text-600">Sep 20, 1:00 PM</td>
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
                      <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                        <td class="fs--1 align-middle ps-0">
                          <div class="form-check mb-0 fs-0"><input class="form-check-input" type="checkbox" /></div>
                        </td>
                        <td class="align-middle white-space-nowrap py-0"><img src="../../../assets/img//products/19.png" alt="" width="53" /></td>
                        <td class="product align-middle"><a class="fw-semi-bold line-clamp-3 mb-0" href="#!">Intel Core i9-11900K Desktop Processor 8 Cores up to 5.3 GHz Unlocked</a></td>
                        <td class="price align-middle white-space-nowrap text-end fw-bold text-700">$80</td>
                        <td class="category align-middle white-space-nowrap text-600 fs--1 ps-4 fw-semi-bold">Accessories</td>
                        <td class="tags align-middle review pb-2" style="min-width:225px;"><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Intel</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Gaming</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Apex</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Performance</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Lifestyle</span></a></td>
                        <td class="align-middle review fs-0 text-center"><span class="fas fa-star text-warning"></span></td>
                        <td class="vendor align-middle text-start fw-semi-bold"><a href="#!">BrewerBro</a></td>
                        <td class="time align-middle white-space-nowrap text-600">Dec 01, 12:00 PM</td>
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
                      <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                        <td class="fs--1 align-middle ps-0">
                          <div class="form-check mb-0 fs-0"><input class="form-check-input" type="checkbox" /></div>
                        </td>
                        <td class="align-middle white-space-nowrap py-0"><img src="../../../assets/img//products/20.png" alt="" width="53" /></td>
                        <td class="product align-middle"><a class="fw-semi-bold line-clamp-3 mb-0" href="#!">ASUS TUF Gaming F15 Gaming Laptop</a></td>
                        <td class="price align-middle white-space-nowrap text-end fw-bold text-700">$150</td>
                        <td class="category align-middle white-space-nowrap text-600 fs--1 ps-4 fw-semi-bold">Computer</td>
                        <td class="tags align-middle review pb-2" style="min-width:225px;"><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Gaming</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Battery</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Performance</span></a><a class="text-decoration-none" href="#!"><span class="badge badge-tag me-2 mb-2">Wireless</span></a></td>
                        <td class="align-middle review fs-0 text-center">
                          <div class="d-toggle-container">
                            <div class="d-block-hover"><span class="fas fa-star text-warning"></span></div>
                            <div class="d-none-hover"><span class="far fa-star text-warning"></span></div>
                          </div>
                        </td>
                        <td class="vendor align-middle text-start fw-semi-bold"><a href="#!">Kizzstore</a></td>
                        <td class="time align-middle white-space-nowrap text-600">Dec 01, 12:00 PM</td>
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
                  <div class="col-auto d-flex"><button class="page-link" data-list-pagination="prev"><span class="fas fa-chevron-left"></span></button>
                    <ul class="mb-0 pagination"></ul><button class="page-link pe-0" data-list-pagination="next"><span class="fas fa-chevron-right"></span></button>
                  </div>
                </div>
              </div>
            </div>
          </div>
</body>
</html>