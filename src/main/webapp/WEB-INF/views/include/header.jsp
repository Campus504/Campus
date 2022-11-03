<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<header id="header"
	class="fixed-top d-flex align-items-center header-transparent">
	<div class="h_inner" style="position: absolute; right: 20%; top: 0;">
		<nav class="h_lnb">
		<ul>
		<c:choose>
            <c:when test="${ empty loginuser }">
				<li><a href="login.action" title="로그인">로그인</a></li>
				<li><a href="register.action" title="회원가입">회원가입</a></li>
				<!-- <li>
				<ul class="user-center">
					<a href="#" title="고객센터">고객센터</a>
					<li><a href="faq.action" title="자주묻는질문">자주묻는질문</a></li>
					<li><a href="inquiry.action" title="1:1문의">1:1문의</a></li>
					</ul>
				</li> -->
			    </c:when>
			     <c:otherwise>
            	<p style="color:#fff;"><b>${ loginuser.memberId }</b>님 환영합니다.</p>
            	&nbsp;&nbsp;&nbsp;&nbsp;<a href="logout.action" style="color:#fff;" title="로그아웃">로그아웃</a>
            </c:otherwise>
            </c:choose>
            </ul>
		</nav>
	</div>

	<div class="container-fluid">

		<div class="row justify-content-center align-items-center">
			<div
				class="col-xl-11 d-flex align-items-center justify-content-between">
				<h1 class="logo">
					<a href="main">Campus</a>
				</h1>
				<!-- Uncomment below if you prefer to use an image logo -->
				<!-- <a href="index.html" class="logo"><img src="/campus/resources/assets/img/logo.png" alt="" class="img-fluid"></a>-->


				<nav id="navbar" class="navbar">
					<ul>
						<!--    <li><a class="nav-link scrollto" href="admin-main">Admin(hidden)</a></li> -->
						<li><a class="nav-link scrollto active" href="main">홈</a></li>
						<li><a class="nav-link scrollto" href="/campus/#about">나중에1</a></li>
						<li><a class="nav-link scrollto" href="/campus/#services">나중에2</a></li>
						<li><a class="nav-link scrollto " href="/campus/#portfolio">베스트상품</a></li>
						<li><a class="nav-link scrollto " href="/campus/#clients">고객후기</a></li>
						<li><a class="nav-link scrollto " href="/campus/#contact">오시는길</a></li>
					</ul>

					<!-- sidebar -->
					<button class="main-menu-indicator" id="open-button"
						style="margin-left: 50px;">
						<span class="line"></span>
					</button>

					<div class="menu-wrap"
						style="background-image: url(/campus/resources/sidebar/img/nav_bg.jpg)">
						<div class="menu-content">
							<div class="navigation">
								<span class="pe-7s-close close-menu" id="close-button"></span>
								<div class="search-wrap js-ui-search">
									<input class="js-ui-text" type="text"
										placeholder="Search Here..."> <span
										class="eks js-ui-close"></span>
								</div>
							</div>
							<nav class="menu">
								<div class="menu-list">
									<ol>
										<li class="menu-item-has-children"><a href="#"
											title="텐트/타프">텐트/타프</a>
											<ul class="sub-menu">
												<li><a href="goods-list.action" title="텐트">텐트</a></li>
												<li><a href="goods-list.action" title="타프">타프</a></li>
												<li><a href="goods-list.action" title="텐트/타프(소품)">텐트/타프(소품)</a></li>
											</ul></li>

										<li class="menu-item-has-children"><a href="#"
											title="테이블/체어">테이블/체어</a>
											<ul class="sub-menu">
												<li><a href="goods-list.action" title="테이블">테이블</a></li>
												<li><a href="goods-list.action" title="체어">체어</a></li>
											</ul></li>

										<li class="menu-item-has-children"><a
											href="goods-list.action">침낭/매트</a></li>

										<li class="menu-item-has-children"><a href="#">식기</a>
											<ul class="sub-menu">
												<li><a href="goods-list.action" title="코펠">코펠</a></li>
												<li><a href="goods-list.action" title="프라이팬">프라이팬</a></li>
												<li><a href="goods-list.action" title="컵/머그컵">컵/머그컵</a></li>
												<li><a href="goods-list.action" title="취사도구">취사도구</a></li>
											</ul></li>

										<li class="menu-item-has-children"><a href="#">화로/버너</a>
											<ul class="sub-menu">
												<li><a href="goods-list.action" title="버너/스토브">버너/스토브</a></li>
												<li><a href="goods-list.action" title="화로대">화로대</a></li>
												<li><a href="goods-list.action" title="난로">난로</a></li>
												<li><a href="goods-list.action" title="화로/버너(소품)">화로/버너(소품)</a></li>
											</ul></li>

										<li class="menu-item-has-children"><a href="#">캠핑소품</a>
											<ul class="sub-menu">
												<li><a href="goods-list.action" title="가전기기">가전기기</a></li>
												<li><a href="goods-list.action" title="랜턴/손전등">랜턴/손전등</a></li>
												<li><a href="goods-list.action" title="아이스박스/쿨러">아이스박스/쿨러</a></li>
												<li><a href="goods-list.action" title="수납박스/케이스">수납박스/케이스</a></li>
												<li><a href="goods-list.action" title="캠핑소품">캠핑소품</a></li>
											</ul></li>

										<li class="menu-item-has-children"><a
											href="freeboard.action">커뮤니티</a></li>

										<li class="menu-item-has-children"><a href="#">고객센터</a>
											<ul class="sub-menu">
												<li><a href="faq.action" title="자주묻는질문">자주묻는질문</a></li>
												<li><a href="inquiry.action" title="1:1문의">1:1문의</a></li>
											</ul></li>
									</ol>
								</div>
							</nav>

							<div class="hidden-xs">
								<div class="menu-social-media">
									<ul>
										<li><a href="login.action" title="로그인"><iconify-icon icon="carbon:login" style="font-size:40px;"></iconify-icon></a></li>
										<li><a href="my-page.action" title="마이페이지"><iconify-icon icon="carbon:user-avatar-filled-alt" style="font-size:40px;"></iconify-icon></a></li>
										<li><a href="admin-main" title="관리자페이지"><iconify-icon icon="eos-icons:admin-outlined" style="font-size:40px;"></iconify-icon></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- End of sidebar -->
				</nav>
				<!-- .navbar -->
			</div>
		</div>

	</div>
</header>