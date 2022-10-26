//package com.campus.filter;
//
//import java.io.IOException;
//import javax.servlet.Filter;
//import javax.servlet.FilterChain;
//import javax.servlet.FilterConfig;
//import javax.servlet.ServletException;
//import javax.servlet.ServletRequest;
//import javax.servlet.ServletResponse;
//import javax.servlet.annotation.WebFilter;
//import javax.servlet.http.HttpFilter;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import com.demoweb.dto.MemberDto;
//
//@WebFilter("*.action")
//public class AuthFilter extends HttpFilter implements Filter {
//
//	public void init(FilterConfig fConfig) throws ServletException {
//	}
//
//	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
//		
//		HttpServletRequest req = (HttpServletRequest)request;
//		HttpServletResponse resp = (HttpServletResponse) response;
//		String uri = req.getRequestURI(); //현재 요청 경로 (웹경로 : http://.../.../*.action)
//		
//		HttpSession session =  req.getSession();
//		MemberDto member =  (MemberDto)session.getAttribute("loginuser");
//		
//		if(member == null) { //로그인 하지 않은 사용자
//		if( uri.contains("/board/write") || uri.contains("/board/delete") || uri.contains("/board/edit") || uri.contains("/board/update")){//로그인한 사용자만 볼 수 있는 요청
//			resp.sendRedirect("/demoweb/account/login.action");
//			return;
//			}
//		}
//		chain.doFilter(request, response); //다음 필터 또는 처리기(서블릿 or JSP)로 이동
//	}
//
//	public void destroy() {
//	}
//}
