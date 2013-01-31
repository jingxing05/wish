<%@ page import="wish.Newlyweds"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<title>身份验证</title>
</head>
<body>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}"><g:message
						code="default.home.label" /></a></li>
		</ul>
	</div>
	<div id="create-newlyweds" class="content scaffold-create" role="main">
		<h1>身份密码验证</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<g:hasErrors bean="${newlywedsInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${newlywedsInstance}" var="error">
					<li
						<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
							error="${error}" /></li>
				</g:eachError>
			</ul>
		</g:hasErrors>
		<g:form action="logincheck">
			<div class="fieldcontain required">
				<label for="authcode">输入密码<span
					class="required-indicator">*</span>
				</label>
				<g:passwordField name="authcode" maxlength="20" required="true"
					value=""/>
			</div>
			<br />
			<fieldset class="buttons">
				<g:submitButton name="login" class="save"
					value="验证" />
			</fieldset>
			
		</g:form> 
	</div>
</body>
</html>
