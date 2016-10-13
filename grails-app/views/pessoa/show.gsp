
<%@ page import="sla.Pessoa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pessoa.label', default: 'Pessoa')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-pessoa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-pessoa" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list pessoa">
			
				<g:if test="${pessoaInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="pessoa.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${pessoaInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.cpf}">
				<li class="fieldcontain">
					<span id="cpf-label" class="property-label"><g:message code="pessoa.cpf.label" default="Cpf" /></span>
					
						<span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${pessoaInstance}" field="cpf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.rg}">
				<li class="fieldcontain">
					<span id="rg-label" class="property-label"><g:message code="pessoa.rg.label" default="Rg" /></span>
					
						<span class="property-value" aria-labelledby="rg-label"><g:fieldValue bean="${pessoaInstance}" field="rg"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.enderecoDescricao}">
				<li class="fieldcontain">
					<span id="enderecoDescricao-label" class="property-label"><g:message code="pessoa.enderecoDescricao.label" default="Endereco Descricao" /></span>
					
						<span class="property-value" aria-labelledby="enderecoDescricao-label"><g:fieldValue bean="${pessoaInstance}" field="enderecoDescricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.bairro}">
				<li class="fieldcontain">
					<span id="bairro-label" class="property-label"><g:message code="pessoa.bairro.label" default="Bairro" /></span>
					
						<span class="property-value" aria-labelledby="bairro-label"><g:fieldValue bean="${pessoaInstance}" field="bairro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.numero}">
				<li class="fieldcontain">
					<span id="numero-label" class="property-label"><g:message code="pessoa.numero.label" default="Numero" /></span>
					
						<span class="property-value" aria-labelledby="numero-label"><g:fieldValue bean="${pessoaInstance}" field="numero"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.cep}">
				<li class="fieldcontain">
					<span id="cep-label" class="property-label"><g:message code="pessoa.cep.label" default="Cep" /></span>
					
						<span class="property-value" aria-labelledby="cep-label"><g:fieldValue bean="${pessoaInstance}" field="cep"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.complemento}">
				<li class="fieldcontain">
					<span id="complemento-label" class="property-label"><g:message code="pessoa.complemento.label" default="Complemento" /></span>
					
						<span class="property-value" aria-labelledby="complemento-label"><g:fieldValue bean="${pessoaInstance}" field="complemento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.plano}">
				<li class="fieldcontain">
					<span id="plano-label" class="property-label"><g:message code="pessoa.plano.label" default="Plano" /></span>
					
						<span class="property-value" aria-labelledby="plano-label"><g:link controller="plano" action="show" id="${pessoaInstance?.plano?.id}">${pessoaInstance?.plano?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.cidade}">
				<li class="fieldcontain">
					<span id="cidade-label" class="property-label"><g:message code="pessoa.cidade.label" default="Cidade" /></span>
					
						<span class="property-value" aria-labelledby="cidade-label"><g:link controller="cidade" action="show" id="${pessoaInstance?.cidade?.id}">${pessoaInstance?.cidade?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.telefone}">
				<li class="fieldcontain">
					<span id="telefone-label" class="property-label"><g:message code="pessoa.telefone.label" default="Telefone" /></span>
					
						<span class="property-value" aria-labelledby="telefone-label"><g:fieldValue bean="${pessoaInstance}" field="telefone"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:pessoaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${pessoaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
