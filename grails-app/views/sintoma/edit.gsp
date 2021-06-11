<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'sintoma.label', default: 'Sintoma')}" />
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

        </br>
        <div id="edit-sintoma" class="content scaffold-edit" role="main">

            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>

            <g:hasErrors bean="${this.sintoma}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.sintoma}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>

            <div id="list-sintoma" class="content scaffold-list" role="main">
            <div style="text-align:center; margin: 0 auto;">
                <g:form resource="${this.sintoma}" method="PUT">
                    <g:hiddenField name="version" value="${this.sintoma?.version}" />
                    <fieldset class="form">
                        <%-- <f:all bean="sintoma"/> --%>
                        <div class="fieldcontain ${hasErrors(bean: sintoma.idConsulta, field: 'idConsulta', 'error')} ">
                            <label for="idConsulta">
                                <g:message code="sintoma.idConsulta.label" default="ID de consulta: " />
                            </label></br>
                            <g:textField name="idConsulta" required="false" value="${sintoma?.idConsulta}" class="form-control" style="width:35%; display:inline;"/>
                        </div>
                        <div class="fieldcontain ${hasErrors(bean: sintoma.fechaInicio, field: 'fechaInicio', 'error')} ">
                            <label for="fechaInicio">
                                <g:message code="sintoma.fechaInicio.label" default="Fecha de inicio de los síntomas: " />
                            </label></br>
                            <g:textField name="fechaInicio" required="true" value="${sintoma?.fechaInicio}" class="form-control" style="width:35%; display:inline;"/>
                        </div>
                        <div class="fieldcontain ${hasErrors(bean: sintoma.diasConMalestar, field: 'diasConMalestar', 'error')} ">
                            <label for="diasConMalestar">
                                <g:message code="sintoma.diasConMalestar.label" default="Días con malestar: " />
                            </label></br>
                            <g:textField name="diasConMalestar" required="true" value="${sintoma?.diasConMalestar}" class="form-control" style="width:35%; display:inline;"/>
                        </div>
                        <div class="fieldcontain ${hasErrors(bean: sintoma.descripcion, field: 'descripcion', 'error')} ">
                            <label for="descripcion">
                                <g:message code="sintoma.descripcion.label" default="Descripción: " />
                            </label></br>
                            <g:textField name="descripcion" required="true" value="${sintoma?.descripcion}" class="form-control" style="width:35%; display:inline;"/>
                        </div>
                    </fieldset>
                    </br>
                    <fieldset class="buttons">
                        <input type="submit" class="btn btn-outline-success" value="${message(code: 'default.button.update.label', default: 'Update')}" style="background-color:#009688; color:white;"/>
                    </fieldset>
                </g:form>
            </div>
            </div>
        </div>
    </body>
</html>
