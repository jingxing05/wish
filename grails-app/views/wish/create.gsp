<%@ page import="wish.Wish"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'wish.label', default: 'Wish')}" />
<title><g:message code="default.create.label"
		args="[entityName]" /></title>
</head>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span4">
				<div class='alert alert-error'>
					<h3>我来祝福</h3>
					<g:if test="${flash.message}">
						<div class="message" role="status">
							${flash.message}
						</div>
					</g:if>
					<g:hasErrors bean="${wishInstance}">
						<ul class="errors" role="alert">
							<g:eachError bean="${wishInstance}" var="error">
								<li
									<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
										error="${error}" /></li>
							</g:eachError>
						</ul>
					</g:hasErrors>
					<g:form action="save">
						<fieldset>
							<g:render template="form" />
						</fieldset>
						<fieldset>
							<g:submitButton name="create" class="btn btn-primary"
								value="送出我的祝福" />
						</fieldset>
					</g:form>
				</div>
			</div>
		</div>
	</div>



</body>
</html>
