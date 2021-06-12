<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'sintoma.label', default: 'Sintoma')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>

    <body>
        <div style="text-align:center; margin: 0 auto;">
        
            <!-- Agregar esto como Título del Template -->
            <font face="small fonts" size="10" color="#049286">
                <h1 align="center" class="form-titulo" style ="margin-left: 5px; margin-top:20px; bg-success text-white"><g:message code="default.list" args="[entityName]" default="Listado de síntomas"/></h1>
            </font>
            
            <!-- Agregar esto para el botón de Nuevo Registro -->
            <div class="container" align="center">
                <button type="button" class="btn btn-outline-success" href="${createLink(controller:'sintoma', action:'create')}" style="background-color:#009688; color:white;"><g:link action="create" style="text-decoration:none; color:white;"><g:message code="default.new.label" args="[entityName]" /></g:link></button>
            </div>

            </br>

            <div id="list-sintoma" class="content scaffold-list" role="main">
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
                <%-- <f:table collection="${sintomaList}" /> --%>
                <div class="table-responsive" style="width:80%; display:inline-block;">
                    <table class="table table-hover text-center">
                        <thead>
                            <tr>
                                <g:sortableColumn property="idConsulta" title="${message(code: 'sintoma.idConsulta.label', default: 'ID de consulta')}" />
                                <g:sortableColumn property="fechaInicio" title="${message(code: 'sintoma.fechaInicio.label', default: 'Fecha de inicio de los síntomas')}"/>
                                <g:sortableColumn property="diasConMalestar" title="${message(code: 'sintoma.diasConMalestar.label', default: 'Días con malestar')}" />
                                <g:sortableColumn property="descripcion" title="${message(code: 'sintoma.descripcion.label', default: 'Descripción')}" />
                                <th style="color:#009688;">Opcion</th>
                            </tr>
                        </thead>

                        <tbody>
                            <g:each in="${sintomaInstanceList}" status="i" var="sintomaInstance">
                                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                    <td>${fieldValue(bean: sintomaInstance, field: "idConsulta")}</td>
                                    <td>${fieldValue(bean: sintomaInstance, field: "fechaInicio")}</td>
                                    <td>${fieldValue(bean: sintomaInstance, field: "diasConMalestar")}</td>
                                    <td>${fieldValue(bean: sintomaInstance, field: "descripcion")}</td>
                                        
                                    <f:display bean="sintoma" />
                                    <g:form resource="${sintomaInstance.id}" method="DELETE">
                                        <td><fieldset class="buttons">
                                            <g:link action="edit" id="${sintomaInstance.id}"><g:message code="default.button.edit.label" default="Editar" /></g:link>
                                            |
                                            <g:link action="show" id="${sintomaInstance.id}"><g:message code="default.button.show.label" default="Eliminar" /></g:link>
                                        </fieldset></td>
                                    </g:form>
                                </tr>
                            </g:each>
                        </tbody>
                    </table>
                </div>
                <div class="pagination">
                    <g:paginate total="${sintomaCount ?: 0}" />
                </div>
            </div>
        </div>
    </body>
</html>