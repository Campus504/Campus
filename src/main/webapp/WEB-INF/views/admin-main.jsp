<%@ page language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
	<!-- Basic Page Info -->
	<meta charset="UTF-8">
	<title>Campus - 관리자 메인 페이지</title>

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
	<script src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());

		gtag('config', 'UA-119386393-1');
	</script>
</head>
<body>
	<div class="pre-loader">
		<div class="pre-loader-box">
			<div class="loader-logo"><img src="/campus/resources/vendors/images/deskapp-logo.svg" alt=""></div>
			<div class='loader-progress' id="progress_div">
				<div class='bar' id='bar1'></div>
			</div>
			<div class='percent' id='percent1'>0%</div>
			<div class="loading-text">
				Loading...
			</div>
		</div>
	</div>
<!--  header -->
	<jsp:include page="/WEB-INF/views/modules/adminHeader.jsp" />
<!-- end of header -->
	

<!--  sidebar -->
	<jsp:include page="/WEB-INF/views/modules/adminSidebar.jsp" />
<!--  end of sidebar -->
	<div class="mobile-menu-overlay"></div>

	<div class="main-container">
		<div class="pd-ltr-20">
			<div class="card-box pd-20 height-100-p mb-30">
				<div class="row align-items-center">
					<div class="col-md-4">
						<img src="/campus/resources/vendors/images/banner-img.png" alt="">
					</div>
					<div class="col-md-8">
						<h4 class="font-20 weight-500 mb-10 text-capitalize">
							환영합니다
						</h4>
						<div  class="font-20 weight-500 mb-10 text-capitalize">
							<div class="weight-600 font-30 text-blue">${loginuser.memberId}님!</div>
						</div>
						<p class="font-18 max-width-600"></p>
					</div>
				</div>
			</div>
			
			<div class="row2" style="width:1350px; display: -webkit-box; margin-right: -15px; margin-left: -15px;">
				<div class="col-xl-8 mb-30">
					<div class="card-box height-100-p pd-20">
						<h2 class="h4 mb-20"></h2>
						<div id="chart-bar"></div>
					</div>
				</div>
				<div class="col-md-6 mb-30">
				<div class="bg-white pd-20 card-box mb-30">
				<h2 class="h4 mb-20"></h2>
					<div id="chart-pie"></div>
				</div>
					</div>
			</div>
			
			<div class="card-box mb-30">
				<h2 class="h4 pd-20">인기 상품</h2>
				<table class="table">
					<thead>
						<tr>
							<th>상품명</th>
							<th>브랜드</th>
							<th>카테고리</th>
							
						</tr>
					</thead>
					<tbody>
					
					<c:forEach var="goods" items="${bestGoods}">
					<tr>
							<td>${goods.goodsName}</td>
							<td>${goods.brand}</td>
							<td>${goods.category}</td>
							
						</tr>
					</c:forEach>
						
						
					</tbody>
				</table>
			</div>
			
			
			
			<div class="card-box mb-30">
				<h2 class="h4 pd-20">최근 입고 상품</h2>
				<table class="table nowrap">
					<thead>
						<tr>
							<th>상품명</th>
							<th>브랜드</th>
							<th>카테고리</th>
							
						</tr>
					</thead>
					<tbody>
					<c:forEach var="goods" items="${latestGoods}">
					<tr>
							<td>${goods.goodsName}</td>
							<td>${goods.brand}</td>
							<td>${goods.category}</td>
							
						</tr>
					</c:forEach>
						
						
					</tbody>
				</table>
			</div>
			
			
			
			<div class="footer-wrap pd-20 mb-20 card-box">
				DeskApp - Bootstrap 4 Admin Template By <a href="https://github.com/dropways" target="_blank">Ankit Hingarajiya</a>
			</div>
		</div>
	</div>
	<!-- js -->
	<script src="/campus/resources/vendors/scripts/core.js"></script>
	<script src="/campus/resources/vendors/scripts/script.min.js"></script>
	<script src="/campus/resources/vendors/scripts/process.js"></script>
	<script src="/campus/resources/vendors/scripts/layout-settings.js"></script>
	<!-- <script src="/campus/resources/src/plugins/apexcharts/apexcharts.min.js"></script> -->
	<script src="/campus/resources/src/plugins/datatables/js/jquery.dataTables.min.js"></script>
	<script src="/campus/resources/src/plugins/datatables/js/dataTables.bootstrap4.min.js"></script>
	<script src="/campus/resources/src/plugins/datatables/js/dataTables.responsive.min.js"></script>
	<script src="/campus/resources/src/plugins/datatables/js/responsive.bootstrap4.min.js"></script>
	<script src="/campus/resources/vendors/scripts/dashboard.js"></script>
	<script src="https://code.highcharts.com/highcharts.js"></script>
<script src=" https://code.highcharts.com/modules/exporting.js"></script>
	<script type="text/javascript">
	$(function(){
		var list = [];
		var pricelist = [];
		var dataset = null;
		
		$.ajax({
			"url": "load-sales-dataset",
			"method": "get",
			"dataType": "json", 
			"success": function(data) {
				dataset=data;
				for(var i=0;i<dataset.length;i++){
					list.push(dataset[i].orderDate);
					pricelist.push(Number(dataset[i].orderNo));
				}
				setTimeout(showLineChart, 100);
				
			},
			"error": function(err) {
				alert('fail to load dataset1');
			}
		});
		
		var category = [];
		var amount = [];
		var oObj = [];
		$.ajax({
			"url": "load-category-dataset",
			"method": "get",
			"dataType": "json", 
			"success": function(data) {
				
			      $.each(data, function(ix,sliceData) {
			         oObj.push({
			            name: sliceData.category,
			            y: eval(sliceData.goodsCode)
			         });
			      });
			      setTimeout(showPieChart, 100);
				
			},
			"error": function(err) {
				alert('fail to load dataset2');
			}
		});
		
		function showLineChart(){
			Highcharts.chart('chart-bar', {
				 chart: {type: 'line'},
			    title: {text: '일일 매출액'},
			    yAxis: {
			        title: {text: '매출액'},
					labels : {format: '{value:,.0f}'}
			    },
			    xAxis: {categories: list},
			    legend: {
			        layout: 'vertical',
			        align: 'right',
			        verticalAlign: 'middle'
			    },
			    series: [{ name:'일일 매출액',
			    	data: pricelist}]
			});
			
		}
		
		function showPieChart(){
			
			Highcharts.chart('chart-pie', {
			    chart: {
			        type: 'pie'
			    },
			    title: {
			        text: '상품 종류별 주문 비율'
			    },
			    tooltip: {
			        headerFormat: '',
			        pointFormat: '<span style="color:{point.color}">\u25CF</span> <b> {point.name}: <b>{point.percentage:.1f}%</b></b><br/>'
			    },
			    xAxis: {
			        categories: category
			      },
			    series: [{
			        minPointSize: 10,
			        innerSize: '20%',
			        zMin: 0,
			        name: '상품',
			        data: oObj
			    }]
			});
		}
		
		
		
	});
	
	</script>
</body>
</html>
