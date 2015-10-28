<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tag" %>

<%--------------------------------------------------------------------------------------------------------------
 Page Name 	: 사원관리 뷰
 Page No. 	: 12
 Author 	: Manoo
 content 	: 관리자 입장에서 보는 사원관리 페이지
---------------------------------------------------------------------------------------------------------------%>

<tag:template activeMenu="12">

   <div class="container-fluid">
      <div class="row">
        <div>
          <h1 class="page-header">사원관리</h1>

          <div class="row placeholders">
            <div class="col-xs-6 col-sm-3 placeholder">
              <img src="http://images.vectorhq.com/images/previews/1cb/person-icon-118181.png" width="200" height="200" class="img-responsive" alt="General Member Image">
              <h4>General Member</h4>
              <span class="text-muted">혜택 설명</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img src="http://images.vectorhq.com/images/previews/1cb/person-icon-118181.png" width="200" height="200" class="img-responsive" alt="Team Manager Image">
              <h4>Team Manager</h4>
              <span class="text-muted">혜택 나열</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img src="http://images.vectorhq.com/images/previews/1cb/person-icon-118181.png" width="200" height="200" class="img-responsive" alt="Boss Image">
              <h4>Boss</h4>
              <span class="text-muted">혜택 나열</span>
            </div>
          </div>
			
          <h2 class="sub-header">직원 명단</h2>
	        <form name="resignSelect" class="resignYN" method="post">  
	          <div class="table-responsive">
	            <table class="table table-striped">
	              <thead>
	                <tr>
	                  <th>직원번호</th>
	                  <th>직원아이디</th>
	                  <th>이름</th>
	                  <th>직원 등급</th>
	                  <th>연락처</th>
	                  <th>입사일</th>
	                  <th>승인여부</th>
	                  <th>비고</th>
	                </tr>
	              </thead>
	              <tbody>
	              	<c:forEach items = "${uMemberList}" var = "data" varStatus = "idx">
	                <tr data-user-id = "${data.clientID}">
	                  <td>${data.managerMembership}</td>
	                  <td><input type="text" name="clientID" id="clientID" value="${data.clientID}" placeholder="${data.clientID}" class="form-control"></td>
	                  <td>${data.managerName}</td>
	                  <td>${data.managerLevel}</td>
	                  <td>${data.managerTel}</td>
	                  <td>${data.managerAttendDate}</td>
	                  <td>${data.managerApproval}</td>
	                  <td><button type="button" class="btn btn-sm" id="resignBtn" value="${data.clientID}" onclick="resign()">퇴사</button></td>
	                </tr>
	                </c:forEach>
	              </tbody>
	            </table>
	          </div>
	       </form>
        </div>
      </div>
    </div>
    
    <script type="text/javascript">
	
		function resign() {
			
			if(confirm("정말 퇴사처리 하실건가요??")) {
				document.resignSelect.action="/backoffice/UserManager/goResignM";
				document.resignSelect.submit();
			else {
				alert('퇴사 처리가 취소되었습니다.');
				return;
			}
		}
	</script>
	
</tag:template>