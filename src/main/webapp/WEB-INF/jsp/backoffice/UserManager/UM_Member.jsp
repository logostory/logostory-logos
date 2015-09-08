<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
			
          <h2 class="sub-header">직원 명단</h2>
          <div class="table-responsive">
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
                <tr>
                  <td>1,002</td>
                  <td>아이유</td>
                  <td>General Member</td>
                  <td>010-xxxx-xxxx</td>
                  <td>2015-08-30</td>
                  <td>o</td>
                </tr>
                <tr>
                  <td>1,003</td>
                  <td>아이유</td>
                  <td>General Member</td>
                  <td>010-xxxx-xxxx</td>
                  <td>2015-08-30</td>
                  <td>o</td>
                </tr>
                <tr>
                  <td>1,003</td>
                  <td>아이유</td>
                  <td>General Member</td>
                  <td>010-xxxx-xxxx</td>
                  <td>2015-08-30</td>
                  <td>o</td>
                </tr>
                <tr>
                  <td>1,004</td>
                  <td>아이유</td>
                  <td>General Member</td>
                  <td>010-xxxx-xxxx</td>
                  <td>2015-08-30</td>
                  <td>o</td>
                </tr>
                <tr>
                  <td>1,005</td>
                  <td>아이유</td>
                  <td>General Member</td>
                  <td>010-xxxx-xxxx</td>
                  <td>2015-08-30</td>
                  <td>o</td>
                </tr>
                <tr>
                  <td>1,006</td>
                  <td>아이유</td>
                  <td>General Member</td>
                  <td>010-xxxx-xxxx</td>
                  <td>2015-08-30</td>
                  <td>o</td>
                </tr>
                <tr>
                  <td>1,007</td>
                  <td>아이유</td>
                  <td>General Member</td>
                  <td>010-xxxx-xxxx</td>
                  <td>2015-08-30</td>
                  <td>o</td>
                </tr>
                <tr>
                  <td>1,008</td>
                  <td>아이유</td>
                  <td>General Member</td>
                  <td>010-xxxx-xxxx</td>
                  <td>2015-08-30</td>
                  <td>o</td>
                </tr>
                <tr>
                  <td>1,009</td>
                  <td>아이유</td>
                  <td>General Member</td>
                  <td>010-xxxx-xxxx</td>
                  <td>2015-08-30</td>
                  <td>o</td>
                </tr>
                <tr>
                  <td>1,010</td>
                  <td>아이유</td>
                  <td>General Member</td>
                  <td>010-xxxx-xxxx</td>
                  <td>2015-08-30</td>
                  <td>o</td>
                </tr>
                <tr>
                  <td>1,011</td>
                  <td>아이유</td>
                  <td>General Member</td>
                  <td>010-xxxx-xxxx</td>
                  <td>2015-08-30</td>
                  <td>o</td>
                </tr>
                <tr>
                  <td>1,012</td>
                  <td>아이유</td>
                  <td>General Member</td>
                  <td>010-xxxx-xxxx</td>
                  <td>2015-08-30</td>
                  <td>o</td>
                </tr>
                <tr>
                  <td>1,013</td>
                  <td>아이유</td>
                  <td>General Member</td>
                  <td>010-xxxx-xxxx</td>
                  <td>2015-08-30</td>
                  <td>o</td>
                </tr>
                <tr>
                  <td>1,014</td>
                  <td>아이유</td>
                  <td>General Member</td>
                  <td>010-xxxx-xxxx</td>
                  <td>2015-08-30</td>
                  <td>o</td>
                </tr>
                <tr>
                  <td>1,015</td>
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