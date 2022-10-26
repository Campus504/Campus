<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<div class="left-side-bar">
		<div class="brand-logo">
			<a href="index.html">
				<img src="/campus/resources/vendors/images/deskapp-logo.svg" alt="" class="dark-logo">
				<img src="/campus/resources/vendors/images/deskapp-logo-white.svg" alt="" class="light-logo">
			</a>
			<div class="close-sidebar" data-toggle="left-sidebar-close">
				<i class="ion-close-round"></i>
			</div>
		</div>
		<div class="menu-block customscroll">
			<div class="sidebar-menu">
				<ul id="accordion-menu">
					<li class="dropdown">
						<a href="http://localhost:8080/campus/" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-house-1"></span><span class="mtext">Home</span>
						</a>
					</li>
					<li class="dropdown">
						<a href="javascript:;" class="dropdown-toggle">
							<span class="micon dw dw-user-2"></span><span class="mtext">회원</span>
						</a>
						<ul class="submenu">
							<li><a href="member-info.action">회원 정보</a></li>
							<li><a href="admin-member-detail-info.action">회원 상세 정보</a></li>
							<li><a href="form-wizard.html">관리자 권한</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="javascript:;" class="dropdown-toggle">
							<span class="micon dw dw-edit2"></span><span class="mtext">상품</span>
						</a>
						<ul class="submenu">
							<li><a href="form-basic.html">상품 등록</a></li>
							<li><a href="advanced-components.html">상품 목록</a></li>
							<li><a href="form-wizard.html">주문 목록</a></li>
							<li><a href="html5-editor.html">주문 상세 목록</a></li>
							<li><a href="form-pickers.html">입고 내역</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="javascript:;" class="dropdown-toggle">
							<span class="micon dw dw-library"></span><span class="mtext">게시판</span>
						</a>
						<ul class="submenu">
							<li><a href="basic-table.html">공지사항</a></li>
							<li><a href="datatable.html">게시판 관리</a></li>
						</ul>
					</li>
					<li>
						<a href="calendar.html" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-calendar1"></span><span class="mtext">일정</span>
						</a>
					</li>
					
					<li class="dropdown">
						<a href="javascript:;" class="dropdown-toggle">
							<span class="micon dw dw-analytics-21"></span><span class="mtext">차트</span>
						</a>
						<ul class="submenu">
							<li><a href="highchart.html">Highchart</a></li>
							<li><a href="knob-chart.html">jQuery Knob</a></li>
							<li><a href="jvectormap.html">jvectormap</a></li>
							<li><a href="apexcharts.html">Apexcharts</a></li>
						</ul>
					</li>

					<li>
						<a href="invoice.html" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-invoice"></span><span class="mtext">Invoice</span>
						</a>
					</li>
					<li>
						<div class="dropdown-divider"></div>
					</li>
					
				</ul>
			</div>
		</div>
	</div>
