<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate var="year" value="${ now }" pattern="yyyy" />

<c:if test="${ config.heartMode }"><span class="pull-left"><img src="resources/images/heart_mode.png" alt="HEART Mode" title="This server is running in HEART Compliance Mode" /></span> </c:if>
<spring:message code="copyright">
	<spring:argument value="1.3.4" />
	<spring:argument value="${ year }" />
</spring:message>
