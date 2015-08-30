<%@ tag language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags" %>
<%@ attribute name="activeMenu" required="false"%>

<tag:top/>
<tag:header/>
    <div class="container-fluid">
      <div class="row">
      <tag:leftmenu activeMenu="${activeMenu}" />
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
        	<jsp:doBody/>
        </div>
      </div>
    </div>
<tag:footer/>