<%@ page import="sla.Pagamento" %>



<div class="fieldcontain ${hasErrors(bean: pagamentoInstance, field: 'valor', 'error')} required">
	<label for="valor">
		<g:message code="pagamento.valor.label" default="Valor" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valor" value="${fieldValue(bean: pagamentoInstance, field: 'valor')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: pagamentoInstance, field: 'meses', 'error')} required">
	<label for="meses">
		<g:message code="pagamento.meses.label" default="Meses" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="meses" from="${pagamentoInstance.constraints.meses.inList}" required="" value="${pagamentoInstance?.meses}" valueMessagePrefix="pagamento.meses"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pagamentoInstance, field: 'plano', 'error')} required">
	<label for="plano">
		<g:message code="pagamento.plano.label" default="Plano" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="plano" name="plano.id" from="${sla.Plano.list()}" optionKey="id" required="" value="${pagamentoInstance?.plano?.id}" class="many-to-one"/>

</div>

