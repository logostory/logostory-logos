<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" 	uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags" %>

<%--------------------------------------------------------------------------------------------------------------
 Page Name 	: Booking_List.java
 Page Desc. : Show Booking list
 Page No. 	: 41
 Author 	: HJ
---------------------------------------------------------------------------------------------------------------%>

<tag:template activeMenu="41">

       <h2 class="sub-header">Booking</h2>
       <div class="table-responsive">
         <table class="table table-hover">
           <thead>
             <tr>
               <th>Name</th>
               <th>E-mail</th>
               <th>Phone</th>
               <th>Person</th>
               <th>Message</th>
             </tr>
           </thead>
           <tbody>
           	<c:forEach items="${bookingList}" var="data" varStatus="idx">
             <tr data-pm-id="${data.pmId}">
               <td>${data.bkName}</td>
               <td>${data.bkEmail}</td>
               <td>${data.bkPhone}</td>
               <td>${data.bkPerson}</td>
               <td>${data.bkMessage}</td>
             </tr>
             </c:forEach>
           </tbody>
         </table>
       </div>

</tag:template>