<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'cita.label', default: 'Cita')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    
    <body>
        <div style="text-align:center; margin: 0 auto;">
        
            <!-- Agregar esto como Título del Template -->
            <font face="small fonts" size="10" color="#049286">
                <h1 align="center" class="form-titulo" style ="margin-left: 5px; margin-top:20px; bg-success text-white"><g:message code="default.list" args="[entityName]" default="Listado de Citas"/></h1>
            </font>
            
            <!-- Agregar esto para el botón de Nuevo Registro -->
            <div class="container" align="center">
                <button type="button" class="btn btn-outline-success" href="${createLink(controller:'cita', action:'create')}" style="background-color:#009688; color:white;"><g:link action="create" style="text-decoration:none; color:white;"><g:message code="default.new.label" args="[entityName]" /></g:link></button>
            </div>

            </br>
            
            <div id="list-cita" class="content scaffold-list" role="main">
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
                
                <!-- Agregar acá todo lo que se mostrará en la tabla -->
                <!-- <f:table collection="${citaList}" /> -->
                <div class="table-responsive" style="width:80%; display:inline-block;">
                    <table class="table table-hover text-center">

                        <thead>
                            <tr>
                                <g:sortableColumn property="apellidopac" title="${message(code: 'cita.apellidopac.label', default: 'Apellido Paciente')}" />
                                <g:sortableColumn property="nombrepac" title="${message(code: 'cita.nombrepac.label', default: 'Nombre Paciente')}" />
                                <g:sortableColumn property="fechaHoraPlanificada" title="${message(code: 'cita.fechaHoraPlanificada.label', default: 'Fecha y Hora de Cita')}" />
                                <g:sortableColumn property="cancelada" title="${message(code: 'cita.cancelada.label', default: 'Estado de la Cita')}" />
                                <g:sortableColumn property="idMotivo" title="${message(code: 'cita.idMotivo.label', default: 'Motivo de Cita')}" />
                                <th style="color:#009688;">Opci&oacute;n</th>
                            </tr>
                        </thead>

                        <tbody>
                            <g:each in="${citaInstanceList}" status="i" var="citaInstance">
                                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                    <td><g:link action="show" id="${citaInstance.id}">${fieldValue(bean: citaInstance, field: "apellidopac")}</g:link></td>
                                    <td><g:link action="show" id="${citaInstance.id}">${fieldValue(bean: citaInstance, field: "nombrepac")}</g:link></td>
                                    <td>${fieldValue(bean: citaInstance, field: "fechaHoraPlanificada")}</td>
                                    
                                    <g:if test="${(fieldValue(bean: citaInstance, field: "cancelada")) == '1'}">
                                        <td>Activa</td>
                                    </g:if>
                                    <g:else>
                                        <td>Cancelada</td>
                                    </g:else>

                                    <td>${fieldValue(bean: citaInstance, field: "idMotivo")}</td>

                                    <f:display bean="cita" />
                                    <g:form resource="${citaInstance.id}" method="DELETE">
                                        <td><fieldset class="buttons">
                                            <g:link action="edit" id="${citaInstance.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                                            |
                                            <g:link action="show" id="${citaInstance.id}"><g:message code="default.button.show.label" default="Eliminar" /></g:link>
                                        </fieldset></td>
                                    </g:form>

                                </tr>
                            </g:each>
                        </tbody>

                    </table>
                </div>
                
                <div class="pagination">
                    <g:paginate total="${citaCount ?: 0}" />
                </div>
            </div>
            
        </div>
    </body>
</html>