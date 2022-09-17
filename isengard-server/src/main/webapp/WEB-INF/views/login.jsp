<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="ig" tagdir="/WEB-INF/tags/isengard" %>

<ig:header title="Log In" />

<section class="vh-100 bg-secondary">
	<div class="container py-5 h-100">
		<div class="row d-flex justify-content-center align-items-center h-100">
			<div class="col-12 col-md-8 col-lg-6 col-xl-5">
				<div class="card bg-dark text-white" style="border-radius: 1rem;">
					<div class="card-body p-5 text-center">
						<div class="mb-md-5">
							<img src="resources/images/isengard.svg" style="width: 25%;" alt="logo">
							<h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">
								<spring:message code="login.sign_into_your_account"/>
							</h5>
							
							<c:if test="${ param.error != null }">
								<div class="alert text-start text-bg-danger">
									<spring:message code="login.error"/>
								</div>
							</c:if>

							<form action="${ config.issuer }${ config.issuer.endsWith('/') ? '' : '/' }login" method="POST">
								<div class="form-floating mb-4">
									<input type="text" class="form-control form-control-lg bg-transparent text-white fs-6"
										autocorrect="off" autocapitalize="off" autocomplete="off" spellcheck="false"
										placeholder="<spring:message code="login.username"/>"
										value="<c:out value="${ login_hint }" />"
										id="j_username" name="username" />
									<label class="form-label" for="j_username">
										<spring:message code="login.username"/>
									</label>
								</div>

								<div class="form-floating mb-5">
									<input type="password" class="form-control form-control-lg bg-transparent text-white fs-6"
										autocorrect="off" autocapitalize="off" autocomplete="off" spellcheck="false"
										placeholder="<spring:message code="login.password"/>"
										id="j_password" name="password" />
									<label class="form-label" for="j_password">
										<spring:message code="login.password"/>
									</label>
								</div>
								
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
								<button class="btn btn-outline-light btn-lg fw-bold px-5 text-uppercase" type="submit">
									<spring:message code="login.login-button"/>
								</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
		
<ig:footer showFooter="false" />