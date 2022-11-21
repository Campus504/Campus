<%@ page language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <c:forEach  var="option" items='${options}' >
	<tr role="row" data-optionno="${ option.optionNo }" >
		
		<td>${ option.optionName }</td>
		<td>${ option.optionDesc }</td>
		<td>${ option.optionDataType }</td>
		
		<td>${ option.optionValue }</td>        
		
		<td><a href="edit-goods-option.action?optionNo=${option.optionNo}"><i class="icon-copy fa fa-pencil" aria-hidden="true"></i></a></td>
		<td><a href="delete-goods-option.action?optionNo=${ option.optionNo }"><i id="options-table" class="icon-copy fa fa-trash" aria-hidden="true" style="cursor:pointer"></i></a></td>
	</tr>
 
</c:forEach>