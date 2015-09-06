<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" 	uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags" %>

<%--------------------------------------------------------------------------------------------------------------
 Page Name 	: Back office index
 Page Desc. : Back office index page
 Page No. 	: 31
 Author 	: David Sun
---------------------------------------------------------------------------------------------------------------%>

<tag:template activeMenu="31">

       <h2 class="sub-header">Promotions</h2>
       <div class="table-responsive">
         <table class="table table-hover">
           <thead>
             <tr>
               <th>Id</th>
               <th>Type</th>
               <th>Title</th>
               <th>Contents</th>
               <th>ImageUrl</th>
               <th>Linkurl</th>
               <th>IsActive</th>
             </tr>
           </thead>
           <tbody>
           	<c:forEach items="${pList}" var="data" varStatus="idx">
             <tr data-pm-id="${data.pmId}">
               <td>${data.pmId}</td>
               <td>${data.pmType}</td>
               <td>${data.pmTitle}</td>
               <td>${data.pmContents}</td>
               <td>${data.pmImageUrl}</td>
               <td>${data.pmLinkurl}</td>
               <td>${data.pmIsActive}</td>
             </tr>
             </c:forEach>
           </tbody>
         </table>
       </div>

</tag:template>