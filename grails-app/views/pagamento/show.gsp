
<%@ page import="sla.Pagamento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pagamento.label', default: 'Pagamento')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-pagamento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-pagamento" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list pagamento">
			
				<g:if test="${pagamentoInstance?.valor}">
				<li class="fieldcontain">
					<span id="valor-label" class="property-label"><g:message code="pagamento.valor.label" default="Valor" /></span>
					
						<span class="property-value" aria-labelledby="valor-label"><g:fieldValue bean="${pagamentoInstance}" field="valor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pagamentoInstance?.meses}">
				<li class="fieldcontain">
					<span id="meses-label" class="property-label"><g:message code="pagamento.meses.label" default="Meses" /></span>
					
						<span class="property-value" aria-labelledby="meses-label"><g:fieldValue bean="${pagamentoInstance}" field="meses"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pagamentoInstance?.plano}">
				<li class="fieldcontain">
					<span id="plano-label" class="property-label"><g:message code="pagamento.plano.label" default="Plano" /></span>
					
						<span class="property-value" aria-labelledby="plano-label"><g:link controller="plano" action="show" id="${pagamentoInstance?.plano?.id}">${pagamentoInstance?.plano?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:pagamentoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${pagamentoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
