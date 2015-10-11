<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags" %>

<tag:template activeMenu="888">
<body>
	<div class="contentwrap">
	  <article class="container">
	    <div class="page-header">
		  <h1>ȸ������ <small>�Ϲ�ȸ������</small></h1>
	    </div>
	    <form class="form-horizontal">
	    <div class="form-group">
	    <label for="inputEmail" class="col-sm-2 control-label">���̵�</label>
	    <div class="col-sm-6">
	    <input type="email" class="form-control" id="inputEmail" placeholder="�̸���">
	    </div>
	    </div>
	    <div class="form-group">
	    <label for="inputPassword" class="col-sm-2 control-label">��й�ȣ</label>
	    <div class="col-sm-6">
	    <input type="password" class="form-control" id="inputPassword" placeholder="��й�ȣ">
	    <p class="help-block">*����, Ư������ ���� 8�� �̻�</p>
	    </div>
	    </div>
	       <div class="form-group">
	    <label for="inputPasswordCheck" class="col-sm-2 control-label">��й�ȣ Ȯ��</label>
	    <div class="col-sm-6">
	    <input type="password" class="form-control" id="inputPasswordCheck" placeholder="��й�ȣ Ȯ��">
	      <p class="help-block">*��й�ȣ�� �ѹ� �� �Է����ּ���.</p>
	    </div>
	    </div>
	    <div class="form-group">
	    <label for="inputName" class="col-sm-2 control-label">�̸�</label>
	    <div class="col-sm-6">
	    <input type="text" class="form-control" id="inputName" placeholder="�̸�">
	    </div>
	    </div>
	    <div class="form-group">
	    <label for="inputNumber" class="col-sm-2 control-label">�޴�����ȣ</label>
	    <div class="col-sm-4">
	    <input type="text" class="form-control" id="inputNumber" placeholder="- ���� �����ּ���.">
	    </div>
	      <div class="col-sm-2">
	      <a class="btn btn-default" href="#" role="button">������ȣ ����</a>
	      </div>
	    </div>
	    <div class="form-group">
	    <label for="inputNumberCheck" class="col-sm-2 control-label">������ȣ Ȯ��</label>
	    <div class="col-sm-6">
	    <input type="text" class="form-control" id="inputNumberCheck" placeholder="������ȣ">
	    <p class="help-block">*���۵� ������ȣ�� �Է����ּ���.</p>
	    </div>
	    </div>
	      <div class="form-group">
	    <label for="inputAgree" class="col-sm-2 control-label">��� ����</label>
	    <div class="col-sm-6 checkbox">
	      <label>
	        <input id="agree" type="checkbox"> <a href=""> �̿���</a>�� �����մϴ�.
	    </label>
	    </div>
	    </div>
	    <div class="form-group">
	    <label for="inputName" class="col-sm-2 control-label"></label>
	    <div class="col-sm-6">
	      <button type="submit" class="btn btn-primary">ȸ������</button>
	    </div>
	    </div>
	    </form>
	  </article>
	</div>
</body>
</tag:template>