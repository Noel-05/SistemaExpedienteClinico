<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'tratamientoMedico.label', default: 'TratamientoMedico')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <!-- Agregar esto como Título del Template -->
        <font face="small fonts" size="10" color="#049286">
            <h1 align="center" class="form-titulo" style="margin-left: 5px; margin-top:20px; bg-success text-white"><g:message code="default.edit.label" args="[entityName]" /></h1>
        </font>
        
        <!-- Agregar esto para el botón Regresar -->
        <div class="container" align="center">
            <button type="button" class="btn btn-outline-success" href="${createLink(controller:'sintoma', action:'list')}" style="background-color:#009688; color:white;"><g:link class="list" action="index" style="text-decoration:none; color:white;"><g:message code="default.list" args="[entityName]" default="Regresar"/></g:link></button>
        </div>
        <div id="edit-tratamientoMedico" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.tratamientoMedico}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.tratamientoMedico}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.tratamientoMedico}" method="PUT">
                <g:hiddenField name="version" value="${this.tratamientoMedico?.version}" />
                <fieldset class="form">
                    <div class="fieldcontain ${hasErrors(bean: tratamientoMedico.fechaAsignado, field: 'fechaAsignado', 'error')} ">
                        <label for="inicioOperaciones">
                            <g:message code="tratamientoMedico.fechaAsignado.label" default="fecha Asignado: " />
                        </label>
                        <div class="col-8">
                            <input value="${tratamientoMedico?.fechaAsignado}" id="fechaAsignado" name="fechaAsignado" placeholder="Elegir fecha de creación del diagnostico" type="date" required="required" class="form-control">
                        </div>
                    </div>
                    <div class="fieldcontain ${hasErrors(bean: tratamientoMedico.diagnostico, field: 'diagnostico', 'error')} ">
                            <label for="diagnostico">
                                <g:message code="tratamientoMedico.diagnostico.label" default="diagnostico: " />
                            </label></br>
                           
                            <input value="${tratamientoMedico?.diagnostico}" id="fechaAsignado" name="fechaAsignado" placeholder="Elegir fecha de creación del diagnostico"  required="required" class="form-control">

                        </div>
                </fieldset>
                <fieldset class="buttons">
                    <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
