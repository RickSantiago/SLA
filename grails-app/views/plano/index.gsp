
<%@ page import="sla.Plano" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'plano.label', default: 'Plano')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-plano" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-plano" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'plano.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="numero" title="${message(code: 'plano.numero.label', default: 'Numero')}" />
					
						<g:sortableColumn property="data_inicio" title="${message(code: 'plano.data_inicio.label', default: 'Datainicio')}" />
					
						<g:sortableColumn property="data_pagamento" title="${message(code: 'plano.data_pagamento.label', default: 'Datapagamento')}" />
					
						<th><g:message code="plano.pessoa.label" default="Pessoa" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${planoInstanceList}" status="i" var="planoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${planoInstance.id}">${fieldValue(bean: planoInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: planoInstance, field: "numero")}</td>
					
						<td><g:formatDate date="${planoInstance.data_inicio}" /></td>
					
						<td><g:formatDate date="${planoInstance.data_pagamento}" /></td>
					
						<td>${fieldValue(bean: planoInstance, field: "pessoa")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${planoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
