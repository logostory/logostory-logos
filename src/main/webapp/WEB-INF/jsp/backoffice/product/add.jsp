<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" 	uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags" %>

<%--------------------------------------------------------------------------------------------------------------
 Page Name 	: Add promotion
 Page Desc. : Add promotion page
 Page No. 	: 30
 Author 	: David Sun
---------------------------------------------------------------------------------------------------------------%>

<tag:template activeMenu="21">

	<h2 class="sub-header">상품추가</h2>

     <h3>Dropdowns and multi select</h3>
		<form class="form-horizontal" method="post" action="<c:url value="/backoffice/product/add"/>">
			<div class="form-group">
		  		<label for="inputPassword3" class="control-label">Type</label>
			  <select class="form-control auto-field" name="f_type">
	               <option>선택</option>
	               <option value="coffee">음료</option>
	               <option value="dessert">디저트</option>
	               <option value="etc">기타</option>
	           </select>
           </div>
			<div class="form-group">
			<label for="inputEmail3" class="control-label">Title <span class="icon icon-required"> required</span></label>
		    <input name="f_name" type="text" class="form-control" id="inputEmail3" placeholder="상품 이름"> 
		  </div>
		  <div class="form-group">
           		<label for="inputPassword3" class="control-label">Decription</label>
           		<textarea name="f_desc" class="form-control" placeholder="상품 설명"></textarea>
           </div>

		  <div class="form-group">
		  	<label for="inputEmail3" class="control-label">Upload Image</label>
		  	<label class="ffi" data-ffi-button-text="Browse" data-ffi-value="login.jpg">
                 <input type="file" id="ffi1" name="ffi1" aria-label="Fancy File Input">
             </label>
		  </div>

		  <div class="form-group">
		    <button type="submit" class="btn btn-default btn-sm ">등록</button>
		    <button type="button" class="btn btn-link btn-sm ">취소</button>
		  </div>
		</form>  

</tag:template>