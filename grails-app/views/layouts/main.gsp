<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="Esse sistema é para auxilar a administração de uma empresa que trabalha planos especificos">
		<meta name="author" content="Ricardo Santiago Morais">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'materialize.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'materialize.min.css')}" type="text/css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<g:layoutHead/>
	</head>
<body>
<ul id="dropdown1" class="dropdown-content">
    <li><a href="#!">1</a></li>
    <li><a href="#!">2</a></li>
    <li class="divider"></li>
    <li><a href="#!">3</a></li>
</ul>
<nav class="teal 500" role="navigation">
    <div class="nav-wrapper container">
        <a id="logo-container" href="#" class="brand-logo">SLA</a>
        <ul class="right hide-on-med-and-down">
            <li><a href="filmagens.html">Cadastro</a></li>
            <!-- Dropdown Trigger -->
            <li><a class="dropdown-button" href="#" data-activates="dropdown1">Listar<i class="material-icons right">
                arrow_drop_down</i></a></li>
            <li><a href="#contate_nos" class="active">Buscar</a></li>
        </ul>
        <ul id="nav-mobile" class="side-nav">
            <li><i class="material-icons right">
                arrow_drop_down </i><a href="#">Menu</a></li>
            <li class="divider"></li>
            <li><a href="#">Cadastro</a></li>
            <li><a href="#">Listar</a></li>
            <li class="divider"></li>
            <li><a href="#">Buscar</a></li>
            <li><a href="#">Nos conheça</a></li>
        </ul>
        <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
    </div>
</nav>

	<!-- rodapé - a versão do sistema é estabelecida a partir da tabela parametros -->
	<footer>
		<p style="text-align: center">SLA - Versão: <g:meta name="app.version"/></p>
	</footer>

</div> <!-- /container -->

<script type="text/javascript" src="${resource(dir:'js',file:'materialize.js')}"></script>
<script type="text/javascript" src="${resource(dir:'js',file:'materialize.min.js')}"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<r:layoutResources />
</body>
</html>
