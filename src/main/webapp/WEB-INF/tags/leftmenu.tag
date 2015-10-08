<%@ tag language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ attribute name="activeMenu" required="false"%>

<div class="sidebar" data-active-menu-no="${activeMenu}">
  <ul class="nav nav-sidebar">
    <li data-menu-no="00"><a href="<c:url value="/backoffice"/>">Dashboard <span class="sr-only">(current)</span></a></li>
    <li data-menu-no="01"><a href="#">Reports</a></li>
  </ul>
  <ul class="nav nav-sidebar">
  	<li class="dropdown-header">User</li>
    <li data-menu-no="10"><a href="<c:url value="/backoffice/UserManager/main"/>">전체관리</a></li>
    <li data-menu-no="11"><a href="<c:url value="/backoffice/UserManager/customer"/>">고객관리</a></li>
    <li data-menu-no="12"><a href="<c:url value="/backoffice/UserManager/member"/>">사원관리</a></li>
  </ul>
  <ul class="nav nav-sidebar">
  	<li class="dropdown-header">Product</li>
    <li data-menu-no="21"><a href="<c:url value="/backoffice/product/addPage"/>">메뉴추가</a></li>
    <li data-menu-no="22"><a href="#">메뉴리스트</a></li>
    <li data-menu-no="23"><a href="#">Another nav item</a></li>
  </ul>
  <ul class="nav nav-sidebar">
  	<li class="dropdown-header">Promotion</li>
    <li data-menu-no="30"><a href="<c:url value="/backoffice/promotion/addPage"/>">Add new promotion</a></li>
    <li data-menu-no="31"><a href="<c:url value="/backoffice/promotion/list"/>">Promotion List</a></li>
    <li data-menu-no="32"><a href="<c:url value="/backoffice/promotion/preview"/>">Promotions</a></li>
  </ul>
  <ul class="nav nav-sidebar">
  	<li class="dropdown-header">Booking</li>
    <li data-menu-no="40"><a href="<c:url value="/backoffice/booking/Make_Booking_Page"/>">Add new booking</a></li>
    <li data-menu-no="41"><a href="<c:url value="/backoffice/booking/Booking_List"/>">Booking list</a></li>
  </ul>
</div>
