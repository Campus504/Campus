<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
			<c:forEach var="board" items="${boards}">
			<input type="hidden" name="boardNo" value="board.boardNo">
            <article class="entry">

              <h2 class="entry-title">
                <a href="tip-detail.action?boardNo=${board.boardNo}&pageNo=${pageNo}">${board.title}</a>
              </h2>

              <div class="entry-meta">
                <ul>
                  <li class="d-flex align-items-center"><i class="bi bi-person"></i>${board.memberId}</li>
                  <li class="d-flex align-items-center"><i class="bi bi-clock"></i>${board.writeDate}</li>
                  <li class="d-flex align-items-center"><i class="bi bi-eye"></i>${board.readCount}</li>
                </ul>
              </div>
              
              <div class="entry-content">
                <div class="read-more">
                  <a href='tip-detail.action?boardNo=${board.boardNo}&pageNo=${pageNo}'>글 읽기</a>
                </div>
              </div>
              
              </article>
              </c:forEach>