<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'examenFisico.label', default: 'Examen Físico')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div style="text-align:center; margin: 0 auto;">
        
            <!-- Agregar esto como Título del Template -->
            <font face="small fonts" size="10" color="#049286">
                <h1 align="center" class="form-titulo" style ="margin-left: 5px; margin-top:20px; bg-success text-white"><g:message code="default.list" args="[entityName]" default="Listado de exámenes físicos"/></h1>
            </font>
            
            <!-- Agregar esto para el botón de Nuevo Registro -->
            <div class="container" align="center">
                <button type="button" class="btn btn-outline-success" href="${createLink(controller:'examenFisico', action:'create')}" style="background-color:#009688; color:white;"><g:link action="create" style="text-decoration:none; color:white;"><g:message code="default.new.label" args="[entityName]" /></g:link></button>
            </div>
            </br>
            <div id="list-examenFisico" class="content scaffold-list" role="main">
            
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>

                <%-- <f:table collection="${examenFisicoList}" /> --%>
                <div class="table-responsive" style="width:80%; display:inline-block;">
                    <table class="table table-hover text-center">
                        <thead>
                            <tr>
                                <g:sortableColumn property="idExamenFisico" title="${message(code: 'examenFisico.idExamenFisico.label', default: 'ID del examen')}" />
                                <g:sortableColumn property="nombreExamenFisico" title="${message(code: 'examenFisico.nombreExamenFisico.label', default: 'Nombre del examen')}"/>
                                <g:sortableColumn property="fechaRealizado" title="${message(code: 'examenFisico.fechaRealizado.label', default: 'Fecha de realización')}" />
                                <g:sortableColumn property="comentarios" title="${message(code: 'examenFisico.comentarios.label', default: 'Comentarios')}" />
                                <th style="color:#009688;">Opcion</th>
                            </tr>
                        </thead>

                        <tbody>
                            <g:each in="${examenFisicoInstanceList}" status="i" var="examenFisicoInstance">
                                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                    <td>${fieldValue(bean: examenFisicoInstance, field: "id")}</td>
                                    <td>${fieldValue(bean: examenFisicoInstance, field: "nombreExamenFisico")}</td>
                                    <td>${fieldValue(bean: examenFisicoInstance, field: "fechaRealizado")}</td>
                                    <td>${fieldValue(bean: examenFisicoInstance, field: "comentarios")}</td>
                                        
                                    <g:form resource="${examenFisicoInstance.id}" method="DELETE">
                                        <td><fieldset class="buttons">
                                            <g:link action="edit" id="${examenFisicoInstance.id}"><g:message code="default.button.edit.label" default="Editar" /></g:link>
                                            |
                                            <g:link action="show" id="${examenFisicoInstance.id}"><g:message code="default.button.show.label" default="Eliminar" /></g:link>
                                        </fieldset></td>
                                    </g:form>
                                </tr>
                            </g:each>
                        </tbody>
                    </table>
                </div>

                <div class="pagination">
                    <g:paginate total="${examenFisicoCount ?: 0}" />
                </div>
            </div>
        </div>
    </body>
</html>