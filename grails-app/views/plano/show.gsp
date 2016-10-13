
<%@ page import="sla.Plano" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'plano.label', default: 'Plano')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-plano" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-plano" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list plano">
			
				<g:if test="${planoInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="plano.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${planoInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${planoInstance?.numero}">
				<li class="fieldcontain">
					<span id="numero-label" class="property-label"><g:message code="plano.numero.label" default="Numero" /></span>
					
						<span class="property-value" aria-labelledby="numero-label"><g:fieldValue bean="${planoInstance}" field="numero"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${planoInstance?.data_inicio}">
				<li class="fieldcontain">
					<span id="data_inicio-label" class="property-label"><g:message code="plano.data_inicio.label" default="Datainicio" /></span>
					
						<span class="property-value" aria-labelledby="data_inicio-label"><g:formatDate date="${planoInstance?.data_inicio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${planoInstance?.data_pagamento}">
				<li class="fieldcontain">
					<span id="data_pagamento-label" class="property-label"><g:message code="plano.data_pagamento.label" default="Datapagamento" /></span>
					
						<span class="property-value" aria-labelledby="data_pagamento-label"><g:formatDate date="${planoInstance?.data_pagamento}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${planoInstance?.pagamento}">
				<li class="fieldcontain">
					<span id="pagamento-label" class="property-label"><g:message code="plano.pagamento.label" default="Pagamento" /></span>
					
						<g:each in="${planoInstance.pagamento}" var="p">
						<span class="property-value" aria-labelledby="pagamento-label"><g:link controller="pagamento" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${planoInstance?.pessoa}">
				<li class="fieldcontain">
					<span id="pessoa-label" class="property-label"><g:message code="plano.pessoa.label" default="Pessoa" /></span>
					
						<span class="property-value" aria-labelledby="pessoa-label"><g:link controller="pessoa" action="show" id="${planoInstance?.pessoa?.id}">${planoInstance?.pessoa?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:planoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${planoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
