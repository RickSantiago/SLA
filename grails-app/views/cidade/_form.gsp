<%@ page import="sla.Cidade" %>



<div class="fieldcontain ${hasErrors(bean: cidadeInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="cidade.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="nome" from="${cidadeInstance.constraints.nome.inList}" required="" value="${cidadeInstance?.nome}" valueMessagePrefix="cidade.nome"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cidadeInstance, field: 'cep', 'error')} ">
	<label for="cep">
		<g:message code="cidade.cep.label" default="Cep" />
		
	</label>
	<g:textField name="cep" value="${cidadeInstance?.cep}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cidadeInstance, field: 'pessoa', 'error')} ">
	<label for="pessoa">
		<g:message code="cidade.pessoa.label" default="Pessoa" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${cidadeInstance?.pessoa?}" var="p">
    <li><g:link controller="pessoa" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="pessoa" action="create" params="['cidade.id': cidadeInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'pessoa.label', default: 'Pessoa')])}</g:link>
</li>
</ul>


</div>

