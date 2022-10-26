//package com.campus.interceptor;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import org.springframework.web.servlet.HandlerInterceptor;
//import org.springframework.web.servlet.ModelAndView;
//
//import com.demoweb.dto.MemberDto;
//
//public class AuthInterceptor implements HandlerInterceptor {
//	
//	//컨트롤러를 호출하기 전에 호출되는 메서드
//	@Override
//	public boolean preHandle(HttpServletRequest req, HttpServletResponse resp, Object handler)
//			throws Exception {
//		//System.out.println("PreHandler");
//		
//		String uri = req.getRequestURI(); //현재 요청 경로 (웹경로 : http://.../.../*.action)
//		
//		HttpSession session =  req.getSession();
//		MemberDto member =  (MemberDto)session.getAttribute("loginuser");
//		
//		if(member == null) { //로그인 하지 않은 사용자
//		if( uri.contains("/board/write") || uri.contains("/board/delete") || uri.contains("/board/edit") || uri.contains("/board/update")){//로그인한 사용자만 볼 수 있는 요청
//			resp.sendRedirect("/spring-demoweb-e/account/login.action");
//			return false; //예정된 컨트롤러의 호출 취소
//			}
//		}
//		
//		return true; // 예정대로 컨트롤러 호출 수행
//	}
//	
//	//컨트롤러 처리가 끝난 후에 호출되는 메서드
//	@Override
//	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
//			ModelAndView modelAndView) throws Exception {
//		//System.out.println("PostHandler");
//	}
//	
//	//View 처리가 끝난 후에 호출되는 메서드
//	@Override
//	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
//			throws Exception {
//		//System.out.println("AfterCompletion");
//	}
//
//}
