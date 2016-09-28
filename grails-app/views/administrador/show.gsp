
<%@ page import="sla.Administrador" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'administrador.label', default: 'Administrador')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-administrador" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-administrador" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list administrador">
			
				<g:if test="${administradorInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="administrador.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${administradorInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${administradorInstance?.cpf}">
				<li class="fieldcontain">
					<span id="cpf-label" class="property-label"><g:message code="administrador.cpf.label" default="Cpf" /></span>
					
						<span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${administradorInstance}" field="cpf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${administradorInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="administrador.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${administradorInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${administradorInstance?.senha}">
				<li class="fieldcontain">
					<span id="senha-label" class="property-label"><g:message code="administrador.senha.label" default="Senha" /></span>
					
						<span class="property-value" aria-labelledby="senha-label"><g:fieldValue bean="${administradorInstance}" field="senha"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${administradorInstance?.telefone}">
				<li class="fieldcontain">
					<span id="telefone-label" class="property-label"><g:message code="administrador.telefone.label" default="Telefone" /></span>
					
						<span class="property-value" aria-labelledby="telefone-label"><g:fieldValue bean="${administradorInstance}" field="telefone"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:administradorInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${administradorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
