<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Bem Vindo ao SLA</title>
</head>
<br>
<br id="page-body" role="main">
    <h1>SLA</h1>
    <h4>Sistema Voltado para Levantamento e Otimização na Administração Contabil de uma empresa</h4>
    </br></br>
    <div id="controller-list" role="navigation">
        <h5 class="">Controladores:</h5>
        <ul class="collection">
            <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.name } }">
                <li class="controller; collection-item"><g:link controller="${c.logicalPropertyName}">${c.name}</g:link></li>
            </g:each>
        </ul>
    </div>
</div>
</body>
</html>
