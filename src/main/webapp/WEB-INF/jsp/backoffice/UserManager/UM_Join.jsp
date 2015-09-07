<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags" %>

<tag:template activeMenu="888">
<body>
	<div class="contentwrap">
	  <article class="container">
	    <div class="page-header">
		  <h1>회원가입 <small>일반회원가입</small></h1>
	    </div>
	    <form class="form-horizontal">
	    <div class="form-group">
	    <label for="inputEmail" class="col-sm-2 control-label">아이디</label>
	    <div class="col-sm-6">
	    <input type="email" class="form-control" id="inputEmail" placeholder="이메일">
	    </div>
	    </div>
	    <div class="form-group">
	    <label for="inputPassword" class="col-sm-2 control-label">비밀번호</label>
	    <div class="col-sm-6">
	    <input type="password" class="form-control" id="inputPassword" placeholder="비밀번호">
	    <p class="help-block">*숫자, 특수문자 포함 8자 이상</p>
	    </div>
	    </div>
	       <div class="form-group">
	    <label for="inputPasswordCheck" class="col-sm-2 control-label">비밀번호 확인</label>
	    <div class="col-sm-6">
	    <input type="password" class="form-control" id="inputPasswordCheck" placeholder="비밀번호 확인">
	      <p class="help-block">*비밀번호를 한번 더 입력해주세요.</p>
	    </div>
	    </div>
	    <div class="form-group">
	    <label for="inputName" class="col-sm-2 control-label">이름</label>
	    <div class="col-sm-6">
	    <input type="text" class="form-control" id="inputName" placeholder="이름">
	    </div>
	    </div>
	    <div class="form-group">
	    <label for="inputNumber" class="col-sm-2 control-label">휴대폰번호</label>
	    <div class="col-sm-4">
	    <input type="text" class="form-control" id="inputNumber" placeholder="- 없이 적어주세요.">
	    </div>
	      <div class="col-sm-2">
	      <a class="btn btn-default" href="#" role="button">인증번호 전송</a>
	      </div>
	    </div>
	    <div class="form-group">
	    <label for="inputNumberCheck" class="col-sm-2 control-label">인증번호 확인</label>
	    <div class="col-sm-6">
	    <input type="text" class="form-control" id="inputNumberCheck" placeholder="인증번호">
	    <p class="help-block">*전송된 인증번호를 입력해주세요.</p>
	    </div>
	    </div>
	      <div class="form-group">
	    <label for="inputAgree" class="col-sm-2 control-label">약관 동의</label>
	    <div class="col-sm-6 checkbox">
	      <label>
	        <input id="agree" type="checkbox"> <a href=""> 이용약관</a>에 동의합니다.
	    </label>
	    </div>
	    </div>
	    <div class="form-group">
	    <label for="inputName" class="col-sm-2 control-label"></label>
	    <div class="col-sm-6">
	      <button type="submit" class="btn btn-primary">회원가입</button>
	    </div>
	    </div>
	    </form>
	  </article>
	</div>
</body>
</tag:template>