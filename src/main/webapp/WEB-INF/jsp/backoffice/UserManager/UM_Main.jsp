<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tag" %>

<%--------------------------------------------------------------------------------------------------------------
 Page Name 	: 관리자 페이지 메인화면
 Page No. 	: 10
 Author 	: Manoo
 content 	: 관리자 입장에서 보는 전체 관리 페이지. 고객 관리와 사원 관리를 모두 출력해줌.
---------------------------------------------------------------------------------------------------------------%>

    <!-- 
    
    	마누 스터디 :
    	
    	a href에 값을 넣을 때, #을 넣게 되면 무조건 빈 주소값으로 간다. # = default 라고 생각하면 된다.
    	
    	그래서 <a href="/backoffice/UserManager/#">으로 선언했을 때, customer.jsp 파일이 아닌 main.jsp가 호출되었던 것!
    
     -->
<tag:template activeMenu="10">
    <div class="container-fluid">
    <div class="row">
        <div>
          <h1 class="page-header">관리 페이지</h1>
          
          <div class="row placeholders">
            <div class="col-xs-6 col-sm-3 placeholder">
              <img data-src="holder.js/200x200/auto/vine" class="img-responsive" alt="General Member Image">
              <h4>General Member</h4>
              <span class="text-muted">혜택 설명</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img data-src="holder.js/200x200/auto/sky" class="img-responsive" alt="Team Manager Image">
              <h4>Team Manager</h4>
              <span class="text-muted">혜택 나열</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img data-src="holder.js/200x200/auto/vine" class="img-responsive" alt="Boss Image">
              <h4>Boss</h4>
              <span class="text-muted">혜택 나열</span>
            </div>
          </div>

          <div class="row placeholders">
            <div class="col-xs-6 col-sm-3 placeholder">
              <img data-src="holder.js/200x200/auto/vine" class="img-responsive" alt="Platinum Star Image">
              <h4>Platinum Star</h4>
              <span class="text-muted">혜택 설명</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img data-src="holder.js/200x200/auto/sky" class="img-responsive" alt="Bronze Star Image">
              <h4>Bronze Star</h4>
              <span class="text-muted">혜택 나열</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img data-src="holder.js/200x200/auto/vine" class="img-responsive" alt="Silver Star Image">
              <h4>Silver Star</h4>
              <span class="text-muted">혜택 나열</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img data-src="holder.js/200x200/auto/sky" class="img-responsive" alt="Gold Star Image">
              <h4>Gold Star</h4>
              <span class="text-muted">혜택 나열</span>
            </div>
          </div>
			
          <h2 class="sub-header">전체 명단</h2>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>회원번호</th>
                  <th>성함</th>
                  <th>고객 등급</th>
                  <th>연락처</th>
                  <th>에약여부</th>
                  <th>승인여부</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1,001</td>
                  <td>유인나</td>
                  <td>Gold Star</td>
                  <td>010-xxxx-xxxx</td>
                  <td>x</td>
                  <td>o</td>
                </tr>
              </tbody>
            </table>
            
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>직원번호</th>
                  <th>이름</th>
                  <th>직원 등급</th>
                  <th>연락처</th>
                  <th>입사일</th>
                  <th>승인여부</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1,001</td>
                  <td>아이유</td>
                  <td>General Member</td>
                  <td>010-xxxx-xxxx</td>
                  <td>2015-08-30</td>
                  <td>o</td>
                </tr>
               </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>


</tag:template>
