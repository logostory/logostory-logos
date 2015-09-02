<%@ tag language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags" %>
<%@ attribute name="activeMenu" required="false"%>

<tag:top/>
<tag:header/>
    <div class="container-fluid">
      <div class="row">
      <tag:leftmenu activeMenu="${activeMenu}" />
        <div class="main">
        	<jsp:doBody/>
        </div>
      </div>
    </div>
<tag:footer/>