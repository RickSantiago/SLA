<%@ page import="sla.Pessoa" %>



<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="pessoa.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${pessoaInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="pessoa.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpf" required="" value="${pessoaInstance?.cpf}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'rg', 'error')} required">
	<label for="rg">
		<g:message code="pessoa.rg.label" default="Rg" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="rg" required="" value="${pessoaInstance?.rg}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'endereco', 'error')} required">
	<label for="endereco">
		<g:message code="pessoa.endereco.label" default="Endereco" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="endereco" name="endereco.id" from="${sla.Endereco.list()}" optionKey="id" required="" value="${pessoaInstance?.endereco?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'plano', 'error')} required">
	<label for="plano">
		<g:message code="pessoa.plano.label" default="Plano" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="plano" name="plano.id" from="${sla.Plano.list()}" optionKey="id" required="" value="${pessoaInstance?.plano?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'telefone', 'error')} required">
	<label for="telefone">
		<g:message code="pessoa.telefone.label" default="Telefone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefone" required="" value="${pessoaInstance?.telefone}"/>

</div>

