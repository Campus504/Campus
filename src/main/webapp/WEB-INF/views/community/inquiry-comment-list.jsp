<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="enter" value="
" />

<c:forEach var="comment" items="${comments}">



	<div class="comment">




		<div class="d-flex" style="width: 100%">
			<div class="comment-img">


				<c:forEach begin="0" end="${comment.depth}">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</c:forEach>
				<c:if test="${comment.depth>0}">
					<i class="bi bi-arrow-return-right"></i>
							&nbsp;
						</c:if>


			</div>
			<div>

				<div id="comment-view-area-${comment.commentNo}">
					<h5>${comment.memberId}</h5>
					<time datetime="2020-01-01">${comment.writeDate}</time>
					<p>${fn:replace(comment.content,enter,"<br>")}</p>
					<div
						style='display:${(not empty loginuser and loginuser.memberId == comment.memberId) ? "block" : "none"}'>
						<a class="edit-comment" data-comment-no="${comment.commentNo}"
							href="javascript:">[수정]</a> &nbsp; <a class="delete-comment"
							data-comment-no="${comment.commentNo}" href="javascript:">[삭제]</a>
					</div>
				</div>


				<div id="comment-edit-area-${comment.commentNo}"
					style="display: none">
					<form>
						<input type="hidden" name="boardNo" value="${ comment.boardNo }" />
						<input type="hidden" name="memberId"
							value="${ loginuser.memberId }" /> <input type="hidden"
							name="pageNo" value="${ pageNo }" /> <input type="hidden"
							name="commentNo" value="${ comment.commentNo }" />
						<div class="row">
							<div class="col-md-6 form-group">
								<span>${ loginuser.memberId }</span>
							</div>
						</div>
						<div class="row">
							<div class="col form-group">
								<textarea id="comment_content" name="content"
									class="form-control">${comment.content}</textarea>
							</div>
						</div>
						<a class="update-comment" data-comment-no="${comment.commentNo}"
							href="javascript:">수정</a> &nbsp; <a class="cancel-edit-comment"
							data-comment-no="${comment.commentNo}" href="javascript:">취소</a>

					</form>
				</div>

			</div>


		</div>
	</div>
	<!-- End comment #1 -->

</c:forEach>