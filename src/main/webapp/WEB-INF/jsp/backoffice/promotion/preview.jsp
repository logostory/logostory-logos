<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" 	uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags" %>

<%--------------------------------------------------------------------------------------------------------------
 Page Name 	: Add promotion
 Page Desc. : Add promotion page
 Page No. 	: 32
 Author 	: David Sun
---------------------------------------------------------------------------------------------------------------%>

<tag:template activeMenu="32">

	<header class="page-header">
		<div class="page-header-inner">
			<div class="page-header-image hidden-xs">
				<i class="fa fa-rocket"></i>
			</div>
			<div class="page-header-main">
				<ol class="nav-breadcrumbs">
				<li>
				<a href="#">Promotion</a>
				</li>
				<li class="nav-selected">Promotions</li>
				</ol>
				<h1>Promotions</h1>
			</div>
			<div class="page-header-action">
				<div class="btn-group" role="group" aria-label="...">
					<button type="button" class="btn btn-default btn-sm" data-toggle="modal" data-target="#modal-addpromotion">
					  <i class="fa fa-plus-circle"></i> New Promotion
					</button>
				</div>
			</div>
		</div>
	</header>
	<div>
	  <!-- Nav tabs -->
	  <ul class="nav nav-tabs" role="tablist">
	    <li role="presentation" class="active"><a href="#add" aria-controls="home" role="tab" data-toggle="tab">Overview</a></li>
	    <li role="presentation"><a href="#list" aria-controls="profile" role="tab" data-toggle="tab">List <span class="badge">4</span></a></li>
	  </ul>
	
	  <!-- Tab panes -->
	  <div class="tab-content">
	    <div role="tabpanel" class="tab-pane active" id="add">
	    	<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>

	    </div>
	    <div role="tabpanel" class="tab-pane" id="list">
	    
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
	             <tr data-pm-id="${data.pmId}">
	               <td>${data.pmId}</td>
	               <td>${data.pmType}</td>
	               <td>${data.pmTitle}</td>
	               <td>${data.pmContents}</td>
	               <td>${data.pmImageUrl}</td>
	               <td>${data.pmLinkurl}</td>
	               <td>${data.pmIsActive}</td>
	             </tr>
	           </tbody>
	         </table>
	       </div>
	    </div>
	  </div>
	</div>
	
	
	<!-- Modal -->
	<div class="modal" id="modal-addpromotion" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="myModalLabel">Add new promotion</h4>
	      </div>
	      <div class="modal-body">
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
			</form> 
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default btn-link" data-dismiss="modal">Close</button>
	        <button type="button" class="btn btn-primary btn-sm">Save</button>
	      </div>
	    </div>
	  </div>
	</div>
	<script type="text/javascript">
$(function () {
    $('#container').highcharts({
        chart: {
            type: 'areaspline'
        },
        title: {
            text: 'Response rate of promotion'
        },
        legend: {
            layout: 'vertical',
            align: 'left',
            verticalAlign: 'top',
            x: 150,
            y: 100,
            floating: true,
            borderWidth: 1,
            backgroundColor: (Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'
        },
        xAxis: {
            categories: [
                'Monday',
                'Tuesday',
                'Wednesday',
                'Thursday',
                'Friday',
                'Saturday',
                'Sunday'
            ],
            plotBands: [{ // visualize the weekend
                from: 4.5,
                to: 6.5,
                color: 'rgba(68, 170, 213, .2)'
            }]
        },
        yAxis: {
            title: {
                text: 'Fruit units'
            }
        },
        tooltip: {
            shared: true,
            valueSuffix: ' units'
        },
        credits: {
            enabled: false
        },
        plotOptions: {
            areaspline: {
                fillOpacity: 0.5
            }
        },
        series: [{
            name: 'John',
            data: [3, 4, 3, 5, 4, 10, 12]
        }, {
            name: 'Jane',
            data: [1, 3, 4, 3, 3, 5, 4]
        }]
    });
});
		</script>
	<script src="<c:url value="/resources/backoffice/Highcharts-4.1.8/js/highcharts.js"/>"></script>
</tag:template>