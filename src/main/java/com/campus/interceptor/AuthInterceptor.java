package com.campus.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.campus.dto.MemberDto;

public class AuthInterceptor implements HandlerInterceptor {
	
	
	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse resp, Object handler)
			throws Exception {
		
		String uri = req.getRequestURI(); 
		
		HttpSession session =  req.getSession();
		MemberDto member =  (MemberDto)session.getAttribute("loginuser");
		
		if(member == null) { //로그인 하지 않은 사용자 게시판 이용 ㄴㄴ
		if( uri.contains("freeboard-write") || uri.contains("freeboard-delete") || uri.contains("freeboard-edit") || uri.contains("my-page") ){//로그인한 사용자만 볼 수 있는 요청
			resp.sendRedirect("login.action");
			return false; 
			}
		}
		
		return true;
	}
	
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
	}
	
	
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		
	}

}
