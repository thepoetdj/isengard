<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="showFooter" required="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ig" tagdir="/WEB-INF/tags/isengard" %>

<c:set var="showFooter" value="${(empty showFooter) ? true : showFooter}" />

<c:if test="${ showFooter }">
<footer class="mt-auto pt-3">
	<div class="container">
		<ig:copyright />
	</div>
</footer>
</c:if>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous">
</script>

</body>
</html>