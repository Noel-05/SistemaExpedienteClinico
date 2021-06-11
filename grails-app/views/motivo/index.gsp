<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'motivo.label', default: 'Motivo')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    
    <body>
        <div style="text-align:center; margin: 0 auto;">
        
            <!-- Agregar esto como Título del Template -->
            <font face="small fonts" size="10" color="#049286">
                <h1 align="center" class="form-titulo" style ="margin-left: 5px; margin-top:20px; bg-success text-white"><g:message code="default.list" args="[entityName]" default="Consulta de Motivos de Cita"/></h1>
            </font>
            
            <!-- Agregar esto para el botón de Nuevo Registro -->
            <div class="container" align="center">
                <button type="button" class="btn btn-outline-success" href="${createLink(controller:'motivo', action:'create')}" style="background-color:#009688; color:white;"><g:link action="create" style="text-decoration:none; color:white;"><g:message code="default.new.label" args="[entityName]" /></g:link></button>
            </div>

            </br>

            <div id="list-motivo" class="content scaffold-list" role="main">

                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>

                    <!-- Agregar acá todo lo que se mostrará en la tabla -->
                    <!-- <f:table collection="${motivoList}" /> -->
                    <div class="table-responsive" style="width:80%; display:inline-block;">
                        <table class="table table-hover text-center">

                            <thead>
                                <tr>
                                    <g:sortableColumn property="razonMotivo" title="${message(code: 'motivo.razonMotivo.label', default: 'Razón de Motivo')}" />
                                    <th style="color:#009688;">Opci&oacute;n</th>
                                </tr>
                            </thead>

                            <tbody>
                                <g:each in="${motivoInstanceList}" status="i" var="motivoInstance">
                                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                        <td><g:link action="show" id="${motivoInstance.id}">${fieldValue(bean: motivoInstance, field: "razonMotivo")}</g:link></td>
                                        
                                        <g:form resource="${motivoInstance.id}" method="DELETE">
                                            <td><fieldset class="buttons">
                                                <g:link action="edit" id="${motivoInstance.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                                                |
                                                <g:link action="show" id="${motivoInstance.id}"><g:message code="default.button.show.label" default="Eliminar" /></g:link>
                                            </fieldset></td>
                                        </g:form>
                                        
                                    </tr>
                                </g:each>
                            </tbody>

                        </table>
                    </div>

                <div class="pagination">
                    <g:paginate total="${motivoCount ?: 0}" />
                </div>

            </div>
    </body>
</html>