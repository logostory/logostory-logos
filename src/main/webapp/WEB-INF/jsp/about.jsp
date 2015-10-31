<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" 	uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags" %>

<div class="section translucent-bg bg-image-2 pb-clear" data-ng-app="noticeApp" data-ng-controller="NoticeCtrl">
	<div class="container object-non-visible" data-animation-effect="fadeIn">
		<h1 id="about" class="title text-center">Notice</h1>
		<div class="row">
			<div class="col-md-12">
				<!-- Swiper -->
			    <div class="swiper-container">
			        <div class="swiper-wrapper">
			            <div class="swiper-slide" data-ng-repeat="notice in notices">
			            
			            <h1>{{notice.pmTitle}}</h1>
			            
			            <div data-ng-bind-html-unsafe="notice.pmContents"></div>
			            
			            </div>
			        </div>
			        <!-- Add Pagination -->
			        <div class="swiper-pagination"></div>
			        <!-- Add Arrows -->
			        <div class="swiper-button-next"></div>
			        <div class="swiper-button-prev"></div>
			    </div>
			</div>
		</div>
	</div>
</div>

<!-- 

<div id="about" class="swiper-container">
    <div class="swiper-wrapper">
        <div class="swiper-slide" data-bg-image="resources/images/bg-image-1.jpg">
        	<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h1 class="title text-center">공지사항</h1>
					</div>
				</div>
			</div>
        </div>
        <div class="swiper-slide" data-bg-image="resources/images/bg-image-1.jpg">Slide 2</div>
        <div class="swiper-slide" data-bg-image="resources/images/bg-image-1.jpg">Slide 3</div>
        <div class="swiper-slide" data-bg-image="resources/images/bg-image-1.jpg">Slide 4</div>
    </div>
    
    <div class="swiper-pagination"></div>
</div>

 -->

<style>
.swiper-container {
    width: 100%;
    height: 500px;
}
.swiper-slide {
    text-align: center;
    font-size: 18px;

    /* Center slide text vertically */
    display: -webkit-box;
    display: -ms-flexbox;
    display: -webkit-flex;
    display: flex;
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    -webkit-justify-content: center;
    justify-content: center;
    -webkit-box-align: center;
    -ms-flex-align: center;
    -webkit-align-items: center;
    align-items: center;
}

.swiper-slide .notice-slide {height: 100%;}
</style>