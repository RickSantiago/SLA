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

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'enderecoDescricao', 'error')} required">
	<label for="enderecoDescricao">
		<g:message code="pessoa.enderecoDescricao.label" default="Endereco Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="enderecoDescricao" required="" value="${pessoaInstance?.enderecoDescricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'bairro', 'error')} required">
	<label for="bairro">
		<g:message code="pessoa.bairro.label" default="Bairro" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="bairro" required="" value="${pessoaInstance?.bairro}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'numero', 'error')} ">
	<label for="numero">
		<g:message code="pessoa.numero.label" default="Numero" />
		
	</label>
	<g:textField name="numero" value="${pessoaInstance?.numero}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'cep', 'error')} ">
	<label for="cep">
		<g:message code="pessoa.cep.label" default="Cep" />
		
	</label>
	<g:textField name="cep" value="${pessoaInstance?.cep}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'complemento', 'error')} ">
	<label for="complemento">
		<g:message code="pessoa.complemento.label" default="Complemento" />
		
	</label>
	<g:textField name="complemento" value="${pessoaInstance?.complemento}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'plano', 'error')} ">
	<label for="plano">
		<g:message code="pessoa.plano.label" default="Plano" />
		
	</label>
	<g:select id="plano" name="plano.id" from="${sla.Plano.list()}" optionKey="id" value="${pessoaInstance?.plano?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'cidade', 'error')} required">
	<label for="cidade">
		<g:message code="pessoa.cidade.label" default="Cidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="cidade" name="cidade.id" from="${sla.Cidade.list()}" optionKey="id" required="" value="${pessoaInstance?.cidade?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'telefone', 'error')} required">
	<label for="telefone">
		<g:message code="pessoa.telefone.label" default="Telefone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefone" required="" value="${pessoaInstance?.telefone}"/>

</div>

