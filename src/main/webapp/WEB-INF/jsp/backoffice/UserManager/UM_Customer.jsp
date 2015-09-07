<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">고객관리</h1>

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
			
          <h2 class="sub-header">이용 고객 명단</h2>
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
                <tr>
                  <td>1,002</td>
                  <td>유인나</td>
                  <td>Gold Star</td>
                  <td>010-xxxx-xxxx</td>
                  <td>x</td>
                  <td>o</td>
                </tr>
                <tr>
                  <td>1,003</td>
                  <td>유인나</td>
                  <td>Gold Star</td>
                  <td>010-xxxx-xxxx</td>
                  <td>x</td>
                  <td>o</td>
                </tr>
                <tr>
                  <td>1,003</td>
                  <td>유인나</td>
                  <td>Gold Star</td>
                  <td>010-xxxx-xxxx</td>
                  <td>x</td>
                  <td>o</td>
                </tr>
                <tr>
                  <td>1,004</td>
                  <td>유인나</td>
                  <td>Gold Star</td>
                  <td>010-xxxx-xxxx</td>
                  <td>x</td>
                  <td>o</td>
                </tr>
                <tr>
                  <td>1,005</td>
                  <td>유인나</td>
                  <td>Gold Star</td>
                  <td>010-xxxx-xxxx</td>
                  <td>x</td>
                  <td>o</td>
                </tr>
                <tr>
                  <td>1,006</td>
                  <td>유인나</td>
                  <td>Gold Star</td>
                  <td>010-xxxx-xxxx</td>
                  <td>x</td>
                  <td>o</td>
                </tr>
                <tr>
                  <td>1,007</td>
                  <td>유인나</td>
                  <td>Gold Star</td>
                  <td>010-xxxx-xxxx</td>
                  <td>x</td>
                  <td>o</td>
                </tr>
                <tr>
                  <td>1,008</td>
                  <td>유인나</td>
                  <td>Gold Star</td>
                  <td>010-xxxx-xxxx</td>
                  <td>x</td>
                  <td>o</td>
                </tr>
                <tr>
                  <td>1,009</td>
                  <td>유인나</td>
                  <td>Gold Star</td>
                  <td>010-xxxx-xxxx</td>
                  <td>x</td>
                  <td>o</td>
                </tr>
                <tr>
                  <td>1,010</td>
                  <td>유인나</td>
                  <td>Gold Star</td>
                  <td>010-xxxx-xxxx</td>
                  <td>x</td>
                  <td>o</td>
                </tr>
                <tr>
                  <td>1,011</td>
                  <td>유인나</td>
                  <td>Gold Star</td>
                  <td>010-xxxx-xxxx</td>
                  <td>x</td>
                  <td>o</td>
                </tr>
                <tr>
                  <td>1,012</td>
                  <td>유인나</td>
                  <td>Gold Star</td>
                  <td>010-xxxx-xxxx</td>
                  <td>x</td>
                  <td>o</td>
                </tr>
                <tr>
                  <td>1,013</td>
                  <td>유인나</td>
                  <td>Gold Star</td>
                  <td>010-xxxx-xxxx</td>
                  <td>x</td>
                  <td>o</td>
                </tr>
                <tr>
                  <td>1,014</td>
                  <td>유인나</td>
                  <td>Gold Star</td>
                  <td>010-xxxx-xxxx</td>
                  <td>x</td>
                  <td>o</td>
                </tr>
                <tr>
                  <td>1,015</td>
                  <td>유인나</td>
                  <td>Gold Star</td>
                  <td>010-xxxx-xxxx</td>
                  <td>x</td>
                  <td>o</td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
     </div>
</tag:template>
