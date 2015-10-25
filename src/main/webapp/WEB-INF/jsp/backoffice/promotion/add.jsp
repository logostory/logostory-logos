<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" 	uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags" %>


<%--------------------------------------------------------------------------------------------------------------
 Page Name 	: Add promotion
 Page Desc. : Add promotion page
 Page No. 	: 30
 Author 	: David Sun
---------------------------------------------------------------------------------------------------------------%>

<tag:template activeMenu="30">

	<h2 class="sub-header">Add promotion</h2>

     <h3>Dropdowns and multi select</h3>
		<form class="form-horizontal" method="post" action="<c:url value="/backoffice/promotion/add"/>">
			<div class="form-group">
		  		<label for="inputPassword3" class="control-label">Type</label>
			  <select class="form-control auto-field" name="pmType">
	               <option>Select</option>
	               <option value="popup">Pop-Up</option>
	               <option value="game">Game</option>
	               <option value="link">Link</option>
	           </select>
           </div>
			<div class="form-group">
			<label for="inputEmail3" class="control-label">Title <span class="icon icon-required"> required</span></label>
		    <input name="pmTitle" type="text" class="form-control" id="inputEmail3" placeholder="promotion title"> 
		  </div>
		  <div class="form-group">
           		<label for="inputPassword3" class="control-label">Decription</label>
           		<textarea name="pmContents" class="form-control" placeholder="promotion description"></textarea>
           </div>
           <div class="form-group">
			<label for="inputEmail3" class="control-label">Image Url</label>
		    <div class="input-group">
		      <input name="pmImageUrl" type="text" class="form-control long-field" placeholder="Search for...">
		      <span class="input-group-btn">
		        <button class="btn btn-default btn-sm" type="button">Upload</button>
		      </span>
		    </div>
		  </div>
		  <div class="form-group">
			<label for="inputEmail3" class="control-label">Link Url</label>
			<input name="pmLinkurl" type="text" class="form-control long-field" placeholder="link url for click">
		  </div>
		  
		  <div class="form-group">
		  	<label for="inputEmail3" class="control-label">Upload Image</label>
		  	<label class="ffi" data-ffi-button-text="Browse" data-ffi-value="login.jpg">
                 <input type="file" id="ffi1" name="ffi1" aria-label="Fancy File Input">
             </label>
		  </div>
		  
		  <div class="form-group">
		  	<label for="inputEmail3" class="control-label">Is Active</label>
		  	<label class="radio-inline">
			  <input type="radio" name="pmIsActive" id="inlineRadio1" value="Y"> Y
			</label>
			<label class="radio-inline">
			  <input type="radio" name="pmIsActive" id="inlineRadio2" value="N"> N
			</label>
		  </div>
		  <div class="form-group">
		    <button type="submit" class="btn btn-default btn-sm ">Save</button>
		    <button type="button" class="btn btn-link btn-sm ">Cancel</button>
		  </div>
		</form>  

</tag:template>