<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" 	uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
	<head>
		<meta charset="utf-8">
		<title>Logos | Start up community coffee shop</title>
		<meta name="description" content="Worthy a Bootstrap-based, Responsive HTML5 Template">
		<meta name="author" content="htmlcoder.me">

		<!-- Mobile Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<!-- Favicon -->
		<link rel="shortcut icon" href="resources/images/favicon.ico">

		<!-- Web Fonts -->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,400,700,300&amp;subset=latin,latin-ext' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Raleway:700,400,300' rel='stylesheet' type='text/css'>

		<!-- Bootstrap core CSS -->
		<link href="resources/bootstrap/css/bootstrap.css" rel="stylesheet">

		<!-- Font Awesome CSS -->
		<link href="resources/fonts/font-awesome/css/font-awesome.css" rel="stylesheet">

		<!-- Plugins -->
		<link href="resources/css/animations.css" rel="stylesheet">
		
		<!-- swipper -->
		<link href="resources/plugins/swiper/css/swiper.min.css" rel="stylesheet">

		<!-- Worthy core CSS file -->
		<link href="resources/css/style.css" rel="stylesheet">

		<!-- Custom css --> 
		<link href="resources/css/custom.css" rel="stylesheet">
		
		<!-- Custom css --> 
		<link href="resources/css/logos.css" rel="stylesheet">
		
		<!-- Swiper -->
		<script type="text/javascript" src="resources/plugins/swiper/js/swiper.min.js"></script>
		
		<!-- 
		
		**마누 스터디
		
					display:none 관련 참조 사이트 : http://l2j.co.kr/1167
					session으로 가져온 값을 그대로 출력하기 : http://wickedmagic.tistory.com/129
		
		-->
<%@ page session = "true" %>
<%
		// 여기는 공통
		String modify = (String)session.getAttribute("modify");
		System.out.println("modify 여부 = " + modify);
		
		String loginYN = (String)session.getAttribute("loginYN");
		System.out.println("login 여부 = " + loginYN);
		
		String gubun = (String)session.getAttribute("gubun");
		System.out.println("gubun 값은 = " + gubun);
%>
		
		<!-- 스크립트 추가 : 마누 -->
		<script language="javascript" type="text/javascript">
			
			var idCheckCount = 0;
			
			function Agreement() {
				
				var agreeCheck = document.getElementById("agreement");
				var idCheck = document.getElementById("writeID");
				var pwCheck1 = document.getElementById("writePW");
				var pwCheck2 = document.getElementById("checkPW");
				var nameCheck = document.getElementById("writeName");
				var phoneCheck = document.getElementById("writePhone");
				
				if (idCheck.value == "" || idCheck.value == null) {
					alert('아이디를 입력해주세요.');
					return false;
				}
				
				else if (pwCheck1.value == "" || pwCheck1.value == null) {
					alert('비밀번호를 입력해주세요.');
					return false;
				}
				
				else if (pwCheck2.value == "" || pwCheck2.value == null) {
					alert('비밀번호를 한번 더 입력해주세요.');
					return false;
				}
				
				else if (pwCheck1.value != pwCheck2.value) {
					alert('비밀번호가 일치하지 않습니다.');
					return false;
				}
				
				else if (nameCheck.value == "" || nameCheck.value == null) {
					alert('이름을 입력해주세요.');
					return false;
				}
				
				else if (phoneCheck.value == "" || phoneCheck.value == null) {
					alert('연락처를 입력해주세요.');
					return false;
				}
				
				else if (phoneCheck.value.length < 10 || phoneCheck.value.length > 11) {
					alert('연락처를 잘못 입력하셨습니다.\n다시 입력해주세요');
					return false;
				}
				
				else if (agreeCheck.checked == false) {
					alert('약관에 동의하셔야 합니다.');
					return false;
				}
				
				else {
					if(idCheckCount == 1){
						window.open("", "doJoin", "width=450, height=550, scrollbars=1, menubar=1, resizable=1");
						document.joinform.target="doJoin";
						document.joinform.action="/backoffice/UserManager/doJoin2";
						document.joinform.submit();
						document.joinform.reset();
						location.reload();
					}
					else if(idCheckCount == 999){
						alert('중복된 아이디 입니다.');
					}
					else{
						alert('아이디 중복 확인을 해주세요.');
					}
				}
			}
			
			function idCheck() {
				
				idCheckCount = 1;
				
				var idCheck = document.getElementById("writeID");
				
				if (idCheck.value == "" || idCheck.value == null) {
					alert('아이디를 입력해주세요.');
					idCheck.focus();
					return false;
				}
				
				for (i=0; i<idCheck.value.length; i++) {
					
					ch = idCheck.value.charAt(i)
					
					if(!(ch>='0' && ch <='9') && !(ch>='a' && ch<='z')) {
						alert('아이디는 소문자, 숫자만 입력 가능합니다.');
						idCheck.focus();
						return false;
					}
				
					else if (idCheck.value.indexOf(" ") >= 0) {
						alert('아이디에 공백을 사용할 수 없습니다.');
						idCheck.focus();
						return false;
					}
					
					else if (idCheck.value.length<6 || idCheck.value.length>12) {
						alert('아이디는 6자 이상 12자 미만으로 설정해주세요.');
						idCheck.focus();
						return false;
					}
				}
				
				var idCheck2 = $("#writeID").val();
				
				$.ajax({
					type:"POST",
					url:"/backoffice/UserManager/idCheck",
					data:'clientID='+idCheck2,
					dataType:"text",
					success:function(data){
						if(data == null || data == "null"){
							this.idCheckCount = idCheckCount;
							$("input[name=clientID]").attr("readonly", true);
							alert('사용 가능합니다.');
						}
						else{
							idCheckCount = 999;
							this.idCheckCount = idCheckCount;
							alert('중복된 아이디 입니다.');
						}
					},
					error:function(request, status, error){
						alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
					}
				});
			}
			
			function onlyNumberInput() {
				
				var code = window.event.keyCode;
				
				if ((code>34 && code<41) || (code>47 && code<58) || (code>95 && code<106) || code==8 || code==9 || code==13 || code==46) {
					window.event.returnValue = true;
					return;
				}
				else {
					window.event.returnValue=false;
				}
			}
			
			var count = 0;
			
			function selectJoin(id) {
				count++;
				
				if (count%2 == 1) {
					document.getElementById(id).style.display = "";
					document.loginform.reset();
				}
				else {
					document.getElementById(id).style.display = "none";
					document.joinform.reset();
					document.joinform.clientID.readOnly=false;
				}
				
				this.count = count;
			}
			
			function allReset() {
				document.joinform.reset();
				document.joinform.clientID.readOnly=false;
			}
			
			function login() {
				
				var idCheck = document.getElementById("loginID");
				var pwCheck = document.getElementById("loginPW");
				
				var idCheck2 = $("#loginID").val();
				var pwCheck2 = $("#loginPW").val();
				
				if(idCheck.value == "" || idCheck.value == null) {
					alert('아이디를 입력해주세요.');
					return false;
				}
				else if(pwCheck.value == "" || pwCheck.value == null) {
					alert('비밀번호를 입력해주세요.');
					return false;
				}
				else {
					$.ajax({
						type:"POST",
						url:"/backoffice/UserManager/doLogin",
						data:'clientID='+idCheck2+'&clientPW='+pwCheck2,
						dataType:"text",
						success:function(data) {
							if(data == '"X"') {
								alert('등록되지 않은 아이디입니다.');
							}
							else if(data == '"I"') {
								alert('아이디를 다시 확인해주세요.');
							}
							else if(data == '"P"') {
								alert('비밀번호를 다시 확인해주세요.');
							}
							else if(data == '"B"') {
								alert('사장님 어서오세요!');
								location.href="/backoffice/UserManager/main";
							}
							else {
								location.reload();
								alert('로그인 되었습니다.');
							}
						},
						error:function(request, status, error) {
							alert("코드 : " + request.status + "\n" + "메세지 : " + request.responseText + "\n" + "에러 : " + error);
						}
					});
				}
			}
			
			function logout() {
				window.location.replace('/logout');
				alert('로그아웃 되었습니다.');
			}
			
			function profile() {
				location.href="/backoffice/UserManager/profile";
			}
			
			function UpdateInfo() {
				location.href="/modify";
			}
			
			function ModifyC() {
				alert('수정이 완료되었습니다.');
				document.modifyC.action="/backoffice/UserManager/doModifyC";
				document.modifyC.submit();
			}
			
			function ModifyM() {
				alert('수정이 완료되었습니다.');
				document.modifyM.action="/backoffice/UserManager/doModifyM";
				document.modifyM.submit();
			}
			
			function resign() {
				
				if(confirm("정말 탈퇴하실건가요?")) {
					document.resignC.action="/backoffice/UserManager/goResign";
					document.resignC.submit();
				}
				else {
					alert('탈퇴가 취소되었습니다.');
					return;
				}
			}
			
		</script>
	
	</head>

	<body class="no-trans">
		<!-- scrollToTop -->
		<!-- ================ -->
		<div class="scrollToTop"><i class="icon-up-open-big"></i></div>

		<!-- header start -->
		<!-- ================ --> 
		<header class="header fixed clearfix navbar navbar-fixed-top">
			<div class="container">
				<div class="row">
					<div class="col-md-4">

						<!-- header-left start -->
						<!-- ================ -->
						<div class="header-left clearfix">

							<!-- logo -->
							<div class="logo smooth-scroll">
								<a href="#banner"><img id="logo" src="resources/images/logo.png" alt="Worthy"></a>
							</div>

							<!-- name-and-slogan -->
							<div class="site-name-and-slogan smooth-scroll">
								<div class="site-name"><a href="#banner">Logos</a></div>
								<div class="site-slogan">Startup community coffee shop</div>
							</div>

						</div>
						<!-- header-left end -->

					</div>
					<div id="topmenu" class="col-md-8">

						<!-- header-right start -->
						<!-- ================ -->
						<div class="header-right clearfix">

							<!-- main-navigation start -->
							<!-- ================ -->
							<div class="main-navigation animated">

								<!-- navbar start -->
								<!-- ================ -->
								<nav class="navbar navbar-default" role="navigation">
									<div class="container-fluid">

										<!-- Toggle get grouped for better mobile display -->
										<div class="navbar-header">
											<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-1">
												<span class="sr-only">Toggle navigation</span>
												<span class="icon-bar"></span>
												<span class="icon-bar"></span>
												<span class="icon-bar"></span>
											</button>
										</div>

										<!-- Collect the nav links, forms, and other content for toggling -->
										<div class="collapse navbar-collapse scrollspy smooth-scroll" id="navbar-collapse-1">
											<ul class="nav navbar-nav navbar-right">
												<li class="active"><a href="#banner">Home</a></li>
												<li><a href="#about">공지사항</a></li>
												<li><a href="#services">Activity</a></li>
												<li><a href="#portfolio">메뉴</a></li>
												<li><a href="#clients">Branchs</a></li>
<%
												if(loginYN == "Y") {
%>
													<li><a href="javascript:logout();">Logout</a></li>
													<li><a href="#login">Profile</a></li>
<%
												}
												else {
%>
												<li><a href="#login">Login/Join</a></li>
<%
												}
%>
												<li><a href="#contact">Booking</a></li>
											</ul>
										</div>

									</div>
								</nav>
								<!-- navbar end -->

							</div>
							<!-- main-navigation end -->

						</div>
						<!-- header-right end -->

					</div>
				</div>
			</div>
		</header>
		<!-- header end -->

		<!-- banner start -->
		<!-- ================ -->
		<div id="banner" class="banner">
			<div class="banner-image"></div>
			<div class="banner-caption">
				<div class="container">
					<div class="row">
						<div class="col-md-8 col-md-offset-2 object-non-visible" data-animation-effect="fadeIn">
							<h1 class="text-center">Coffee and <span>Study</span></h1>
							<p class="lead text-center">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos debitis provident nulla illum minus enim praesentium repellendus ullam cupiditate reiciendis optio voluptatem, recusandae nobis quis aperiam, sapiente libero ut at.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- banner end -->

		<!-- section start -->
		<!-- ================ -->
		<div class="section clearfix object-non-visible" data-animation-effect="fadeIn">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
					
					<jsp:include page="about.jsp"></jsp:include>
						
					</div>
				</div>
			</div>
		</div>
		<!-- section end -->

		<!-- section start -->
		<!-- ================ -->
		<div class="section translucent-bg bg-image-1 blue">
			<div class="container object-non-visible" data-animation-effect="fadeIn">
				<h1 id="services"  class="text-center title">Logos Activity</h1>
				<div class="space"></div>
				<div class="row">
					<div class="col-sm-6">
						<div class="media">
							<div class="media-body text-right">
								<h4 class="media-heading">Service 1</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure aperiam consequatur quo quis exercitationem reprehenderit dolor vel ducimus, voluptate eaque suscipit iste placeat.</p>
							</div>
							<div class="media-right">
								<i class="fa fa-cog"></i>
							</div>
						</div>
						<div class="media">
							<div class="media-body text-right">
								<h4 class="media-heading">Service 2</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure aperiam consequatur quo quis exercitationem reprehenderit dolor vel ducimus, voluptate eaque suscipit iste placeat.</p>
							</div>
							<div class="media-right">
								<i class="fa fa-check"></i>
							</div>
						</div>
						<div class="media">
							<div class="media-body text-right">
								<h4 class="media-heading">Service 3</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure aperiam consequatur quo quis exercitationem reprehenderit dolor vel ducimus, voluptate eaque suscipit iste placeat.</p>
							</div>
							<div class="media-right">
								<i class="fa fa-desktop"></i>
							</div>
						</div>
						<div class="media">
							<div class="media-body text-right">
								<h4 class="media-heading">Service 4</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure aperiam consequatur quo quis exercitationem reprehenderit dolor vel ducimus, voluptate eaque suscipit iste placeat.</p>
							</div>
							<div class="media-right">
								<i class="fa fa-users"></i>
							</div>
						</div>
					</div>
					<div class="space visible-xs"></div>
					<div class="col-sm-6">
						<div class="media">
							<div class="media-left">
								<i class="fa fa-leaf"></i>
							</div>
							<div class="media-body">
								<h4 class="media-heading">Service 5</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure aperiam consequatur quo quis exercitationem reprehenderit dolor vel ducimus, voluptate eaque suscipit iste placeat.</p>
							</div>
						</div>
						<div class="media">
							<div class="media-left">
								<i class="fa fa-area-chart"></i>
							</div>
							<div class="media-body">
								<h4 class="media-heading">Service 6</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure aperiam consequatur quo quis exercitationem reprehenderit dolor vel ducimus, voluptate eaque suscipit iste placeat.</p>
							</div>
						</div>
						<div class="media">
							<div class="media-left">
								<i class="fa fa-child"></i>
							</div>
							<div class="media-body">
								<h4 class="media-heading">Service 7</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure aperiam consequatur quo quis exercitationem reprehenderit dolor vel ducimus, voluptate eaque suscipit iste placeat.</p>
							</div>
						</div>
						<div class="media">
							<div class="media-left">
								<i class="fa fa-codepen"></i>
							</div>
							<div class="media-body">
								<h4 class="media-heading">Service 8</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure aperiam consequatur quo quis exercitationem reprehenderit dolor vel ducimus, voluptate eaque suscipit iste placeat.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- section end -->

		<!-- section start -->
		<!-- ================ -->
		<div class="default-bg space blue">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
						<h1 id="login" class="text-center">Let's Work Together!</h1>
						<br>
<%
						if(loginYN != "Y" && modify != "Y") {
%>
						<div class="col-md-8 col-md-offset-2">
							<form name="loginform" class="login" action="/backoffice/UserManager/doLogin" method="post">
								<input type="text"  class="form-control" name="clientID" id="loginID" placeholder="아이디를 입력하세요." style="vertical-align:middle;"/>
								<input type="password" class="form-control" name="clientPW" id="loginPW" placeholder="비밀번호를 입력하세요." style="vertical-align:middle;" />
								<input type="button" value="Sign In" onclick="login()" class="btn btn-success btn-sm" style="vertical-align:middle;" />
							</form>
							<p><a href="#" onclick="selectJoin('openJoin'); return false;">아직 회원이 아니신가요?</a></p>
						</div>
					</div>
					<div id="openJoin" style="display:none">
						<h1>&nbsp;</h1><h1>&nbsp;</h1>
						<h1>&nbsp;</h1>
						<h2>&nbsp;</h2>
						<h2 class="text-center">회원가입</h2>
						<form name="joinform" class="form-horizontal" method="post">
							<div class="col-sm-6">
								<div class="form-group">
									<label class="control-label">아이디</label>
									<input name="clientID" type="text" class="form-control" id="writeID" placeholder="아이디를 입력하세요." style="width:400px">
									<button type="button" class="btn btn-sm" onclick="idCheck()">중복확인</button>
								</div>
								<div class="form-group">
									<label class="control-label">비밀번호</label>
									<input name="clientPW" type="password" class="form-control" id="writePW" placeholder="*숫자, 특수문자 포함 8자 이상" style="width:400px">
								</div>
								<div class="form-group">
									<label class="control-label">비밀번호 확인</label>
									<input type="password" class="form-control" id="checkPW" placeholder="비밀번호를 한 번 더 입력해주세요." style="width:400px">
								</div>
								<div class="form-group">
									<label class="control-label">이름</label>
									<input name="clientName" type="text" id="writeName" class="form-control" placeholder="이름을 입력하세요." style="width:400px">
								</div>
								<div class="form-group">
									<label class="control-label">연락처</label>
									<input name="clientTel" type="text" class="form-control" id="writePhone" maxlength="11" onKeyDown="javascript:onlyNumberInput()" style="width:400px; 'IME-MODE:disabled'" placeholder="- 빼고 입력하세요.">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label class="control-label">이용약관</label>
								</div>
								<div style="margin-left:70px">
									<div style="width:720px; height:619px; padding:10px; background-color:gray; float:center;">
										<div style="width:700px; height:600px; overflow:scroll; overflow-x:hidden;">
											<pre>
제1조(목적)

이 이용약관(이하 '약관')은 주식회사 OOO(이하 회사라 합니다)와 이용 고객(이하 '회원')간에 회사가 제공하는 서비스의 가입조건 및 이용에 관한 제반 사항과 기타 필요한 사항을 구체적으로 규정함을 목적으로 합니다. 

제2조(이용약관의 효력 및 변경)

① 이 약관은 본 회사에 가입된 고객을 포함하여 서비스를 이용하고자 하는 모든 이용자에 대하여 서비스 메뉴 및 회사에 게시하여 공시하거나 기타의 방법으로 고객에게 공지함으로써 그 효력을 발생합니다. 약관의 게시는 OOO(http://www.OOO.com)사이트에서 확인 할 수 있습니다.
② 회사는 합리적인 사유가 발생될 경우에는 이 약관을 변경할 수 있으며, 약관을 변경할 경우에는 지체 없이 이를 사전에 공지합니다.

제3조(약관외 준칙)

서비스 이용에 관하여는 이 약관을 적용하며 이 약관에 명시되지 아니한 사항에 대하여는 전기통신기본법, 전기통신사업법,정보통신망 이용촉진등에 관한 법률 및 기타 관계법령의 규정에 의합니다. 

제4조(용어의 설명)

① 이 약관에서 사용하는 용어의 정의는 다음과 같습니다.
1.'이용고객'이라 함은 회원제로 운영하는 서비스를 이용하는 이용자를 의미합니다.
2.'이용계약'이라 함은 서비스 이용과 관련하여 회사와 이용고객 간에 체결 하는 계약을 말합니다.
3.'이용자번호(ID)'라 함은 회원식별과 회원의 서비스 이용을 위하여 회원이 선정하고 회사가 승인하는 영문자와 숫자의 조합을 말합니다.
4.'비밀번호'라 함은 이용고객이 부여 받은 이용자번호와 일치된 이용고객 임을 확인하고 이용고객의 권익보호를 위하여 이용고객이 선정한 문자와 숫자의 조합을 말합니다.
5.'해지'라 함은 회사 또는 회원이 이용계약을 해약하는 것을 말합니다.

② 이 약관에서 사용하는 용어의 정의는 제1항에서 정하는 것을 제외하고는 관계법령 및 서비스별 안내에서 정하는 바에 의합니다.

제5조(이용 계약의 성립)

① 이용계약은 이용하고자 하는 고객의 본 이용약관 내용에 대한 동의와 이용신청에 대하여 회사의 승낙으로 성립합니다.
② 본 이용약관에 대한 동의는 신청시 두드림사이트의 '동의' 버튼을 누름으로써 의사표시를 합니다.

제6조(서비스 이용 신청)

① 본 서비스를 이용하고자 하는 이용고객은 회사에서 요청하는 정보(성명, 주민등록번호, 연락처 등)를 제공하여 회원으로 가입한 후 이용이 가능합니다.
② 모든 회원은 반드시 회원 본인의 이름과 주민등록번호를 제공하여야만 서비스의 이용이 가능하며 비실명의 경우 서비스 이용에 제한을 받으실 수 있습니다.
③ 회원가입은 반드시 실명으로만 가입이 가능합니다.
④ 타인의 명의(이름 또는 주민등록번호)를 도용하여 이용신청을 한 회원의 ID는 사전예고없이 삭제가 될 수 있으며, 관계법령에 따라 처벌을 받을 수 있습니다.
⑤ 회사는 본 서비스를 이용하는 회원에 대하여 등급별로 구분하여 서비스의 이용에 차등을 둘 수 있습니다.

제7조(개인정보의 보호 및 사용)

회사는 관계법령이 정하는 바에 따라 서비스 이용자의 개인정보를 보호하기 위해 개인정보보호정책을 시행합니다. 이용자 개인정보의 보호 및 사용에 대해서는 관련법령 및 회사의 개인정보 보호정책이 적용됩니다. 그러나, 회사는 이용자의 귀책사유로 인해 노출된 정보에 대해서 일체의 책임을 지지 않습니다. 

제8조(이용 신청의 승낙과 제한)

① 회사는 제 6조의 규정에 의한 이용신청고객에 대하여 업무 수행상 또는 기술상 지장이 없는 경우에 서비스 이용을 승낙합니다.
② 회사는 아래사항에 해당하는 경우에 대해서 승낙하지 아니 합니다.
1. 타인 명의의 신청 또는 이름이 실명이 아닌경우
2. 허위 서류를 첨부하거나 허위내용을 기재하여 신청하는 경우
3. 신용정보의 이용과보호에 관한 법류에 의한 PC통신, 인터넷 서비스의 신용불량자로 등록되어 있는경우
4. 사회의 안녕 질서 또는 미풍양속을 저해할 목적으로 신청한 경우
5. 정보통신 윤리위원회에 PC통신, 인터넷 서비스의 불량 이용자로 등록되어 있는 경우
6. 기타 회사가 정한 이용신청요건이 만족되지 않았을경우

③ 회사는 서비스 이용신청이 다음 각 호에 해당하는 경우에는 그 신청에 대하여 승낙 제한사유가 해소될 때까지 승낙을 유보할 수 있습니다.
1. 회사가 설비의 여유가 없는 경우
2. 회사의 기술상 지장이 있는 경우
3. 기타 회사의 귀책사유로 이용승낙이 곤란한 경우
④ 회사는 규정에 의하여 이용신청이 불승낙되거나 승낙을 제한하는 경우에는 이를 이용신청 고객에게 즉시 알려야 합니다.
⑤ 회사는 이용신청고객이 미성년자인 경우에는 별도로 정하는 바에 따라 승낙을 제한할 수 있습니다.

제9조(회사의 권리와 의무)

① 회사는 회원으로 부터 제기되는 의견이나 불만이 정당하다고 인정할 경우에는 즉시 처리하여야 합니다. 다만, 즉시 처리가 곤란한 경우에는 회원에게 그 사유와 처리일정을 서면, 전자우편 또는 전화등으로 통보하여야 합니다.
② 회사는 회사가 제정한 개인정보보호정책에 따라서 이용고객의 개인정보를 보호할 의무를 가집니다. 단, 법률의 규정에 따른 적법한 절차에 의한 경우에는 그러하지 않을 수 있습니다.
③ 회사가 제 2 항의 규정에도 불구하고 고지 또는 명시한 범위를 초과하여 이용고객의 개인 정보를 이용하거나 제 3 자에게 제공하고자 하는 경우에는 반드시 해당 회원에게 개별적으로 공지하여 동의를 받아야 합니다.
④ 회사는 계속적이고 안정적인 서비스의 제공을 위하여 설비에 장애가 생기거나 멸실된 때에는 지체없이 이를 수리 또는 복구합니다. 다만, 천재지변, 비상사태 또는 그밖에 부득이한 경우에는 그 서비스를 일시 중단하거나 중지할 수 있습니다.
⑤ 회사는 이용계약의 체결, 계약사항의 변경 및 해지 등 회원과의 계약관련 절차 및 내용등에 있어 회원에게 편의를 제공해야 합니다.
⑥ 회사는 업무와 관련하여 회원의 사전동의 하에 회원전체 또는 일부의 개인정보에 관한 통계자료를 작성하여 이를 사용할 수 있고 서비스를 통하여 회원의 컴퓨터에 쿠키를 전송 할 수 있습니다. 이 경우 회원은 쿠키의 수신을 거부하거나 쿠키의 수신에 대하여 경고하도록 사용하는 컴퓨터의 브라우저의 설정을 변경할 수 있으며, 쿠키의 설정 변경에 의한 서비스 이용이 변경되는 것은 회원의 책임입니다.

제10조(회원의 권리와 의무)

① 회원은 서비스를 이용할 때 다음의 행위를 하지 않아야 합니다.

1. 다른 회원의 ID 및 비밀번호를 부정하게 사용하는 행위
2. 서비스를 이용하여 얻은 정보를 회원의 개인적인 이용 외에 복사,가공,번역, 2차적 저작 등을 통하여 복제,공연,방송,전시,배포,출판 등에 사용하거나 제3자에게 제공하는 행위
3. 타인의 명예를 손상시키거나 불이익을 주는 행위
4. 회사의 저작권, 제3자의 저작권 등 기타 권리를 침해하는 행위
5. 공공질서 및 미풍양속에 위반되는 내용의 정보,문장,도형,음성 등을 타인에게 유포하는 행위
6. 범죄와 결부된다고 객관적으로 인정되는 행위
7. 서비스와 관련된 설비의 오동작이나 정보 등의 파괴 및 혼란을 유발시키는 컴퓨터 바이러스 감염자료를 등록 또는 유포하는 행위
8. 서비스의 안정적 운영을 방해할 수 있는 정보를 전송하거나 수신자의 의사에 반하여 광고성 정보를 전송하는 행위
9. 정보통신윤리위원회, 소비자보호단체 등 공신력 있는 기관으로부터 시정요구를 받는 행위
10. 선거관리위원회의 중지, 경고 또는 시정명령을 받는 선거법 위반 행위
11. 기타 관계법령에 위배되는 행위

② 회원은 이 약관에 규정하는 사항과 서비스 이용안내 또는 주의사항을 준수하여야 하며 회사가 공지하거나 별도로 게시한 사항을 준수하여야 합니다.
③ 회원은 회사의 명시적인 사전 동의가 없이 서비스를 이용하여 영업활동을 할 수 없으며, 이에 위반하여 발생한 결과에 대하여 회사는 책임지지 않습니다.
④ 회원은 이와 같은 영업활동과 관련하여 회사에 대하여 손해배상의무를 집니다.
⑤ 회원은 서비스의 이용약관, 기타 이용계약상 지위를 타인에게 양도, 증여 할 수 없으며, 이를 담보로 제공할 수 없습니다.
⑥ 회원은 회사의 사전 승낙없이는 서비스의 전부 또는 일부 내용 및 기능을 전용할 수 없습니다.
⑦ 회사는 이용고객이 방문하거나 전자서명 또는 아이디(ID)등을 이용하여 자신의 개인정보에 대한 열람 또는 정정을 요구하는 경우에는 본인 여부를 확인하고 지체없이 필요한 조치를 취하여야 합니다.
⑧ 회사는 이용고객의 대리인이 방문하여 열람 또는 정정을 요구하는 경우에는 대리관계를 나타내는 증표를 제시하도록 요구할 수 있습니다.
⑨ 회사는 개인정보와 관련하여 이용고객의 의견을 수렴하고 불만을 처리하기 위한 절차를 마련하여야 합니다.

제11조(서비스 이용 시간)

① 서비스 이용은 회사의 업무상 또는 기술상 특별한 지장이 없는 한 연중무휴, 1일 24시간 운영을 원칙으로 합니다. 단, 회사는 시스템 정기점검, 증설 및 교체를 위해 회사가 정한 날이나 시간에 서비스를 일시중단할 수 있으며, 예정되어 있는 작업으로 인한 서비스 일시중단은 웹을 통해 사전에 공지합니다.
② 회사는 회사가 통제할 수 없는 사유로 인한 서비스중단의 경우(시스템관리자의 고의,과실없는 디스크장애, 시스템다운 등)에 사전통지가 불가능하며 타인(PC통신회사, 기간통신사업자 등)의 고의,과실로 인한 시스템중단 등의 경우에는 통지하지 않습니다.

제12조(이용자 ID 관리)

① 아이디(ID)와 비밀번호에 관한 모든 관리책임은 회원에게 있습니다.
② 자신의 아이디(ID)가 부정하게 사용된 경우 회원은 반드시 회사에 그 사실을 통보해야 합니다.

제13조(게시물의 관리)

회사는 다음 각 호에 해당하는 게시물이나 자료를 사전통지 없이 삭제하거나 이동 또는 등록 거부를 할 수 있습니다.

- 다른 회원 또는 제 3자에게 심한 모욕을 주거나 명예를 손상시키는 내용인 경우
- 공공질서 및 미풍양속에 위반되는 내용을 유포하거나 링크시키는 경우
- 불법복제 또는 해킹을 조장하는 내용인 경우
- 영리를 목적으로 하는 광고일 경우
- 범죄와 결부된다고 객관적으로 인정되는 내용일 경우
- 다른 이용자 또는 제 3자의 저작권 등 기타 권리를 침해하는 내용인 경우
- 회사에서 규정한 게시물 원칙에 어긋나거나, 게시판 성격에 부합하지 않는 경우
- 기타 관계법령에 위배된다고 판단되는 경우

제14조(게시물에 대한 저작권)

① 회원은 서비스를 이용하여 취득한 정보를 임의 가공, 판매하는 행위 등 서비스에 게재된 자료를 상업적으로 사용할 수 없습니다.
② 회사는 회원이 게시하거나 등록하는 서비스 내의 내용물, 게시 내용에 대해 제 13조 각 호에 해당된다고 판단되는 경우 사전통지 없이 삭제하거나 이동 또는 등록 거부할 수 있습니다.

제15조(정보의 제공)

회사는 회원이 서비스 이용 도중 필요가 있다고 인정되는 다양한 정보에 대해서 전자우편이나 전화통신등의 방법으로 회원에게 제공할 수 있습니다.

제16조(광고게재 및 광고주와의 거래)

① 회사가 회원에게 서비스를 제공할 수 있는 서비스 투자기반의 일부는 광고게재를 통한 수익으로부터 나옵니다. 회원은 서비스 이용시 노출되는 광고게재에 대해 동의합니다.
② 회사는 서비스상에 게재되어 있거나 본 서비스를 통한 광고주의 판촉활동에 회원이 참여하거나 교신 또는 거래를 함으로써 발생하는 손실과 손해에 대해 책임을 지지 않습니다.

제17조(계약 변경 및 해지)

회원이 이용계약을 해지하고자 하는 때에는 회원 본인이 OOO 웹 내의 "회원탈퇴"메뉴를 이용해 가입해지를 해야 합니다.

제18조(서비스 이용제한)

① 회사는 회원이 서비스 이용내용에 있어서 본 약관 제 10조 내용을 위반하거나, 다음 각 호에 해당하는 경우 서비스 이용을 제한할 수 있습니다.
1. 미풍양속을 저해하는 비속한 ID 및 별명 사용
2. 타 이용자에게 심한 모욕을 주거나, 서비스 이용을 방해한 경우
3. 기타 정상적인 서비스 운영에 방해가 될 경우
4. 정보통신 윤리위원회 등 관련 공공기관의 시정 요구가 있는 경우
5. 불법 웹사이트인 경우
6. 상용소프트웨어나 크랙파일을 올린 경우
7. 정보통신윤리 위원회의 심의 세칙 제 7조에 어긋나는 음란물을 게재한 경우
8. 반국가적 행위의 수행을 목적으로 하는 내용을 포함한 경우
9. 저작권이 있는 글을 무단 복제하거나 mp3를 올린 경우
10.정보통신 설비의 오작동이나 정보등의 파괴를 유발시키는 컴퓨터 바이러스 프로그램등 을 유포하는 경우

② 상기 이용제한 규정에 따라 서비스를 이용하는 회원에게 서비스 이용에 대하여 별도 공지 없이 서비스 이용의 일시정지, 정지, 이용계약 해지 등을 불량이용자 처리규정에 따라 취할 수 있습니다.

제19조(손해배상의 범위 및 청구)

① 회사는 서비스로부터 회원이 받은 손해가 천재지변등 불가항력적이거나 회원의 고의 또는 과실로 인하여 발생한 때에는 손해배상을 하지 아니합니다.
② 회사는 전자상거래 호스팅 및 일반 호스팅의 경우 이에 준하는 서비스 이용회원일 경우 불가항력적으로 발생한 경우 위 1 항의 규정에 따릅니다.
③ 회원이 서비스를 이용함에 있어 행한 불법행위로 인하여 회사가 당해 회원 이외에 제 3 자로부터 손해배상 청구, 소송을 비롯한 각종의 이의제기를 받는 경우 당해 회원은 회사의 면책을 위하여 노력하여야 하며, 만일 회사가 면책되지 못한 경우는 당해 회원은 그로 인하여 회사에 발생한 모든 손해를 배상하여야 합니다.

제20조(면책사항)

① 회사는 천재지변, 전쟁 및 기타 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 대한 책임이 면제됩니다.
② 회사는 기간통신 사업자가 전기통신 서비스를 중지하거나 정상적으로 제공하지 아니하여 손해가 발생한 경우 책임이 면제됩니다.
③ 회사는 서비스용 설비의 보수, 교체, 정기점검, 공사 등 부득이한 사유로 발생한 손해에 대한 책임이 면제됩니다.
④ 회사는 회원의 귀책사유로 인한 서비스 이용의 장애 또는 손해에 대하여 책임을 지지 않습니다.
⑤ 회사는 이용자의 컴퓨터 오류에 의해 손해가 발생한 경우, 또는 회원이 신상정보 및 전자우편 주소를 부실하게 기재하여 손해가 발생한 경우 책임을 지지 않습니다.
⑥ 회사는 회원이 서비스에 게재한 각종 정보, 자료, 사실의 신뢰도, 정확성 등 내용에 대하여 책임을 지지 않습니다.
⑦ 회사는 회원 상호간 또는 회원과 제 3 자 상호간에 서비스를 매개로 하여 물품거래(무형의 물품 포함)등을 한 경우에 그로부터 발생하는 일체의 손해에 대하여 책임지지 아니합니다.
⑧ 회사에서 회원에게 무료로 제공하는 서비스의 이용과 관련해서는 어떠한 손해도 책임을 지지 않습니다.

제21조(재판권 및 분쟁조정)

① 이 약관에 명시되지 않은 사항은 전기통신사업법 등 관계법령과 상관습에 따릅니다.
② 서비스 이용과 관련하여 회사와 회원사이에 분쟁이 발생한 경우, 쌍방간에 분쟁의 해결을 위해 성실히 협의한 후가 아니면 제소할 수 없습니다.
③ 서비스 이용으로 발생한 분쟁에 대해 소송이 제기되는 경우 회사의 본사 소재지를 관할하는 법원을 관할 법원으로 합니다.

이 약관은 OOOO년 OO월 OO일부터 시행합니다.
											</pre>
										</div>
									</div>
								</div>
								<div style="margin-left:180px">
									<div class="form-group">
										<input type="checkbox" id="agreement">이용약관에 동의합니다.
									</div>
								</div>
								<div style="margin-left:150px">
									<div class="form-group">
										<button type="button" class="btn btn-lg" onclick="Agreement()">가입하기</button>
										<button type="button" class="btn btn-lg" onclick="allReset()">가입취소</button>
									</div>
								</div>
							</div>
						</form>
<%
						}
						else if(loginYN == "Y" && modify != "Y" && gubun == "C") {
%>
						<form name="resignC" class="form-horizontal" method="post">
							<div class="container">
							  <div class="row">
							  <div class="col-md-8 col-xs-10">
							  	<div class="col-sm-4 col-xs-12 text-center">
							        <img src="http://png.clipart.me/graphics/previews/154/green-tree-round-icon-vector-illustration_154612604.jpg" alt="" class="center-block img-circle img-thumbnail img-responsive">
							        <input type="button" id="Info" name="Info" onclick="UpdateInfo()" value="내 정보 수정" style="color:black; background-color:lightblue;">
							        <input type="button" id="deleteInfo" name="deleteInfo" onclick="resign()" value="회원 탈퇴" style="color:black; background-color:lightblue;">
							    </div>
					            <div class="col-xs-12 col-sm-8" >
					            	<h2><input type="text" name="clientID" id="clientID" value="${userC.clientID}" placeholder="${userC.clientID}" class="form-control"></h2>
					            	<br>
					            	<p><strong>이름 : ${userC.clientName}</strong> </p>
					            	<p><strong>Level : ${userC.clientLevel}</strong></p>
					            	<p><strong>연락처 : ${userC.clientTel}</strong> </p>
					            	<p><strong>예약 여부 : ${userC.clientBooking}</strong> </p>
					            </div>
						       </div> 
							   </div>
							  <!--/row--> 
							</div>
						</form>
<%
						}
						else if (loginYN == "Y" && modify != "Y" && gubun == "M") {
%>
							<div class="container">
								<div class="row">
									<div class="col-md-8 col-xs-10">
										<div class="col-sm-4 col-xs-12 text-center">
											<img src="http://png.clipart.me/graphics/previews/154/green-tree-round-icon-vector-illustration_154612604.jpg" alt="" class="center-block img-circle img-thumbnail img-responsive">
											<input type="button" id="Info" name="Info" onclick="UpdateInfo();" value="내 정보 수정" style="color:black; background-color:lightblue;">
										</div>
										<div class="col-xs-12 col-sm-8">
											<h2>${userM.clientID}</h2>
											<br>
											<p><strong>이름 : ${userM.managerName}</strong></p>
											<p><strong>Level : ${userM.managerLevel}</strong></p>
											<p><strong>연락처 : ${userM.managerTel}</strong></p>
										</div>
									</div>
								</div>
							</div>
<%
						}

						else if (loginYN == "Y" && modify == "Y" && gubun == "C") {
							System.out.println("고객인데 수정 좀 할게");
%>
							<form name="modifyC" class="form-horizontal" method="post">
							<div class="container">
							  <div class="row">
							  <div class="col-md-8 col-xs-10">
							  	<div class="col-sm-4 col-xs-12 text-center">
							        <img src="http://png.clipart.me/graphics/previews/154/green-tree-round-icon-vector-illustration_154612604.jpg" alt="" class="center-block img-circle img-thumbnail img-responsive">
							        <input type="button" id="modify" name="modify" onclick="ModifyC()" value="수정 완료" style="color:black; background-color:lightblue;">
							    </div>
					            <div class="col-xs-12 col-sm-8" >
					            	<h2><input type="text" name="clientID" placeholder="${userC.clientID}" class="default-bg space blue" value="${userC.clientID}" style="border:none" readonly></h2>
					            	<br>
					            	<table>
					            		<tr>
					            			<td>이름 : </td>
					            			<td>${userC.clientName}</td>
					            		</tr>
					            		<tr>
					            			<td>비밀번호 : </td>
					            			<td><input type="text" name="clientPW" placeholder="${userC.clientPW}" class="form-control"></td>
					            		</tr>
					            		<tr>
					            			<td>Level : </td>
					            			<td>${userC.clientLevel}</td>
					            		</tr>
					            		<tr>
					            			<td>연락처 : </td>
					            			<td><input type="text" name="clientTel" placeholder="${userC.clientTel}" class="form-control" maxlength="11" onKeyDown="javascript:onlyNumberInput()"></td>
					            		</tr>
					            		<tr>
					            			<td>예약 여부 : </td>
					            			<td>${userC.clientBooking}</td>
					            		</tr>
					            	</table>
					            </div>
						       </div> 
							   </div>
							  <!--/row--> 
							</div>
							</form>
<%
						}
						else if (loginYN == "Y" && modify == "Y" && gubun == "M") {
							System.out.println("직원인데 수정 좀 할게");
%>
							<form name="modifyM" class="form-horizontal" method="post">
							<div class="container">
								<div class="row">
									<div class="col-md-8 col-xs-10">
										<div class="col-sm-4 col-xs-12 text-center">
											<img src="http://png.clipart.me/graphics/previews/154/green-tree-round-icon-vector-illustration_154612604.jpg" alt="" class="center-block img-circle img-thumbnail img-responsive">
											<input type="button" id="modify" name="modify" onclick="ModifyM()" value="수정완료" style="color:black; background-color:lightblue;">
										</div>
										<div class="col-xs-12 col-sm-8">
											<h2><input type="text" name="clientID" placeholder="${userM.clientID}" class="default-bg space blue" style="border:none; background-color:skyblue;"></h2>
											<br>
											<table>
												<tr>
													<td>이름 : </td>
													<td>${userM.managerName}</td>
												</tr>
												<tr>
													<td>비밀번호 : </td>
													<td><input type="text" name="clientPW" placeholder="${userM.clientPW}" class="form-control"></td>
												</tr>
												<tr>
													<td>Level : </td>
													<td>${userM.managerLevel}</td>
												</tr>
												<tr>
													<td>연락처 : </td>
													<td><input type="text" name="managerTel" placeholder="${userM.managerTel}" class="form-control" maxlength="11" onKeyDown="javascript:onlyNumberInput()"></td>
												</tr>
											</table>
										</div>
									</div>
								</div>
							</div>
							</form>
<%
						}
%>
					</div>
				</div>
			</div>
		</div>
		<!-- section end -->

		<!-- section start -->
		<!-- ================ -->
		<div class="section">
			<div class="container">
				<h1 class="text-center title" id="portfolio">Drinking</h1>
				<div class="separator"></div>
				<p class="lead text-center">Lorem ipsum dolor sit amet laudantium molestias similique.<br> Quisquam incidunt ut laboriosam.</p>
				<br>			
				<div class="row object-non-visible" data-animation-effect="fadeIn">
					<div class="col-md-12">

						<!-- isotope filters start -->
						<div class="filters text-center">
							<ul class="nav nav-pills">
								<li class="active"><a href="#" data-filter="*">All</a></li>
								<li><a href="#" data-filter=".web-design">Web design</a></li>
								<li><a href="#" data-filter=".app-development">App development</a></li>
								<li><a href="#" data-filter=".site-building">Site building</a></li>
							</ul>
						</div>
						<!-- isotope filters end -->

						<!-- portfolio items start -->
						<div class="isotope-container row grid-space-20">
							<div class="col-sm-6 col-md-3 isotope-item web-design">
								<div class="image-box">
									<div class="overlay-container">
										<img src="resources/images/portfolio-1.jpg" alt="">
										<a class="overlay" data-toggle="modal" data-target="#project-1">
											<i class="fa fa-search-plus"></i>
											<span>Web Design</span>
										</a>
									</div>
									<a class="btn btn-default btn-block" data-toggle="modal" data-target="#project-1">Project Title</a>
								</div>
								<!-- Modal -->
								<div class="modal fade" id="project-1" tabindex="-1" role="dialog" aria-labelledby="project-1-label" aria-hidden="true">
									<div class="modal-dialog modal-lg">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
												<h4 class="modal-title" id="project-1-label">Project Title</h4>
											</div>
											<div class="modal-body">
												<h3>Project Description</h3>
												<div class="row">
													<div class="col-md-6">
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earum pariatur omnis illo saepe numquam suscipit, nemo placeat dignissimos eius mollitia et quas officia doloremque ipsum labore rem deserunt vero! Magnam totam delectus accusantium voluptas et, tempora quos atque, fugiat, obcaecati voluptatibus commodi illo voluptates dolore nemo quo soluta quis.</p>
														<p>Molestiae sed enim laboriosam atque delectus voluptates rerum nostrum sapiente obcaecati molestias quasi optio exercitationem, voluptate quis consequatur libero incidunt, in, quod. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos nobis officiis, autem earum tenetur quidem. Quae non dicta earum. Ipsum autem eaque cum dolor placeat corporis quisquam dolorum at nesciunt.</p>
													</div>
													<div class="col-md-6">
														<img src="resources/images/portfolio-1.jpg" alt="">
													</div>
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div>
								<!-- Modal end -->
							</div>

							<div class="col-sm-6 col-md-3 isotope-item app-development">
								<div class="image-box">
									<div class="overlay-container">
										<img src="resources/images/portfolio-2.jpg" alt="">
										<a class="overlay" data-toggle="modal" data-target="#project-2">
											<i class="fa fa-search-plus"></i>
											<span>App Development</span>
										</a>
									</div>
									<a class="btn btn-default btn-block" data-toggle="modal" data-target="#project-2">Project Title</a>
								</div>
								<!-- Modal -->
								<div class="modal fade" id="project-2" tabindex="-1" role="dialog" aria-labelledby="project-2-label" aria-hidden="true">
									<div class="modal-dialog modal-lg">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
												<h4 class="modal-title" id="project-2-label">Project Title</h4>
											</div>
											<div class="modal-body">
												<h3>Project Description</h3>
												<div class="row">
													<div class="col-md-6">
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earum pariatur omnis illo saepe numquam suscipit, nemo placeat dignissimos eius mollitia et quas officia doloremque ipsum labore rem deserunt vero! Magnam totam delectus accusantium voluptas et, tempora quos atque, fugiat, obcaecati voluptatibus commodi illo voluptates dolore nemo quo soluta quis.</p>
														<p>Molestiae sed enim laboriosam atque delectus voluptates rerum nostrum sapiente obcaecati molestias quasi optio exercitationem, voluptate quis consequatur libero incidunt, in, quod. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos nobis officiis, autem earum tenetur quidem. Quae non dicta earum. Ipsum autem eaque cum dolor placeat corporis quisquam dolorum at nesciunt.</p>
													</div>
													<div class="col-md-6">
														<img src="resources/images/portfolio-2.jpg" alt="">
													</div>
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div>
								<!-- Modal end -->
							</div>
							
							<div class="col-sm-6 col-md-3 isotope-item web-design">
								<div class="image-box">
									<div class="overlay-container">
										<img src="resources/images/portfolio-3.jpg" alt="">
										<a class="overlay" data-toggle="modal" data-target="#project-3">
											<i class="fa fa-search-plus"></i>
											<span>Web Design</span>
										</a>
									</div>
									<a class="btn btn-default btn-block" data-toggle="modal" data-target="#project-3">Project Title</a>
								</div>
								<!-- Modal -->
								<div class="modal fade" id="project-3" tabindex="-1" role="dialog" aria-labelledby="project-3-label" aria-hidden="true">
									<div class="modal-dialog modal-lg">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
												<h4 class="modal-title" id="project-3-label">Project Title</h4>
											</div>
											<div class="modal-body">
												<h3>Project Description</h3>
												<div class="row">
													<div class="col-md-6">
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earum pariatur omnis illo saepe numquam suscipit, nemo placeat dignissimos eius mollitia et quas officia doloremque ipsum labore rem deserunt vero! Magnam totam delectus accusantium voluptas et, tempora quos atque, fugiat, obcaecati voluptatibus commodi illo voluptates dolore nemo quo soluta quis.</p>
														<p>Molestiae sed enim laboriosam atque delectus voluptates rerum nostrum sapiente obcaecati molestias quasi optio exercitationem, voluptate quis consequatur libero incidunt, in, quod. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos nobis officiis, autem earum tenetur quidem. Quae non dicta earum. Ipsum autem eaque cum dolor placeat corporis quisquam dolorum at nesciunt.</p>
													</div>
													<div class="col-md-6">
														<img src="resources/images/portfolio-3.jpg" alt="">
													</div>
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div>
								<!-- Modal end -->
							</div>
							
							<div class="col-sm-6 col-md-3 isotope-item site-building">
								<div class="image-box">
									<div class="overlay-container">
										<img src="resources/images/portfolio-4.jpg" alt="">
										<a class="overlay" data-toggle="modal" data-target="#project-4">
											<i class="fa fa-search-plus"></i>
											<span>Site Building</span>
										</a>
									</div>
									<a class="btn btn-default btn-block" data-toggle="modal" data-target="#project-4">Project Title</a>
								</div>
								<!-- Modal -->
								<div class="modal fade" id="project-4" tabindex="-1" role="dialog" aria-labelledby="project-4-label" aria-hidden="true">
									<div class="modal-dialog modal-lg">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
												<h4 class="modal-title" id="project-4-label">Project Title</h4>
											</div>
											<div class="modal-body">
												<h3>Project Description</h3>
												<div class="row">
													<div class="col-md-6">
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earum pariatur omnis illo saepe numquam suscipit, nemo placeat dignissimos eius mollitia et quas officia doloremque ipsum labore rem deserunt vero! Magnam totam delectus accusantium voluptas et, tempora quos atque, fugiat, obcaecati voluptatibus commodi illo voluptates dolore nemo quo soluta quis.</p>
														<p>Molestiae sed enim laboriosam atque delectus voluptates rerum nostrum sapiente obcaecati molestias quasi optio exercitationem, voluptate quis consequatur libero incidunt, in, quod. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos nobis officiis, autem earum tenetur quidem. Quae non dicta earum. Ipsum autem eaque cum dolor placeat corporis quisquam dolorum at nesciunt.</p>
													</div>
													<div class="col-md-6">
														<img src="resources/images/portfolio-4.jpg" alt="">
													</div>
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div>
								<!-- Modal end -->
							</div>
							
							<div class="col-sm-6 col-md-3 isotope-item app-development">
								<div class="image-box">
									<div class="overlay-container">
										<img src="resources/images/portfolio-5.jpg" alt="">
										<a class="overlay" data-toggle="modal" data-target="#project-5">
											<i class="fa fa-search-plus"></i>
											<span>App Development</span>
										</a>
									</div>
									<a class="btn btn-default btn-block" data-toggle="modal" data-target="#project-5">Project Title</a>
								</div>
								<!-- Modal -->
								<div class="modal fade" id="project-5" tabindex="-1" role="dialog" aria-labelledby="project-5-label" aria-hidden="true">
									<div class="modal-dialog modal-lg">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
												<h4 class="modal-title" id="project-5-label">Project Title</h4>
											</div>
											<div class="modal-body">
												<h3>Project Description</h3>
												<div class="row">
													<div class="col-md-6">
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earum pariatur omnis illo saepe numquam suscipit, nemo placeat dignissimos eius mollitia et quas officia doloremque ipsum labore rem deserunt vero! Magnam totam delectus accusantium voluptas et, tempora quos atque, fugiat, obcaecati voluptatibus commodi illo voluptates dolore nemo quo soluta quis.</p>
														<p>Molestiae sed enim laboriosam atque delectus voluptates rerum nostrum sapiente obcaecati molestias quasi optio exercitationem, voluptate quis consequatur libero incidunt, in, quod. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos nobis officiis, autem earum tenetur quidem. Quae non dicta earum. Ipsum autem eaque cum dolor placeat corporis quisquam dolorum at nesciunt.</p>
													</div>
													<div class="col-md-6">
														<img src="resources/images/portfolio-5.jpg" alt="">
													</div>
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div>
								<!-- Modal end -->
							</div>
							
							<div class="col-sm-6 col-md-3 isotope-item web-design">
								<div class="image-box">
									<div class="overlay-container">
										<img src="resources/images/portfolio-6.jpg" alt="">
										<a class="overlay" data-toggle="modal" data-target="#project-6">
											<i class="fa fa-search-plus"></i>
											<span>Web Design</span>
										</a>
									</div>
									<a class="btn btn-default btn-block" data-toggle="modal" data-target="#project-6">Project Title</a>
								</div>
								<!-- Modal -->
								<div class="modal fade" id="project-6" tabindex="-1" role="dialog" aria-labelledby="project-6-label" aria-hidden="true">
									<div class="modal-dialog modal-lg">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
												<h4 class="modal-title" id="project-6-label">Project Title</h4>
											</div>
											<div class="modal-body">
												<h3>Project Description</h3>
												<div class="row">
													<div class="col-md-6">
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earum pariatur omnis illo saepe numquam suscipit, nemo placeat dignissimos eius mollitia et quas officia doloremque ipsum labore rem deserunt vero! Magnam totam delectus accusantium voluptas et, tempora quos atque, fugiat, obcaecati voluptatibus commodi illo voluptates dolore nemo quo soluta quis.</p>
														<p>Molestiae sed enim laboriosam atque delectus voluptates rerum nostrum sapiente obcaecati molestias quasi optio exercitationem, voluptate quis consequatur libero incidunt, in, quod. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos nobis officiis, autem earum tenetur quidem. Quae non dicta earum. Ipsum autem eaque cum dolor placeat corporis quisquam dolorum at nesciunt.</p>
													</div>
													<div class="col-md-6">
														<img src="resources/images/portfolio-6.jpg" alt="">
													</div>
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div>
								<!-- Modal end -->
							</div>
							
							<div class="col-sm-6 col-md-3 isotope-item site-building">
								<div class="image-box">
									<div class="overlay-container">
										<img src="resources/images/portfolio-7.jpg" alt="">
										<a class="overlay" data-toggle="modal" data-target="#project-7">
											<i class="fa fa-search-plus"></i>
											<span>Site Building</span>
										</a>
									</div>
									<a class="btn btn-default btn-block" data-toggle="modal" data-target="#project-7">Project Title</a>
								</div>
								<!-- Modal -->
								<div class="modal fade" id="project-7" tabindex="-1" role="dialog" aria-labelledby="project-7-label" aria-hidden="true">
									<div class="modal-dialog modal-lg">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
												<h4 class="modal-title" id="project-7-label">Project Title</h4>
											</div>
											<div class="modal-body">
												<h3>Project Description</h3>
												<div class="row">
													<div class="col-md-6">
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earum pariatur omnis illo saepe numquam suscipit, nemo placeat dignissimos eius mollitia et quas officia doloremque ipsum labore rem deserunt vero! Magnam totam delectus accusantium voluptas et, tempora quos atque, fugiat, obcaecati voluptatibus commodi illo voluptates dolore nemo quo soluta quis.</p>
														<p>Molestiae sed enim laboriosam atque delectus voluptates rerum nostrum sapiente obcaecati molestias quasi optio exercitationem, voluptate quis consequatur libero incidunt, in, quod. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos nobis officiis, autem earum tenetur quidem. Quae non dicta earum. Ipsum autem eaque cum dolor placeat corporis quisquam dolorum at nesciunt.</p>
													</div>
													<div class="col-md-6">
														<img src="resources/images/portfolio-7.jpg" alt="">
													</div>
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div>
								<!-- Modal end -->
							</div>
							
							<div class="col-sm-6 col-md-3 isotope-item web-design">
								<div class="image-box">
									<div class="overlay-container">
										<img src="resources/images/portfolio-8.jpg" alt="">
										<a class="overlay" data-toggle="modal" data-target="#project-8">
											<i class="fa fa-search-plus"></i>
											<span>Web Design</span>
										</a>
									</div>
									<a class="btn btn-default btn-block" data-toggle="modal" data-target="#project-8">Project Title</a>
								</div>
								<!-- Modal -->
								<div class="modal fade" id="project-8" tabindex="-1" role="dialog" aria-labelledby="project-8-label" aria-hidden="true">
									<div class="modal-dialog modal-lg">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
												<h4 class="modal-title" id="project-8-label">Project Title</h4>
											</div>
											<div class="modal-body">
												<h3>Project Description</h3>
												<div class="row">
													<div class="col-md-6">
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earum pariatur omnis illo saepe numquam suscipit, nemo placeat dignissimos eius mollitia et quas officia doloremque ipsum labore rem deserunt vero! Magnam totam delectus accusantium voluptas et, tempora quos atque, fugiat, obcaecati voluptatibus commodi illo voluptates dolore nemo quo soluta quis.</p>
														<p>Molestiae sed enim laboriosam atque delectus voluptates rerum nostrum sapiente obcaecati molestias quasi optio exercitationem, voluptate quis consequatur libero incidunt, in, quod. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos nobis officiis, autem earum tenetur quidem. Quae non dicta earum. Ipsum autem eaque cum dolor placeat corporis quisquam dolorum at nesciunt.</p>
													</div>
													<div class="col-md-6">
														<img src="resources/images/portfolio-8.jpg" alt="">
													</div>
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div>
								<!-- Modal end -->
							</div>

							<div class="col-sm-6 col-md-3 isotope-item web-design">
								<div class="image-box">
									<div class="overlay-container">
										<img src="resources/images/portfolio-9.jpg" alt="">
										<a class="overlay" data-toggle="modal" data-target="#project-9">
											<i class="fa fa-search-plus"></i>
											<span>Web Design</span>
										</a>
									</div>
									<a class="btn btn-default btn-block" data-toggle="modal" data-target="#project-9">Project Title</a>
								</div>
								<!-- Modal -->
								<div class="modal fade" id="project-9" tabindex="-1" role="dialog" aria-labelledby="project-9-label" aria-hidden="true">
									<div class="modal-dialog modal-lg">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
												<h4 class="modal-title" id="project-9-label">Project Title</h4>
											</div>
											<div class="modal-body">
												<h3>Project Description</h3>
												<div class="row">
													<div class="col-md-6">
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earum pariatur omnis illo saepe numquam suscipit, nemo placeat dignissimos eius mollitia et quas officia doloremque ipsum labore rem deserunt vero! Magnam totam delectus accusantium voluptas et, tempora quos atque, fugiat, obcaecati voluptatibus commodi illo voluptates dolore nemo quo soluta quis.</p>
														<p>Molestiae sed enim laboriosam atque delectus voluptates rerum nostrum sapiente obcaecati molestias quasi optio exercitationem, voluptate quis consequatur libero incidunt, in, quod. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos nobis officiis, autem earum tenetur quidem. Quae non dicta earum. Ipsum autem eaque cum dolor placeat corporis quisquam dolorum at nesciunt.</p>
													</div>
													<div class="col-md-6">
														<img src="resources/images/portfolio-9.jpg" alt="">
													</div>
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div>
								<!-- Modal end -->
							</div>

							<div class="col-sm-6 col-md-3 isotope-item site-building">
								<div class="image-box">
									<div class="overlay-container">
										<img src="resources/images/portfolio-10.jpg" alt="">
										<a class="overlay" data-toggle="modal" data-target="#project-10">
											<i class="fa fa-search-plus"></i>
											<span>Site Building</span>
										</a>
									</div>
									<a class="btn btn-default btn-block" data-toggle="modal" data-target="#project-10">Project Title</a>
								</div>
								<!-- Modal -->
								<div class="modal fade" id="project-10" tabindex="-1" role="dialog" aria-labelledby="project-10-label" aria-hidden="true">
									<div class="modal-dialog modal-lg">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
												<h4 class="modal-title" id="project-10-label">Project Title</h4>
											</div>
											<div class="modal-body">
												<h3>Project Description</h3>
												<div class="row">
													<div class="col-md-6">
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earum pariatur omnis illo saepe numquam suscipit, nemo placeat dignissimos eius mollitia et quas officia doloremque ipsum labore rem deserunt vero! Magnam totam delectus accusantium voluptas et, tempora quos atque, fugiat, obcaecati voluptatibus commodi illo voluptates dolore nemo quo soluta quis.</p>
														<p>Molestiae sed enim laboriosam atque delectus voluptates rerum nostrum sapiente obcaecati molestias quasi optio exercitationem, voluptate quis consequatur libero incidunt, in, quod. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos nobis officiis, autem earum tenetur quidem. Quae non dicta earum. Ipsum autem eaque cum dolor placeat corporis quisquam dolorum at nesciunt.</p>
													</div>
													<div class="col-md-6">
														<img src="resources/images/portfolio-10.jpg" alt="">
													</div>
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div>
								<!-- Modal end -->
							</div>

							<div class="col-sm-6 col-md-3 isotope-item web-design">
								<div class="image-box">
									<div class="overlay-container">
										<img src="resources/images/portfolio-11.jpg" alt="">
										<a class="overlay" data-toggle="modal" data-target="#project-11">
											<i class="fa fa-search-plus"></i>
											<span>Web Design</span>
										</a>
									</div>
									<a class="btn btn-default btn-block" data-toggle="modal" data-target="#project-11">Project Title</a>
								</div>
								<!-- Modal -->
								<div class="modal fade" id="project-11" tabindex="-1" role="dialog" aria-labelledby="project-11-label" aria-hidden="true">
									<div class="modal-dialog modal-lg">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
												<h4 class="modal-title" id="project-11-label">Project Title</h4>
											</div>
											<div class="modal-body">
												<h3>Project Description</h3>
												<div class="row">
													<div class="col-md-6">
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earum pariatur omnis illo saepe numquam suscipit, nemo placeat dignissimos eius mollitia et quas officia doloremque ipsum labore rem deserunt vero! Magnam totam delectus accusantium voluptas et, tempora quos atque, fugiat, obcaecati voluptatibus commodi illo voluptates dolore nemo quo soluta quis.</p>
														<p>Molestiae sed enim laboriosam atque delectus voluptates rerum nostrum sapiente obcaecati molestias quasi optio exercitationem, voluptate quis consequatur libero incidunt, in, quod. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos nobis officiis, autem earum tenetur quidem. Quae non dicta earum. Ipsum autem eaque cum dolor placeat corporis quisquam dolorum at nesciunt.</p>
													</div>
													<div class="col-md-6">
														<img src="resources/images/portfolio-11.jpg" alt="">
													</div>
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div>
								<!-- Modal end -->
							</div>

							<div class="col-sm-6 col-md-3 isotope-item app-development">
								<div class="image-box">
									<div class="overlay-container">
										<img src="resources/images/portfolio-12.jpg" alt="">
										<a class="overlay" data-toggle="modal" data-target="#project-12">
											<i class="fa fa-search-plus"></i>
											<span>App Development</span>
										</a>
									</div>
									<a class="btn btn-default btn-block" data-toggle="modal" data-target="#project-12">Project Title</a>
								</div>
								<!-- Modal -->
								<div class="modal fade" id="project-12" tabindex="-1" role="dialog" aria-labelledby="project-12-label" aria-hidden="true">
									<div class="modal-dialog modal-lg">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
												<h4 class="modal-title" id="project-12-label">Project Title</h4>
											</div>
											<div class="modal-body">
												<h3>Project Description</h3>
												<div class="row">
													<div class="col-md-6">
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earum pariatur omnis illo saepe numquam suscipit, nemo placeat dignissimos eius mollitia et quas officia doloremque ipsum labore rem deserunt vero! Magnam totam delectus accusantium voluptas et, tempora quos atque, fugiat, obcaecati voluptatibus commodi illo voluptates dolore nemo quo soluta quis.</p>
														<p>Molestiae sed enim laboriosam atque delectus voluptates rerum nostrum sapiente obcaecati molestias quasi optio exercitationem, voluptate quis consequatur libero incidunt, in, quod. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos nobis officiis, autem earum tenetur quidem. Quae non dicta earum. Ipsum autem eaque cum dolor placeat corporis quisquam dolorum at nesciunt.</p>
													</div>
													<div class="col-md-6">
														<img src="resources/images/portfolio-12.jpg" alt="">
													</div>
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div>
								<!-- Modal end -->
							</div>

						</div>
						<!-- portfolio items end -->
					
					</div>
				</div>
			</div>
		</div>
		<!-- section end -->

		<!-- section start -->
		<!-- ================ -->
		<div class="section translucent-bg bg-image-2 pb-clear">
			<div class="container object-non-visible" data-animation-effect="fadeIn">
				<h1 id="clients" class="title text-center">Branchs</h1>
				<div class="space"></div>
				<div class="row">
					<div class="col-md-4">
						<div class="media testimonial">
							<div class="media-left">
								<img src="resources/images/testimonial-1.png" alt="">
							</div>
							<div class="media-body">
								<h3 class="media-heading">You are Amazing!</h3>
								<blockquote>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure aperiam consequatur quo.</p>
									<footer>Someone famous in <cite title="Source Title">Source Title</cite></footer>
								</blockquote>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="media testimonial">
							<div class="media-left">
								<img src="resources/images/testimonial-2.png" alt="">
							</div>
							<div class="media-body">
								<h3 class="media-heading">Yeah!</h3>
								<blockquote>
									<p>Iure aperiam consequatur quo quis exercitationem reprehenderit dolor vel ducimus.</p>
									<footer>Someone famous in <cite title="Source Title">Source Title</cite></footer>
								</blockquote>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="media testimonial">
							<div class="media-left">
								<img src="resources/images/testimonial-3.png" alt="">
							</div>
							<div class="media-body">
								<h3 class="media-heading">Thank You!</h3>
								<blockquote>
									<p>Aperiam consequatur quo quis exercitationem reprehenderit suscipit iste placeat.</p>
									<footer>Someone famous in <cite title="Source Title">Source Title</cite></footer>
								</blockquote>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<div class="media testimonial">
							<div class="media-left">
								<img src="resources/images/testimonial-2.png" alt="">
							</div>
							<div class="media-body">
								<h3 class="media-heading">Thank You!</h3>
								<blockquote>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure aperiam consequatur quo.</p>
									<footer>Someone famous in <cite title="Source Title">Source Title</cite></footer>
								</blockquote>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="media testimonial">
							<div class="media-left">
								<img src="resources/images/testimonial-3.png" alt="">
							</div>
							<div class="media-body">
								<h3 class="media-heading">Amazing!</h3>
								<blockquote>
									<p>Iure aperiam consequatur quo quis exercitationem reprehenderit dolor vel ducimus.</p>
									<footer>Someone famous in <cite title="Source Title">Source Title</cite></footer>
								</blockquote>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="media testimonial">
							<div class="media-left">
								<img src="resources/images/testimonial-1.png" alt="">
							</div>
							<div class="media-body">
								<h3 class="media-heading">Best!</h3>
								<blockquote>
									<p>Aperiam consequatur quo quis exercitationem reprehenderit suscipit iste placeat.</p>
									<footer>Someone famous in <cite title="Source Title">Source Title</cite></footer>
								</blockquote>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- section start -->
			<!-- ================ -->
			<div class="translucent-bg blue">
				<div class="container">
					<div class="list-horizontal">
						<div class="row">
							<div class="col-xs-2">
								<div class="list-horizontal-item">
									<img src="resources/images/client-1.png" alt="client">
								</div>
							</div>
							<div class="col-xs-2">
								<div class="list-horizontal-item">
									<img src="resources/images/client-2.png" alt="client">
								</div>
							</div>
							<div class="col-xs-2">
								<div class="list-horizontal-item">
									<img src="resources/images/client-3.png" alt="client">
								</div>
							</div>
							<div class="col-xs-2">
								<div class="list-horizontal-item">
									<img src="resources/images/client-4.png" alt="client">
								</div>
							</div>
							<div class="col-xs-2">
								<div class="list-horizontal-item">
									<img src="resources/images/client-5.png" alt="client">
								</div>
							</div>
							<div class="col-xs-2">
								<div class="list-horizontal-item">
									<img src="resources/images/client-6.png" alt="client">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- section end -->
		</div>
		<!-- section end -->

		<!-- section start -->
		<!-- ================ -->
		<div class="default-bg space">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
						<h1 class="text-center">10000+ Happy Clients!</h1>
					</div>
				</div>
			</div>
		</div>
		<!-- section end -->

		<!-- footer start -->
		<!-- ================ -->
		<footer id="footer">

			<!-- .footer start -->
			<!-- ================ -->
			<div class="footer section">
				<div class="container">
					<h1 class="title text-center" id="contact">Booking</h1>
					<div class="space"></div>
					<div class="row">
						<div class="col-sm-6">
							<div class="footer-content">
								<p class="large">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vel nam magnam natus tempora cumque, aliquam deleniti voluptatibus voluptas. Repellat vel, et itaque commodi iste ab, laudantium voluptas deserunt nobis.</p>
								<ul class="list-icons">
									<li><i class="fa fa-map-marker pr-10"></i> One infinity loop, 54100</li>
									<li><i class="fa fa-phone pr-10"></i> +00 1234567890</li>
									<li><i class="fa fa-fax pr-10"></i> +00 1234567891 </li>
									<li><i class="fa fa-envelope-o pr-10"></i> your@email.com</li>
								</ul>
								<ul class="social-links">
									<li class="facebook"><a target="_blank" href="https://www.facebook.com/pages/HtmlCoder/714570988650168"><i class="fa fa-facebook"></i></a></li>
									<li class="twitter"><a target="_blank" href="https://twitter.com/HtmlcoderMe"><i class="fa fa-twitter"></i></a></li>
									<li class="googleplus"><a target="_blank" href="http://plus.google.com"><i class="fa fa-google-plus"></i></a></li>
									<li class="skype"><a target="_blank" href="http://www.skype.com"><i class="fa fa-skype"></i></a></li>
									<li class="linkedin"><a target="_blank" href="http://www.linkedin.com"><i class="fa fa-linkedin"></i></a></li>
									<li class="youtube"><a target="_blank" href="http://www.youtube.com"><i class="fa fa-youtube"></i></a></li>
									<li class="flickr"><a target="_blank" href="http://www.flickr.com"><i class="fa fa-flickr"></i></a></li>
									<li class="pinterest"><a target="_blank" href="http://www.pinterest.com"><i class="fa fa-pinterest"></i></a></li>
								</ul>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="footer-content">
								<form role="form" id="footer-form" action="<c:url value="/backoffice/booking/Make_Booking"/>">
			
									<div class="form-group has-feedback">
										<label class="sr-only" for="name2">Name</label>
										<input type="text" class="form-control" id="name2" placeholder="Name" name="name2" required>
										<i class="fa fa-user form-control-feedback"></i>
									</div>
									<div class="form-group has-feedback">
										<label class="sr-only" for="email2">Email address</label>
										<input type="email" class="form-control" id="email2" placeholder="Enter email" name="email2" required>
										<i class="fa fa-envelope form-control-feedback"></i>
									</div>
							<!-- 수정한곳 hj !!!! -->
									<div class="form-group has-feedback">
										<label class="sr-only" for="phone">Phone</label>
										<input type="text" class="form-control" id="phone" placeholder="Enter phone" name="phone" required>
										<i class="fa fa-envelope form-control-feedback"></i>
									</div>
									<div class="form-group has-feedback">
										<label class="sr-only" for="person">person</label>
										<input type="text" class="form-control" id="person" placeholder="Enter person" name="person" required>
										<i class="fa fa-envelope form-control-feedback"></i>
									</div>
							<!-- 수정끝- hj !!!!-->
									<div class="form-group has-feedback">
										<label class="sr-only" for="message2">Message</label>
										<textarea class="form-control" rows="8" id="message2" placeholder="Message" name="message2" required></textarea>
										<i class="fa fa-pencil form-control-feedback"></i>
									</div>
									<input type="submit" value="Send" class="btn btn-default">
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- .footer end -->

			<!-- .subfooter start -->
			<!-- ================ -->
			<div class="subfooter">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<p class="text-center">Copyright © 2014 Worthy by <a target="_blank" href="http://htmlcoder.me">HtmlCoder</a>.</p>
						</div>
					</div>
				</div>
			</div>
			<!-- .subfooter end -->

		</footer>
		<!-- footer end -->

		<!-- JavaScript files placed at the end of the document so the pages load faster
		================================================== -->
		
		<!-- Jquery and Bootstap core js files -->
		<script type="text/javascript" src="resources/plugins/jquery.min.js"></script>
		<script type="text/javascript" src="resources/bootstrap/js/bootstrap.min.js"></script>
		
		<!-- Modernizr javascript -->
		<script type="text/javascript" src="resources/plugins/modernizr.js"></script>

		<!-- Isotope javascript -->
		<script type="text/javascript" src="resources/plugins/isotope/isotope.pkgd.min.js"></script>
		
		<!-- Backstretch javascript -->
		<script type="text/javascript" src="resources/plugins/jquery.backstretch.min.js"></script>

		<!-- Appear javascript -->
		<script type="text/javascript" src="resources/plugins/jquery.appear.js"></script>
		
		<!-- Notice js -->
		<script type="text/javascript" src="resources/js/notice.js"></script>

		<!-- Initialization of Plugins -->
		<script type="text/javascript" src="resources/js/template.js"></script>

		<!-- Custom Scripts -->
		<script type="text/javascript" src="resources/js/custom.js"></script>

	</body>
</html>
