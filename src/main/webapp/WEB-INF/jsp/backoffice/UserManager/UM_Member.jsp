<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>UserManager</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/bootstrap/css/backoffice.css"/>" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="dashboard.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Logos</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#">Dashboard</a></li>
            <li><a href="#">Settings</a></li>
            <li><a href="#">Profile</a></li>
            <li><a href="#">Help</a></li>
          </ul>
          <form class="navbar-form navbar-right">
            <input type="text" class="form-control" placeholder="Search...">
          </form>
        </div>
      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
          	<li class="active"><a href="/backoffice/UserManager">전체보기</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li class="active"><a href="/backoffice/UserManager/customer">고객 관리</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li class="active"><a href="/backoffice/UserManager/member">사원 관리</a></li>
          </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
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

			<!-- 
			<form class="form-horizontal"> 
			  <div class="form-group">
			    <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
			    <div class="col-sm-10">
			      <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
			    <div class="col-sm-10">
			      <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
			    </div>
			  </div>
			  <div class="form-group">
			    <div class="col-sm-offset-2 col-sm-10">
			      <div class="checkbox">
			        <label>
			          <input type="checkbox"> Remember me
			        </label>
			      </div>
			    </div>
			  </div>
			  <div class="form-group">
			    <div class="col-sm-offset-2 col-sm-10">
			      <button type="submit" class="btn btn-default">Sign in</button>
			    </div>
			  </div>
			</form>
			-->
			
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

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="../../assets/js/vendor/holder.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  

</body>
</html>