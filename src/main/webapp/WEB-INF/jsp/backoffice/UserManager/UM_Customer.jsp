<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tag" %>

<%--------------------------------------------------------------------------------------------------------------
 Page Name 	: 고객관리 뷰
 Page No. 	: 11
 Author 	: Manoo
 content 	: 관리자 입장에서 보는 고객관리 페이지
---------------------------------------------------------------------------------------------------------------%>

<tag:template activeMenu="11">
	<div class="container-fluid">
		<div class="row">
			<div>
				<h1 class="page-header">고객관리</h1>
				<div class="row placeholders">
					<div class="col-xs-6 col-sm-3 placeholder">
						<img src="http://www.yourpokerdream.com/images/promotions/platinum.png" width="200" height="200" class="img-responsive" alt="Platinum Star Image">
						<h4>Platinum Star</h4>
						<span class="text-muted">혜택 설명</span>
					</div>
					<div class="col-xs-6 col-sm-3 placeholder">
						<img src="http://abbot.us/DD629/official/star_bronze.gif" width="200" height="200" class="img-responsive" alt="Bronze Star Image">
						<h4>Bronze Star</h4>
						<span class="text-muted">혜택 나열</span>
					</div>
					<div class="col-xs-6 col-sm-3 placeholder">
						<img src="http://1.bp.blogspot.com/-WcF9icqE4Jo/Ts6RPzKl_3I/AAAAAAAAATM/iHytco7K1Jk/s1600/Silver_star.png" width="200" height="200" class="img-responsive" alt="Silver Star Image">
						<h4>Silver Star</h4>
						<span class="text-muted">혜택 나열</span>
					</div>
					<div class="col-xs-6 col-sm-3 placeholder">
						<img src="http://cliparts.co/cliparts/8TG/aok/8TGaokzTa.png" width="200" height="200" class="img-responsive" alt="Gold Star Image">
						<h4>Gold Star</h4>
						<span class="text-muted">혜택 나열</span>
					</div>
				</div>
				<h2 class="sub-header">이용 고객 명단</h2>
				<div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>회원번호</th>
								<th>회원아이디</th>
								<th>성함</th>
								<th>고객 등급</th>
								<th>연락처</th>
								<th>에약여부</th>
								<th>승인여부</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items = "${uClientList}" var = "data" varStatus = "idx">
							<tr data-user-id = "${data.clientID}">
								<td>${data.clientMembership}</td>
								<td>${data.clientID}</td>
								<td>${data.clientName}</td>
								<td>${data.clientLevel}</td>
								<td>${data.clientTel}</td>
								<td>${data.clientBooking}</td>
								<td>${data.clientApproval}</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</tag:template>
