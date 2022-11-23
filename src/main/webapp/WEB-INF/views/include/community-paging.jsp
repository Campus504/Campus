<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <div class="blog-pagination">
              <ul class="justify-content-center">
              
              <c:choose>
              <c:when test="${pageCount==0}">
              <li class="active"><a href="#">검색 결과가 없습니다.</a></li>
              </c:when>
              
              <c:when test="${pageCount==1}">
              <li class="active"><a href="#">${ pageNo }</a></li>
              </c:when>
              <c:when test="${pageCount==2}">
	              <c:choose>
	              <c:when test="${pageNo==1}">
	              <li class="active"><a href="#">${ pageNo }</a></li>
	              <li><a href="freeboard.action?pageNo=${ pageNo+1 }">${ pageNo+1 }</a></li>
	              </c:when>
	              <c:otherwise>
	              <li><a href="freeboard.action?pageNo=${ pageNo-1 }">${ pageNo-1 }</a></li>
	              <li class="active"><a href="#">${ pageNo }</a></li>
	              </c:otherwise>
	              </c:choose>
              </c:when>
              <c:otherwise>
              
                 <c:choose>
             <c:when test="${pageNo==1}" >
                <li class="active"><a href="#">${ pageNo }</a></li>
                <li><a href="freeboard.action?pageNo=${ pageNo+1 }">${ pageNo+1 }</a></li>
                 <li><a href="freeboard.action?pageNo=${ pageNo+2 }">${ pageNo+2 }</a></li>
             </c:when >
             <c:when test="${pageNo==pageCount}">
             <li><a href="freeboard.action?pageNo=${ pageNo-2 }">${ pageNo-2 }</a></li>
             	 <li><a href="freeboard.action?pageNo=${ pageNo-1 }">${ pageNo-1 }</a></li>
                <li class="active"><a href="#">${ pageNo }</a></li>
             </c:when>
             <c:otherwise>
              <li><a href="freeboard.action?pageNo=${pageNo-1 }">${ pageNo-1 }</a></li>
                <li class="active"><a href="#">${ pageNo }</a></li>
                <li><a href="freeboard.action?pageNo=${ pageNo+1 }">${ pageNo+1 }</a></li>
             </c:otherwise>
             </c:choose>
                            
              </c:otherwise>
              </c:choose>
              
             </ul>
       </div>
    