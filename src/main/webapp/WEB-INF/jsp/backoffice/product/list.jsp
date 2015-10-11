<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" 	uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags" %>

<%--------------------------------------------------------------------------------------------------------------
 Page Name 	: Back office index
 Page Desc. : Back office index page
 Page No. 	: 31
 Author 	: David Sun
---------------------------------------------------------------------------------------------------------------%>

<tag:template activeMenu="22">

       <h2 class="sub-header">상품리스트</h2>
       <div class="table-responsive">
         <table class="table table-hover">
           <thead>
             <tr>
               <th>No</th>
               <th>Type</th>
               <th>Title</th>
               <th>Contents</th>
               <th>ImageUrl</th>
               <th>Image</th>
             </tr>
           </thead>
           <tbody>
           	<c:forEach items="${pList}" var="data" varStatus="idx">
             <tr data-pm-id="${data.f_id}">
               <td>${data.f_id}</td>
               <td>${data.f_type}</td>
               <td>${data.f_name}</td>
               <td>${data.f_desc}</td>
               <td>${data.image_addr}</td>
               <td><img src="images/product01.JPG" alt=""></td>
             </tr>
             </c:forEach>
           </tbody>
         </table>
       </div>

</tag:template>