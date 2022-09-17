<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate var="year" value="${ now }" pattern="yyyy" />

<spring:message code="copyright">
	<spring:argument value="1.3.4" />
	<spring:argument value="${ year }" />
</spring:message>