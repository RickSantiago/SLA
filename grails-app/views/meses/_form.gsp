<%@ page import="sla.Meses" %>



<div class="fieldcontain ${hasErrors(bean: mesesInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="meses.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="nome" from="${mesesInstance.constraints.nome.inList}" required="" value="${mesesInstance?.nome}" valueMessagePrefix="meses.nome"/>

</div>

