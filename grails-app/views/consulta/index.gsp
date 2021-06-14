<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'consulta.label', default: 'Consulta')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
       <div class="content-wrapper">
            <div class="content-header">
                <div class="container-fluid">
                <!-- Agregar esto como Título del Template -->
                    <font face="small fonts" size="10" color="#049286">
                        <h1 align="center" class="form-titulo" style ="margin-left: 5px; margin-top:20px; bg-success text-white"><g:message code="default.list" args="[entityName]" default="Listado de consultas"/></h1>
                    </font>
                    
                    <!-- Agregar esto para el botón de Nuevo Registro -->
                    <div class="container" align="center">
                        <button type="button" class="btn btn-outline-success" href="${createLink(controller:'persona', action:'create')}" style="background-color:#009688; color:white;"><g:link action="create" style="text-decoration:none; color:white;"><g:message code="Agregar nueva" args="[entityName]" /></g:link></button>
                    </div>
                </div>
            </div>
        </div>
        <div id="list-consulta" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${consultaList}" />

            <div class="pagination">
                <g:paginate total="${consultaCount ?: 0}" />
            </div>
        </div>
    </body>
</html>