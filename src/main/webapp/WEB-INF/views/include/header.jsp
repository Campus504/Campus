<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <header id="header" class="fixed-top d-flex align-items-center header-transparent">
    <div class="container-fluid">

      <div class="row justify-content-center align-items-center">
        <div class="col-xl-11 d-flex align-items-center justify-content-between">
          <h1 class="logo"><a href="main">Campus</a></h1>
          <!-- Uncomment below if you prefer to use an image logo -->
          <!-- <a href="index.html" class="logo"><img src="/campus/resources/assets/img/logo.png" alt="" class="img-fluid"></a>-->

          <nav id="navbar" class="navbar">
            <ul>
           <!--    <li><a class="nav-link scrollto" href="admin-main">Admin(hidden)</a></li> -->
              <li><a class="nav-link scrollto active" href="main">Home</a></li>
              <li><a class="nav-link scrollto" href="#about">Best Products</a></li>
              <li><a class="nav-link scrollto" href="#services">Best Reviews</a></li>
              <li><a class="nav-link scrollto " href="#portfolio">Location</a></li>
              <li><a class="nav-link  " href="/campus/freeboard.action">Community</a></li>
            </ul>
            
            <!-- sidebar -->
            <button class="main-menu-indicator" id="open-button"  style="margin-left:50px;">
                <span class="line"></span>
            </button>
            
            <div class="menu-wrap" style="background-image: url(/campus/resources/sidebar/img/nav_bg.jpg)">
                <div class="menu-content">
                    <div class="navigation">
                        <span class="pe-7s-close close-menu" id="close-button"></span>
                        <div class="search-wrap js-ui-search">
                            <input class="js-ui-text" type="text" placeholder="Search Here...">
                            <span class="eks js-ui-close"></span>
                        </div>
                    </div>
                    <nav class="menu">
                        <div class="menu-list">
                            <ol>
                                <li><a href="#">Login</a></li>
                                <li><a href="#">Join</a></li>
                                <li class="menu-item-has-children"><a href="#">My Page</a>
                                    <ul class="sub-menu">
                                        <li><a href="portfolio-2column.html">My Info</a></li>
                                        <li><a href="portfolio-3column.html">Cart</a></li>
                                        <li><a href="portfolio-masonry.html">Order List</a></li>
                                        <li><a href="portfolio-dribbble.html">My Board</a></li>
                                    </ul>
                                </li>
                                <li class="menu-item-has-children"><a href="#">Product</a>
                                    <ul class="sub-menu">
                                        <li><a href="goods-list.action">Tent</a></li>
                                        <li><a href="goods-list.action">Table/Chair</a></li>
                                        <li><a href="single-blog.html">ETC...</a></li>
                                    </ul>
                                </li>
                                 <li class="menu-item-has-children"><a href="#">Community</a>
                                    <ul class="sub-menu">
                                        <li><a href="blog.html">Free Board</a></li>
                                        <li><a href="blog-timeline.html">Camping Tips</a></li>
                                    </ul>
                                </li>
                                <li class="menu-item-has-children"><a href="#">Contact</a>
                                    <ul class="sub-menu">
                                        <li><a href="blog.html">Notifications</a></li>
                                        <li><a href="blog-timeline.html">FAQ</a></li>
                                        <li><a href="blog-timeline.html">Contact us</a></li>
                                    </ul>
                                </li>
                                <li class="menu-item-has-children"><a href="#">About</a>
                                    <ul class="sub-menu">
                                        <li><a href="blog.html">CampUs</a></li>
                                        <li><a href="blog-timeline.html">Location</a></li>
                                    </ul>
                                </li>
                            </ol>
                        </div>
                    </nav>

                    <div class="hidden-xs">
                        <div class="menu-social-media">
                            <ul> 
                               <li><a href="#" title="로그인"><iconify-icon icon="carbon:login" style="font-size:40px;"></iconify-icon></a></li>
                               <li><a href="#" title="마이페이지"><iconify-icon icon="carbon:user-avatar-filled-alt" style="font-size:40px;"></iconify-icon></a></li>
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