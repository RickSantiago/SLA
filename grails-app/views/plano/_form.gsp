<%@ page import="sla.Plano" %>



<div class="fieldcontain ${hasErrors(bean: planoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="plano.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="nome" from="${planoInstance.nome}" required="" value="${planoInstance?.nome}" valueMessagePrefix="plano.nome"/>

</div><div class="fieldcontain ${hasErrors(bean: planoInstance, field: 'id', 'error')}">
	<label for="id">
	</label>
	<g:hiddenField name="nome" from="${planoInstance.id}" required="" value="${planoInstance?.id}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: planoInstance, field: 'numero', 'error')} required">
	<label for="numero">
		<g:message code="plano.numero.label" default="Numero" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numero" type="number" value="${planoInstance.numero}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: planoInstance, field: 'data_inicio', 'error')} required">
	<label for="data_inicio">
		<g:message code="plano.data_inicio.label" default="Datainicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data_inicio" precision="day"  value="${planoInstance?.data_inicio}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: planoInstance, field: 'data_pagamento', 'error')} required">
	<label for="data_pagamento">
		<g:message code="plano.data_pagamento.label" default="Datapagamento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data_pagamento" precision="day"  value="${planoInstance?.data_pagamento}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: planoInstance, field: 'pagamento', 'error')} ">
	<label for="pagamento">
		<g:message code="plano.pagamento.label" default="Pagamento" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${planoInstance?.pagamento?}" var="p">
    <li><g:link controller="pagamento" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="pagamento" action="create" params="['plano.id': planoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'pagamento.label', default: 'Pagamento')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: planoInstance, field: 'pessoa', 'error')} required">
	<label for="pessoa">
		<g:message code="plano.pessoa.label" default="Pessoa" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="pessoa" name="pessoa.id" from="${sla.Pessoa.list()}" optionKey="id" required="" value="${planoInstance?.pessoa?.id}" class="many-to-one"/>

</div>

