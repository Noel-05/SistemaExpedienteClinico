<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'cita.label', default: 'Cita')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
        <asset:stylesheet src="application.css"/>
        <asset:stylesheet rel="stylesheet" href="main2.css"/>
    </head>
    
    <body>
        <!-- Agregar esto como Título del Template -->
        <font face="small fonts" size="10" color="#049286">
            <h1 align="center" class="form-titulo" style="margin-left: 5px; margin-top:20px; bg-success text-white"><g:message code="default.show.label" args="[entityName]" /></h1>
        </font>
        
        <!-- Agregar esto para el botón Regresar -->
        <div class="container" align="center">
            <button type="button" class="btn btn-outline-success" href="${createLink(controller:'cita', action:'list')}" style="background-color:#009688; color:white;"><g:link class="list" action="index" style="text-decoration:none; color:white;"><g:message code="default.list" args="[entityName]" default="Regresar"/></g:link></button>
        </div>
        
        </br>
        
        <div id="show-cita" class="content scaffold-show" role="main">
            
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            
            <div style="text-align:center; margin: 0 auto;">
                
                <!-- <f:display bean="cita" /> -->
            
                <div class="fieldcontain ${hasErrors(bean: cita.nombrepac, field: 'nombrepac', 'error')} ">
                    <label for="nombrepac" style="display:inline; text-align:center; margin: 0 auto;">
                        <g:message code="cita.nombrepac.label" default="Nombre Paciente: " />
                    </label></br>
                    <g:textField name="nombrepac" readonly="true" value="${cita?.nombrepac}" class="form-control" style="width:35%; display:inline;"/>
                </div>

                <div class="fieldcontain ${hasErrors(bean: cita.apellidopac, field: 'apellidopac', 'error')} ">
                    <label for="apellidopac" style="display:inline; text-align:center; margin: 0 auto;">
                        <g:message code="cita.apellidopac.label" default="Apellido Paciente: " />
                    </label></br>
                    <g:textField name="apellidopac" readonly="true" value="${cita?.apellidopac}" class="form-control" style="width:35%; display:inline;"/>
                </div>
                
                <div class="fieldcontain ${hasErrors(bean: cita.cancelada, field: 'cancelada', 'error')} ">
                    <label for="cancelada" style="display:inline; text-align:center; margin: 0 auto;">
                        <g:message code="cita.cancelada.label" default="Estado de la Cita: " />
                    </label></br>
                    <g:textField name="cancelada" readonly="true" value="${cita?.cancelada}" class="form-control" style="width:35%; display:inline;"/>
                </div>

                <div class="fieldcontain ${hasErrors(bean: cita.fechaHoraPlanificada, field: 'fechaHoraPlanificada', 'error')} ">
                    <label for="fechaHoraPlanificada" style="display:inline; text-align:center; margin: 0 auto;">
                        <g:message code="cita.fechaHoraPlanificada.label" default="Fecha y Hora de Cita: " />
                    </label></br>
                    <g:textField name="fechaHoraPlanificada" readonly="true" value="${cita?.fechaHoraPlanificada}" class="form-control" style="width:35%; display:inline;"/>
                </div>
                
                <div class="fieldcontain ${hasErrors(bean: cita.idMotivo, field: 'idMotivo', 'error')} ">
                    <label for="idMotivo"style="display:inline; text-align:center; margin: 0 auto;">
                        <g:message code="cita.idMotivo.label" default="Motivo: " />
                    </label></br>
                    <g:textField name="idMotivo" required="true" readonly="true" value="${cita?.idMotivo}" class="form-control" style="width:35%; display:inline;"/>
                </div>
                
                <g:form resource="${this.cita}" method="DELETE">
                    <fieldset>
                        <button type="button" class="btn btn-outline-success" href="${createLink(controller:'cita', action:'list')}" style="background-color:#009688; color:white;"><g:link class="edit" action="edit" resource="${this.usuario}" style="text-decoration:none; color:white;"><g:message code="default.button.edit.label" default="Edit" /></g:link></button>
                        
                        <input class="btn btn-outline-success" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" style="background-color:#009688; color:white;"/>
                    </fieldset>
                </g:form>
             
            </div>
            
        </div>
    </body>
</html>
