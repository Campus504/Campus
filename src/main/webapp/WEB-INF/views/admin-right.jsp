<%@ page language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Basic Page Info -->
	<meta charset="UTF-8">
	<title>Campus - 관리자 권한</title>

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
	<div class="conatiner-fluid content-inner mt-n5 py-0">
		<div class="row">
			<div class="col-sm-12">
				<div class="card">
					<div class="card-header d-flex justify-content-between flex-wrap">
						<div class="header-title">
							<h4 class="card-title mb-0">Role & Permission</h4>
						</div>
						<div class="">
							<a href="#"
								class=" text-center btn btn-primary btn-icon mt-lg-0 mt-md-0 mt-3"
								data-bs-toggle="modal" data-bs-target="#staticBackdrop"> <i
								class="btn-inner"> <svg xmlns="http://www.w3.org/2000/svg"
										class="h-6 w-6" fill="none" viewBox="0 0 24 24"
										stroke="currentColor">
                                <path stroke-linecap="round"
											stroke-linejoin="round" stroke-width="2"
											d="M12 6v6m0 0v6m0-6h6m-6 0H6" />
                            </svg>
							</i> <span>New Permission</span>
							</a>
							<div class="modal fade" id="staticBackdrop"
								data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
								aria-labelledby="staticBackdropLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="staticBackdropLabel">Add new
												permission</h5>
											<button type="button" class="btn-close"
												data-bs-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body">
											<div class="form-group">
												<label for="email" class="form-label">permission
													title</label> <input type="email" class="form-control" id="email"
													aria-describedby="email" placeholder="Permission Title">
											</div>
											<div class="text-start">
												<button type="button" class="btn btn-primary"
													data-bs-dismiss="modal">Save</button>
												<button type="button" class="btn btn-danger">Cancel</button>
											</div>
										</div>
									</div>
								</div>
							</div>
							<a href="#"
								class=" text-center btn btn-primary btn-icon mt-lg-0 mt-md-0 mt-3"
								data-bs-toggle="modal" data-bs-target="#staticBackdrop-1"> <i
								class="btn-inner"> <svg xmlns="http://www.w3.org/2000/svg"
										class="h-6 w-6" fill="none" viewBox="0 0 24 24"
										stroke="currentColor">
                                <path stroke-linecap="round"
											stroke-linejoin="round" stroke-width="2"
											d="M12 6v6m0 0v6m0-6h6m-6 0H6" />
                            </svg>
							</i> <span>New Role</span>
							</a>
							<div class="modal fade" id="staticBackdrop-1"
								data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
								aria-labelledby="staticBackdropLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="staticBackdropLabel">Add new
												role</h5>
											<button type="button" class="btn-close"
												data-bs-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body">
											<div class="form-group">
												<label for="email" class="form-label">role title</label> <input
													type="email" class="form-control" id="email"
													aria-describedby="email" placeholder="Role Title">
											</div>
											<div>
												<span>status</span>
												<div class="form-check">
													<input class="form-check-input" type="radio"
														name="exampleRadios" id="exampleRadios2" value="option2">
													<label class="form-check-label" for="exampleRadios2">
														yes </label>
												</div>
												<div class="form-check">
													<input class="form-check-input" type="radio"
														name="exampleRadios" id="exampleRadios2" value="option2">
													<label class="form-check-label" for="exampleRadios2">
														no </label>
												</div>
											</div>
											<div class="text-start mt-2">
												<button type="button" class="btn btn-primary"
													data-bs-dismiss="modal">Save</button>
												<button type="button" class="btn btn-danger">Cancel</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th></th>
										<th class="text-center">ADMIN
											<div style="float: right;">
												<a class="btn btn-sm btn-icon text-primary flex-end"
													data-bs-toggle="tooltip" title="Edit User" href="#"> <span
													class="btn-inner"> <svg width="20"
															viewBox="0 0 24 24" fill="none"
															xmlns="http://www.w3.org/2000/svg">
                                                <path
																d="M11.4925 2.78906H7.75349C4.67849 2.78906 2.75049 4.96606 2.75049 8.04806V16.3621C2.75049 19.4441 4.66949 21.6211 7.75349 21.6211H16.5775C19.6625 21.6211 21.5815 19.4441 21.5815 16.3621V12.3341"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                                <path
																fill-rule="evenodd" clip-rule="evenodd"
																d="M8.82812 10.921L16.3011 3.44799C17.2321 2.51799 18.7411 2.51799 19.6721 3.44799L20.8891 4.66499C21.8201 5.59599 21.8201 7.10599 20.8891 8.03599L13.3801 15.545C12.9731 15.952 12.4211 16.181 11.8451 16.181H8.09912L8.19312 12.401C8.20712 11.845 8.43412 11.315 8.82812 10.921Z"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                                <path
																d="M15.1655 4.60254L19.7315 9.16854"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
												</span>
												</a> <a class="btn btn-sm btn-icon text-danger"
													data-bs-toggle="tooltip" title="Delete User" href="#">
													<span class="btn-inner"> <svg width="20"
															viewBox="0 0 24 24" fill="none"
															xmlns="http://www.w3.org/2000/svg" stroke="currentColor">
                                                <path
																d="M19.3248 9.46826C19.3248 9.46826 18.7818 16.2033 18.4668 19.0403C18.3168 20.3953 17.4798 21.1893 16.1088 21.2143C13.4998 21.2613 10.8878 21.2643 8.27979 21.2093C6.96079 21.1823 6.13779 20.3783 5.99079 19.0473C5.67379 16.1853 5.13379 9.46826 5.13379 9.46826"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                                <path
																d="M20.708 6.23975H3.75" stroke="currentColor"
																stroke-width="1.5" stroke-linecap="round"
																stroke-linejoin="round"></path>
                                                <path
																d="M17.4406 6.23973C16.6556 6.23973 15.9796 5.68473 15.8256 4.91573L15.5826 3.69973C15.4326 3.13873 14.9246 2.75073 14.3456 2.75073H10.1126C9.53358 2.75073 9.02558 3.13873 8.87558 3.69973L8.63258 4.91573C8.47858 5.68473 7.80258 6.23973 7.01758 6.23973"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
												</span>
												</a>
											</div>
										</th>
										<th class="text-center">DEMO ADMIN
											<div style="float: right;">
												<a class="btn btn-sm btn-icon text-primary flex-end"
													data-bs-toggle="tooltip" title="Edit User" href="#"> <span
													class="btn-inner"> <svg width="20"
															viewBox="0 0 24 24" fill="none"
															xmlns="http://www.w3.org/2000/svg">
                                                <path
																d="M11.4925 2.78906H7.75349C4.67849 2.78906 2.75049 4.96606 2.75049 8.04806V16.3621C2.75049 19.4441 4.66949 21.6211 7.75349 21.6211H16.5775C19.6625 21.6211 21.5815 19.4441 21.5815 16.3621V12.3341"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                                <path
																fill-rule="evenodd" clip-rule="evenodd"
																d="M8.82812 10.921L16.3011 3.44799C17.2321 2.51799 18.7411 2.51799 19.6721 3.44799L20.8891 4.66499C21.8201 5.59599 21.8201 7.10599 20.8891 8.03599L13.3801 15.545C12.9731 15.952 12.4211 16.181 11.8451 16.181H8.09912L8.19312 12.401C8.20712 11.845 8.43412 11.315 8.82812 10.921Z"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                                <path
																d="M15.1655 4.60254L19.7315 9.16854"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
												</span>
												</a> <a class="btn btn-sm btn-icon text-danger"
													data-bs-toggle="tooltip" title="Delete User" href="#">
													<span class="btn-inner"> <svg width="20"
															viewBox="0 0 24 24" fill="none"
															xmlns="http://www.w3.org/2000/svg" stroke="currentColor">
                                                <path
																d="M19.3248 9.46826C19.3248 9.46826 18.7818 16.2033 18.4668 19.0403C18.3168 20.3953 17.4798 21.1893 16.1088 21.2143C13.4998 21.2613 10.8878 21.2643 8.27979 21.2093C6.96079 21.1823 6.13779 20.3783 5.99079 19.0473C5.67379 16.1853 5.13379 9.46826 5.13379 9.46826"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                                <path
																d="M20.708 6.23975H3.75" stroke="currentColor"
																stroke-width="1.5" stroke-linecap="round"
																stroke-linejoin="round"></path>
                                                <path
																d="M17.4406 6.23973C16.6556 6.23973 15.9796 5.68473 15.8256 4.91573L15.5826 3.69973C15.4326 3.13873 14.9246 2.75073 14.3456 2.75073H10.1126C9.53358 2.75073 9.02558 3.13873 8.87558 3.69973L8.63258 4.91573C8.47858 5.68473 7.80258 6.23973 7.01758 6.23973"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
												</span>
												</a>
											</div>
										</th>
										<th class="text-center">USER
											<div style="float: right;">
												<a class="btn btn-sm btn-icon text-primary flex-end"
													data-bs-toggle="tooltip" title="Edit User" href="#"> <span
													class="btn-inner"> <svg width="20"
															viewBox="0 0 24 24" fill="none"
															xmlns="http://www.w3.org/2000/svg">
                                                <path
																d="M11.4925 2.78906H7.75349C4.67849 2.78906 2.75049 4.96606 2.75049 8.04806V16.3621C2.75049 19.4441 4.66949 21.6211 7.75349 21.6211H16.5775C19.6625 21.6211 21.5815 19.4441 21.5815 16.3621V12.3341"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                                <path
																fill-rule="evenodd" clip-rule="evenodd"
																d="M8.82812 10.921L16.3011 3.44799C17.2321 2.51799 18.7411 2.51799 19.6721 3.44799L20.8891 4.66499C21.8201 5.59599 21.8201 7.10599 20.8891 8.03599L13.3801 15.545C12.9731 15.952 12.4211 16.181 11.8451 16.181H8.09912L8.19312 12.401C8.20712 11.845 8.43412 11.315 8.82812 10.921Z"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                                <path
																d="M15.1655 4.60254L19.7315 9.16854"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
												</span>
												</a> <a class="btn btn-sm btn-icon text-danger"
													data-bs-toggle="tooltip" title="Delete User" href="#">
													<span class="btn-inner"> <svg width="20"
															viewBox="0 0 24 24" fill="none"
															xmlns="http://www.w3.org/2000/svg" stroke="currentColor">
                                                <path
																d="M19.3248 9.46826C19.3248 9.46826 18.7818 16.2033 18.4668 19.0403C18.3168 20.3953 17.4798 21.1893 16.1088 21.2143C13.4998 21.2613 10.8878 21.2643 8.27979 21.2093C6.96079 21.1823 6.13779 20.3783 5.99079 19.0473C5.67379 16.1853 5.13379 9.46826 5.13379 9.46826"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                                <path
																d="M20.708 6.23975H3.75" stroke="currentColor"
																stroke-width="1.5" stroke-linecap="round"
																stroke-linejoin="round"></path>
                                                <path
																d="M17.4406 6.23973C16.6556 6.23973 15.9796 5.68473 15.8256 4.91573L15.5826 3.69973C15.4326 3.13873 14.9246 2.75073 14.3456 2.75073H10.1126C9.53358 2.75073 9.02558 3.13873 8.87558 3.69973L8.63258 4.91573C8.47858 5.68473 7.80258 6.23973 7.01758 6.23973"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
												</span>
												</a>
											</div>
										</th>
									</tr>
								</thead>
								<tbody>
									<tr class="">
										<td class="">Role
											<div style="float: right;">
												<a class="btn btn-sm btn-icon text-primary flex-end"
													data-bs-toggle="tooltip" title="Edit User" href="#"> <span
													class="btn-inner"> <svg width="20"
															viewBox="0 0 24 24" fill="none"
															xmlns="http://www.w3.org/2000/svg">
                                                    <path
																d="M11.4925 2.78906H7.75349C4.67849 2.78906 2.75049 4.96606 2.75049 8.04806V16.3621C2.75049 19.4441 4.66949 21.6211 7.75349 21.6211H16.5775C19.6625 21.6211 21.5815 19.4441 21.5815 16.3621V12.3341"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path
																fill-rule="evenodd" clip-rule="evenodd"
																d="M8.82812 10.921L16.3011 3.44799C17.2321 2.51799 18.7411 2.51799 19.6721 3.44799L20.8891 4.66499C21.8201 5.59599 21.8201 7.10599 20.8891 8.03599L13.3801 15.545C12.9731 15.952 12.4211 16.181 11.8451 16.181H8.09912L8.19312 12.401C8.20712 11.845 8.43412 11.315 8.82812 10.921Z"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path
																d="M15.1655 4.60254L19.7315 9.16854"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                                </svg>
												</span>
												</a> <a class="btn btn-sm btn-icon text-danger "
													data-bs-toggle="tooltip" title="Delete User" href="#">
													<span class="btn-inner"> <svg width="20"
															viewBox="0 0 24 24" fill="none"
															xmlns="http://www.w3.org/2000/svg" stroke="currentColor">
                                                    <path
																d="M19.3248 9.46826C19.3248 9.46826 18.7818 16.2033 18.4668 19.0403C18.3168 20.3953 17.4798 21.1893 16.1088 21.2143C13.4998 21.2613 10.8878 21.2643 8.27979 21.2093C6.96079 21.1823 6.13779 20.3783 5.99079 19.0473C5.67379 16.1853 5.13379 9.46826 5.13379 9.46826"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path
																d="M20.708 6.23975H3.75" stroke="currentColor"
																stroke-width="1.5" stroke-linecap="round"
																stroke-linejoin="round"></path>
                                                    <path
																d="M17.4406 6.23973C16.6556 6.23973 15.9796 5.68473 15.8256 4.91573L15.5826 3.69973C15.4326 3.13873 14.9246 2.75073 14.3456 2.75073H10.1126C9.53358 2.75073 9.02558 3.13873 8.87558 3.69973L8.63258 4.91573C8.47858 5.68473 7.80258 6.23973 7.01758 6.23973"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                                </svg>
												</span>
												</a>
											</div>
										</td>
										<td class="text-center"><input class="form-check-input"
											type="checkbox"></td>
										<td class="text-center"><input class="form-check-input"
											type="checkbox"></td>
										<td class="text-center"><input class="form-check-input"
											type="checkbox"></td>
									</tr>
									<tr class="">
										<td class="">Role Add
											<div style="float: right;">
												<a class="btn btn-sm btn-icon text-primary flex-end"
													data-bs-toggle="tooltip" title="Edit User" href="#"> <span
													class="btn-inner"> <svg width="20"
															viewBox="0 0 24 24" fill="none"
															xmlns="http://www.w3.org/2000/svg">
                                                    <path
																d="M11.4925 2.78906H7.75349C4.67849 2.78906 2.75049 4.96606 2.75049 8.04806V16.3621C2.75049 19.4441 4.66949 21.6211 7.75349 21.6211H16.5775C19.6625 21.6211 21.5815 19.4441 21.5815 16.3621V12.3341"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path
																fill-rule="evenodd" clip-rule="evenodd"
																d="M8.82812 10.921L16.3011 3.44799C17.2321 2.51799 18.7411 2.51799 19.6721 3.44799L20.8891 4.66499C21.8201 5.59599 21.8201 7.10599 20.8891 8.03599L13.3801 15.545C12.9731 15.952 12.4211 16.181 11.8451 16.181H8.09912L8.19312 12.401C8.20712 11.845 8.43412 11.315 8.82812 10.921Z"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path
																d="M15.1655 4.60254L19.7315 9.16854"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                                </svg>
												</span>
												</a> <a class="btn btn-sm btn-icon text-danger "
													data-bs-toggle="tooltip" title="Delete User" href="#">
													<span class="btn-inner"> <svg width="20"
															viewBox="0 0 24 24" fill="none"
															xmlns="http://www.w3.org/2000/svg" stroke="currentColor">
                                                    <path
																d="M19.3248 9.46826C19.3248 9.46826 18.7818 16.2033 18.4668 19.0403C18.3168 20.3953 17.4798 21.1893 16.1088 21.2143C13.4998 21.2613 10.8878 21.2643 8.27979 21.2093C6.96079 21.1823 6.13779 20.3783 5.99079 19.0473C5.67379 16.1853 5.13379 9.46826 5.13379 9.46826"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path
																d="M20.708 6.23975H3.75" stroke="currentColor"
																stroke-width="1.5" stroke-linecap="round"
																stroke-linejoin="round"></path>
                                                    <path
																d="M17.4406 6.23973C16.6556 6.23973 15.9796 5.68473 15.8256 4.91573L15.5826 3.69973C15.4326 3.13873 14.9246 2.75073 14.3456 2.75073H10.1126C9.53358 2.75073 9.02558 3.13873 8.87558 3.69973L8.63258 4.91573C8.47858 5.68473 7.80258 6.23973 7.01758 6.23973"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                                </svg>
												</span>
												</a>
											</div>
										</td>
										<td class="text-center"><input class="form-check-input"
											type="checkbox"></td>
										<td class="text-center"><input class="form-check-input"
											type="checkbox" checked></td>
										<td class="text-center"><input class="form-check-input"
											type="checkbox" checked></td>
									</tr>
									<tr class="">
										<td class="">Role List
											<div style="float: right;">
												<a class="btn btn-sm btn-icon text-primary flex-end"
													data-bs-toggle="tooltip" title="Edit User" href="#"> <span
													class="btn-inner"> <svg width="20"
															viewBox="0 0 24 24" fill="none"
															xmlns="http://www.w3.org/2000/svg">
                                                    <path
																d="M11.4925 2.78906H7.75349C4.67849 2.78906 2.75049 4.96606 2.75049 8.04806V16.3621C2.75049 19.4441 4.66949 21.6211 7.75349 21.6211H16.5775C19.6625 21.6211 21.5815 19.4441 21.5815 16.3621V12.3341"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path
																fill-rule="evenodd" clip-rule="evenodd"
																d="M8.82812 10.921L16.3011 3.44799C17.2321 2.51799 18.7411 2.51799 19.6721 3.44799L20.8891 4.66499C21.8201 5.59599 21.8201 7.10599 20.8891 8.03599L13.3801 15.545C12.9731 15.952 12.4211 16.181 11.8451 16.181H8.09912L8.19312 12.401C8.20712 11.845 8.43412 11.315 8.82812 10.921Z"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path
																d="M15.1655 4.60254L19.7315 9.16854"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                                </svg>
												</span>
												</a> <a class="btn btn-sm btn-icon text-danger "
													data-bs-toggle="tooltip" title="Delete User" href="#">
													<span class="btn-inner"> <svg width="20"
															viewBox="0 0 24 24" fill="none"
															xmlns="http://www.w3.org/2000/svg" stroke="currentColor">
                                                    <path
																d="M19.3248 9.46826C19.3248 9.46826 18.7818 16.2033 18.4668 19.0403C18.3168 20.3953 17.4798 21.1893 16.1088 21.2143C13.4998 21.2613 10.8878 21.2643 8.27979 21.2093C6.96079 21.1823 6.13779 20.3783 5.99079 19.0473C5.67379 16.1853 5.13379 9.46826 5.13379 9.46826"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path
																d="M20.708 6.23975H3.75" stroke="currentColor"
																stroke-width="1.5" stroke-linecap="round"
																stroke-linejoin="round"></path>
                                                    <path
																d="M17.4406 6.23973C16.6556 6.23973 15.9796 5.68473 15.8256 4.91573L15.5826 3.69973C15.4326 3.13873 14.9246 2.75073 14.3456 2.75073H10.1126C9.53358 2.75073 9.02558 3.13873 8.87558 3.69973L8.63258 4.91573C8.47858 5.68473 7.80258 6.23973 7.01758 6.23973"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                                </svg>
												</span>
												</a>
											</div>
										</td>
										<td class="text-center"><input class="form-check-input"
											type="checkbox"></td>
										<td class="text-center"><input class="form-check-input"
											type="checkbox"></td>
										<td class="text-center"><input class="form-check-input"
											type="checkbox"></td>
									</tr>
									<tr class="">
										<td class="">Permission
											<div style="float: right;">
												<a class="btn btn-sm btn-icon text-primary flex-end"
													data-bs-toggle="tooltip" title="Edit User" href="#"> <span
													class="btn-inner"> <svg width="20"
															viewBox="0 0 24 24" fill="none"
															xmlns="http://www.w3.org/2000/svg">
                                                    <path
																d="M11.4925 2.78906H7.75349C4.67849 2.78906 2.75049 4.96606 2.75049 8.04806V16.3621C2.75049 19.4441 4.66949 21.6211 7.75349 21.6211H16.5775C19.6625 21.6211 21.5815 19.4441 21.5815 16.3621V12.3341"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path
																fill-rule="evenodd" clip-rule="evenodd"
																d="M8.82812 10.921L16.3011 3.44799C17.2321 2.51799 18.7411 2.51799 19.6721 3.44799L20.8891 4.66499C21.8201 5.59599 21.8201 7.10599 20.8891 8.03599L13.3801 15.545C12.9731 15.952 12.4211 16.181 11.8451 16.181H8.09912L8.19312 12.401C8.20712 11.845 8.43412 11.315 8.82812 10.921Z"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path
																d="M15.1655 4.60254L19.7315 9.16854"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                                </svg>
												</span>
												</a> <a class="btn btn-sm btn-icon text-danger "
													data-bs-toggle="tooltip" title="Delete User" href="#">
													<span class="btn-inner"> <svg width="20"
															viewBox="0 0 24 24" fill="none"
															xmlns="http://www.w3.org/2000/svg" stroke="currentColor">
                                                    <path
																d="M19.3248 9.46826C19.3248 9.46826 18.7818 16.2033 18.4668 19.0403C18.3168 20.3953 17.4798 21.1893 16.1088 21.2143C13.4998 21.2613 10.8878 21.2643 8.27979 21.2093C6.96079 21.1823 6.13779 20.3783 5.99079 19.0473C5.67379 16.1853 5.13379 9.46826 5.13379 9.46826"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path
																d="M20.708 6.23975H3.75" stroke="currentColor"
																stroke-width="1.5" stroke-linecap="round"
																stroke-linejoin="round"></path>
                                                    <path
																d="M17.4406 6.23973C16.6556 6.23973 15.9796 5.68473 15.8256 4.91573L15.5826 3.69973C15.4326 3.13873 14.9246 2.75073 14.3456 2.75073H10.1126C9.53358 2.75073 9.02558 3.13873 8.87558 3.69973L8.63258 4.91573C8.47858 5.68473 7.80258 6.23973 7.01758 6.23973"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                                </svg>
												</span>
												</a>
											</div>
										</td>
										<td class="text-center"><input class="form-check-input"
											type="checkbox" checked></td>
										<td class="text-center"><input class="form-check-input"
											type="checkbox" checked></td>
										<td class="text-center"><input class="form-check-input"
											type="checkbox" checked></td>
									</tr>
									<tr class="">
										<td class="">Permission Add
											<div style="float: right;">
												<a class="btn btn-sm btn-icon text-primary flex-end"
													data-bs-toggle="tooltip" title="Edit User" href="#"> <span
													class="btn-inner"> <svg width="20"
															viewBox="0 0 24 24" fill="none"
															xmlns="http://www.w3.org/2000/svg">
                                                    <path
																d="M11.4925 2.78906H7.75349C4.67849 2.78906 2.75049 4.96606 2.75049 8.04806V16.3621C2.75049 19.4441 4.66949 21.6211 7.75349 21.6211H16.5775C19.6625 21.6211 21.5815 19.4441 21.5815 16.3621V12.3341"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path
																fill-rule="evenodd" clip-rule="evenodd"
																d="M8.82812 10.921L16.3011 3.44799C17.2321 2.51799 18.7411 2.51799 19.6721 3.44799L20.8891 4.66499C21.8201 5.59599 21.8201 7.10599 20.8891 8.03599L13.3801 15.545C12.9731 15.952 12.4211 16.181 11.8451 16.181H8.09912L8.19312 12.401C8.20712 11.845 8.43412 11.315 8.82812 10.921Z"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path
																d="M15.1655 4.60254L19.7315 9.16854"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                                </svg>
												</span>
												</a> <a class="btn btn-sm btn-icon text-danger "
													data-bs-toggle="tooltip" title="Delete User" href="#">
													<span class="btn-inner"> <svg width="20"
															viewBox="0 0 24 24" fill="none"
															xmlns="http://www.w3.org/2000/svg" stroke="currentColor">
                                                    <path
																d="M19.3248 9.46826C19.3248 9.46826 18.7818 16.2033 18.4668 19.0403C18.3168 20.3953 17.4798 21.1893 16.1088 21.2143C13.4998 21.2613 10.8878 21.2643 8.27979 21.2093C6.96079 21.1823 6.13779 20.3783 5.99079 19.0473C5.67379 16.1853 5.13379 9.46826 5.13379 9.46826"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path
																d="M20.708 6.23975H3.75" stroke="currentColor"
																stroke-width="1.5" stroke-linecap="round"
																stroke-linejoin="round"></path>
                                                    <path
																d="M17.4406 6.23973C16.6556 6.23973 15.9796 5.68473 15.8256 4.91573L15.5826 3.69973C15.4326 3.13873 14.9246 2.75073 14.3456 2.75073H10.1126C9.53358 2.75073 9.02558 3.13873 8.87558 3.69973L8.63258 4.91573C8.47858 5.68473 7.80258 6.23973 7.01758 6.23973"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                                </svg>
												</span>
												</a>
											</div>
										</td>
										<td class="text-center"><input class="form-check-input"
											type="checkbox" checked></td>
										<td class="text-center"><input class="form-check-input"
											type="checkbox" checked></td>
										<td class="text-center"><input class="form-check-input"
											type="checkbox" checked></td>
									</tr>
									<tr class="">
										<td class="">Permission List
											<div style="float: right;">
												<a class="btn btn-sm btn-icon text-primary flex-end"
													data-bs-toggle="tooltip" title="Edit User" href="#"> <span
													class="btn-inner"> <svg width="20"
															viewBox="0 0 24 24" fill="none"
															xmlns="http://www.w3.org/2000/svg">
                                                    <path
																d="M11.4925 2.78906H7.75349C4.67849 2.78906 2.75049 4.96606 2.75049 8.04806V16.3621C2.75049 19.4441 4.66949 21.6211 7.75349 21.6211H16.5775C19.6625 21.6211 21.5815 19.4441 21.5815 16.3621V12.3341"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path
																fill-rule="evenodd" clip-rule="evenodd"
																d="M8.82812 10.921L16.3011 3.44799C17.2321 2.51799 18.7411 2.51799 19.6721 3.44799L20.8891 4.66499C21.8201 5.59599 21.8201 7.10599 20.8891 8.03599L13.3801 15.545C12.9731 15.952 12.4211 16.181 11.8451 16.181H8.09912L8.19312 12.401C8.20712 11.845 8.43412 11.315 8.82812 10.921Z"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path
																d="M15.1655 4.60254L19.7315 9.16854"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                                </svg>
												</span>
												</a> <a class="btn btn-sm btn-icon text-danger "
													data-bs-toggle="tooltip" title="Delete User" href="#">
													<span class="btn-inner"> <svg width="20"
															viewBox="0 0 24 24" fill="none"
															xmlns="http://www.w3.org/2000/svg" stroke="currentColor">
                                                    <path
																d="M19.3248 9.46826C19.3248 9.46826 18.7818 16.2033 18.4668 19.0403C18.3168 20.3953 17.4798 21.1893 16.1088 21.2143C13.4998 21.2613 10.8878 21.2643 8.27979 21.2093C6.96079 21.1823 6.13779 20.3783 5.99079 19.0473C5.67379 16.1853 5.13379 9.46826 5.13379 9.46826"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path
																d="M20.708 6.23975H3.75" stroke="currentColor"
																stroke-width="1.5" stroke-linecap="round"
																stroke-linejoin="round"></path>
                                                    <path
																d="M17.4406 6.23973C16.6556 6.23973 15.9796 5.68473 15.8256 4.91573L15.5826 3.69973C15.4326 3.13873 14.9246 2.75073 14.3456 2.75073H10.1126C9.53358 2.75073 9.02558 3.13873 8.87558 3.69973L8.63258 4.91573C8.47858 5.68473 7.80258 6.23973 7.01758 6.23973"
																stroke="currentColor" stroke-width="1.5"
																stroke-linecap="round" stroke-linejoin="round"></path>
                                                </svg>
												</span>
												</a>
											</div>
										</td>
										<td class="text-center"><input class="form-check-input"
											type="checkbox"></td>
										<td class="text-center"><input class="form-check-input"
											type="checkbox"></td>
										<td class="text-center"><input class="form-check-input"
											type="checkbox"></td>
									</tr>
								</tbody>
							</table>
							<div class="text-center">
								<a href="./admin.html" type="button" class="btn btn-primary">Save</a>
							</div>
						</div>
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


