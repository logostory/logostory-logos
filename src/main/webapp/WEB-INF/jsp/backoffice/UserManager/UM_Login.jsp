<%@ page language="java" contentType="text/html; charset=utf-8" 
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags" %>

<tag:template activeMenu="777">

<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script language="javascript" type="text/javascript">

	function login() {
		
		var idCheck = document.getElementById("writeID");
		var pwCheck = document.getElementById("writePW");
		
		var idCheck2 = $("#writeID").val();
		var pwCheck2 = $("#writePW").val();
		
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
					else {
						alert('로그인 되셨습니다.');
					}
				},
				error:function(request, status, error) {
					alert("코드 : " + request.status + "\n" + "메세지 : " + request.responseText+"\n"+"에러 : " + error);
				}
			});
		}
	}

</script>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="wrap">
                <p class="form-title">
                    Sign In</p>
                <form name="loginform" class="login" action="/backoffice/UserManager/doLogin" method="post">
	                <input name="clientID" id="writeID" type="text" placeholder="Username" />
	                <input name="clientPW" id="writePW" type="password" placeholder="Password" />
	                <input type="button" value="Sign In" onclick="login()" class="btn btn-success btn-sm" />
	                <div class="remember-forgot">
	                    <div class="row">
	                        <div class="col-md-6">
	                            <div class="checkbox">
	                            	<a href="javascription:void(0)" class="forgot-pass">Forgot Password</a>
	                        	</div>
	                        </div>
	                    </div>
	                </div>
	                <br>
	                <div>
	                	<p><a href="<c:url value="/backoffice/UserManager/join"/>">아직 회원이 아니신가요?</a></p>
	                </div>
                </form>
            </div>
        </div>
    </div>
</div>

</tag:template>