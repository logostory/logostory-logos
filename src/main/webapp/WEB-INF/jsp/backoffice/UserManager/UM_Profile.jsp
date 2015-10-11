<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" 	uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags" %>

<tag:template activeMenu="999">

<body>
<div class="container">
  <div class="row">
    <div class="col-md-8 col-xs-10">
      <div class="well panel panel-default">
        <div class="panel-body">
          <div class="row">
            <div class="col-xs-12 col-sm-4 text-center">
              <img src="http://png.clipart.me/graphics/previews/154/green-tree-round-icon-vector-illustration_154612604.jpg" alt="" class="center-block img-circle img-thumbnail img-responsive">
            </div>
            <!--/col--> 
            <div class="col-xs-12 col-sm-8">
            <c:forEach items = "${uClientInfoList}" var = "data" varStatus = "current">
              <h2>${data.clientName}</h2>
              <br><br>
              <p><strong>이름: </strong> ${data.clientID} </p>
              <p><strong>Level: </strong> ${data.clientLevel} </p>
              <p><strong>연락처: </strong> ${data.clientTel} </p>
              <p><strong>예약 여부: </strong> ${data.clientBooking} </p>
           <!--    <p><strong>Skills: </strong>
                <span class="label label-info tags">html5</span> 
                <span class="label label-info tags">css3</span>
                <span class="label label-info tags">jquery</span>
                <span class="label label-info tags">bootstrap3</span>
              </p> -->
              </c:forEach>
            </div>
          </div>
          <!--/row-->
        </div>
        <!--/panel-body-->
      </div>
      <!--/panel-->
    </div>
    <!--/col--> 
  </div>
  <!--/row--> 
</div>
<!--/container-->
</body>
</tag:template>