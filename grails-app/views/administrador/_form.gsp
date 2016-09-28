<%@ page import="sla.Administrador" %>



<div class="fieldcontain ${hasErrors(bean: administradorInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="administrador.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${administradorInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: administradorInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="administrador.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpf" required="" value="${administradorInstance?.cpf}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: administradorInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="administrador.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${administradorInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: administradorInstance, field: 'senha', 'error')} required">
	<label for="senha">
		<g:message code="administrador.senha.label" default="Senha" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="senha" required="" value="${administradorInstance?.senha}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: administradorInstance, field: 'telefone', 'error')} required">
	<label for="telefone">
		<g:message code="administrador.telefone.label" default="Telefone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefone" required="" value="${administradorInstance?.telefone}"/>

</div>

