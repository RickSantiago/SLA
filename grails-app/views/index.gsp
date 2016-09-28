%{--<%@ page import=".Parametro" %>--}%
<!doctype html>
<html>
<head>
	<meta name="layout" content="main"/>
	<title>SLA - Sistema de Levantamento e Acerto</title>
</head>
<body>
<g:if test="${flash.message}">
	<div class="alert alert-info">
		<a class="close" data-dismiss="alert" href="#">x</a>
		${flash.message}
	</div>
</g:if>
<!-- Carrega as mensagens de erro -->
<g:if test="${flash.error}">
	<div class="alert alert-error">
		<a class="close" data-dismiss="alert" href="#">×</a>
		${flash.error}
	</div>
</g:if>
<h2>Available Controllers:</h2>
<ul class="collection">
    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
        %{--<li class="controller"><g:link controller="${c.logicalPropertyName}">${c.name}</g:link></li>--}%
        <li class="collection-item"><g:link controller="${c.logicalPropertyName}">${c.name}</g:link></li>
    </g:each>
</ul>
</body>
</html>
