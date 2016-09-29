<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Bem Vindo ao SLA</title>
</head>
<br>
<br id="page-body" role="main">
    <h1 class="center">SLA</h1>
    <h4 class="center">Sistema de Levantamento e Acerto</h4>
    </br></br>

    <div id="controller-list" role="navigation">
    <blockquote>
         <h5>
             Selecione o controlador para acessar suas funções.
         </h5>
 </blockquote>
 <blockquote>
        <ul class="collection">
            <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.name } }">
                <li class="controller; collection-item"><g:link controller="${c.logicalPropertyName}">${c.name}</g:link></li>
            </g:each>
        </ul>
         </blockquote>
    </div>
</div>
</body>
</html>
