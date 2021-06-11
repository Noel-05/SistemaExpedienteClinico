<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'cita.label', default: 'Cita')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    
    <body>
        <!-- Agregar esto como Título del Template -->
        <font face="small fonts" size="10" color="#049286">
            <h1 align="center" class="form-titulo" style="margin-left: 5px; margin-top:20px; bg-success text-white"><g:message code="default.create" args="[entityName]" default="Agendar Cita"/></h1>
        </font>

        <!-- Agregar esto para el botón Regresar -->
        <div class="container" align="center">
            <button type="button" class="btn btn-outline-success" href="${createLink(controller:'cita', action:'list')}" style="background-color:#009688; color:white;"><g:link class="list" action="index" style="text-decoration:none; color:white;"><g:message code="default.list" args="[entityName]" default="Regresar"/></g:link></button>
        </div>

        </br>
        
        <div id="create-cita" class="content scaffold-create" role="main">
        
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            
            <g:hasErrors bean="${this.cita}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${this.cita}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                    </g:eachError>
                </ul>
            </g:hasErrors>
            
            <div style="text-align:center; margin: 0 auto;">
                <g:form resource="${this.cita}" method="POST">
                    <fieldset class="form">
                        
                        <!-- Agregar aquí los campos correspondientes del formulario. -->
                        <!-- <f:all bean="cita"/> -->
                        <div class="fieldcontain ${hasErrors(bean: cita.nombrepac, field: 'nombrepac', 'error')} ">
                            <label for="nombrepac">
                                <g:message code="cita.nombrepac.label" default="Nombre Paciente: " />
                            </label></br>
                            <g:textField name="nombrepac" required="true" value="${cita?.nombrepac}" class="form-control" style="width:35%; display:inline;" />
                        </div>
                        
                        <div class="fieldcontain ${hasErrors(bean: cita.apellidopac, field: 'apellidopac', 'error')} ">
                            <label for="apellidopac">
                                <g:message code="cita.apellidopac.label" default="Apelllido Paciente: " />
                            </label></br>
                            <g:textField name="apellidopac" required="true" value="${cita?.apellidopac}" class="form-control" style="width:35%; display:inline;" />
                        </div>
                        
                        <div class="fieldcontain ${hasErrors(bean: cita.cancelada, field: 'cancelada', 'error')} ">
                            <label for="cancelada">
                                <g:message code="cita.cancelada.label" default="Estado de la Cita: " />
                            </label></br>
                            <select name="cancelada" id="cancelada" class="form-control col-4 col-sm-4 input-style" title="Seleccione el estado de la cita."  style="display:inline;" required="True">
                                <option selected value="1">Activa</option>
                                <option value="2">Cancelada</option>
                            </select></br>
                        </div>
                        
                        </br>
                        
                        <div class="fieldcontain ${hasErrors(bean: cita.fechaHoraPlanificada, field: 'fechaHoraPlanificada', 'error')} ">
                            <label for="fechaHoraPlanificada">
                                <g:message code="cita.fechaHoraPlanificada.label" default="Fecha y Hora de Cita: " />
                            </label></br>
                            <g:datePicker name="fechaHoraPlanificada" value="${cita?.fechaHoraPlanificada}"/>
                        </div>
                        
                        </br></br>
                        <f:field bean="cita" property="idMotivo" label="Motivo de Cita: " style="display:inline; text-align:center; margin: 0 auto;" class="form-control col-4 col-sm-4 input-style"/>

                    </fieldset></br>
                    
                    <fieldset>
                        <g:submitButton name="create" class="btn btn-outline-success" value="${message(code: 'default.button.create.label', default: 'Create')}" style="background-color:#009688; color:white;"/>
                    </fieldset>
                    
                </g:form>
            </div>
        </div>
    </body>
</html>
