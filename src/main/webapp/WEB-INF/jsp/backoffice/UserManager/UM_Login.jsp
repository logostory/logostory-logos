<%@ page language="java" contentType="text/html; charset=utf-8" 
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags" %>

<tag:template activeMenu="777">

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="wrap">
                <p class="form-title">
                    Sign In</p>
                <form class="login">
                <input type="text" placeholder="Username" />
                <input type="password" placeholder="Password" />
                <input type="submit" value="Sign In" class="btn btn-success btn-sm" />
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