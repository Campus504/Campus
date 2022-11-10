<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="area"></div><nav class="main-menu">
            <ul>
                <li>
                    <a href="main">
                        <i class="fa fa-home fa-2x"></i>
                        <span class="nav-text">
                            홈
                        </span>
                    </a>
                </li>
                <li class="has-subnav">
                    <a href="my-page-profile.action?memberId=${ loginuser.memberId }">
                        <i class="fa fa-address-card fa-2x"></i>
                        <span class="nav-text">
                            프로필 수정
                        </span>
                    </a>
                     </li>
                      <li class="has-subnav">
                    <a href="my-page-password.action?memberId=${ loginuser.memberId }">
                       <i class="fa fa-gear fa-2x"></i>
                        <span class="nav-text">
                            비밀번호 수정
                        </span>
                    </a>
                </li>
                <li class="has-subnav">
                    <a href="#">
                       <i class="fa fa-shopping-bag fa-2x"></i>
                        <span class="nav-text">
                            주문내역 조회
                        </span>
                    </a>
                    
                </li>
                    <li class="has-subnav">
                    <a href="#">
                       <i class="fa fa-list fa-2x"></i>
                        <span class="nav-text">
                            내 게시글 관리
                        </span>
                    </a>
                    
                </li>
              
                <li>
                    <a href="#">
                        <i class="fa fa-bar-chart-o fa-2x"></i>
                        <span class="nav-text">
                            Graphs and Statistics
                        </span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-font fa-2x"></i>
                        <span class="nav-text">
                           Quotes
                        </span>
                    </a>
                </li>
                <li>
                   <a href="#">
                       <i class="fa fa-table fa-2x"></i>
                        <span class="nav-text">
                            Tables
                        </span>
                    </a>
                </li>
                <li>
                   <a href="#">
                        <i class="fa fa-map-marker fa-2x"></i>
                        <span class="nav-text">
                            Maps
                        </span>
                    </a>
                </li>
                <li>
                    <a href="drop-out.action">
                       <i class="fa fa-ban fa-2x"></i>
                        <span class="nav-text">
                            회원탈퇴
                        </span>
                    </a>
                </li>
            </ul>
            <ul class="logout">
                <li>
                   <a href="logout.action" title="로그아웃">
                         <i class="fa fa-power-off fa-2x"></i>
                        <span class="nav-text">
                            로그아웃
                        </span>
                    </a>
                </li>  
            </ul>
        </nav>