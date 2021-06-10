<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'sintoma.label', default: 'Sintoma')}" />
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
            <button type="button" class="btn btn-outline-success" href="${createLink(controller:'sintoma', action:'list')}" style="background-color:#009688; color:white;"><g:link class="list" action="index" style="text-decoration:none; color:white;"><g:message code="default.list" args="[entityName]" default="Regresar"/></g:link></button>
        </div>
        
        </br>

        <div id="show-sintoma" class="content scaffold-show" role="main">

            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <%-- <f:display bean="sintoma" /> --%>
            <div style="text-align:center; margin: 0 auto;">
                <div class="fieldcontain ${hasErrors(bean: sintoma.idConsulta, field: 'idConsulta', 'error')} ">
                    <label for="idConsulta">
                        <g:message code="sintoma.idConsulta.label" default="ID de consulta: " />
                    </label></br>
                    <g:textField name="idConsulta" readonly="true" value="${sintoma?.idConsulta}" class="form-control" style="width:35%; display:inline;"/>
                </div>
                <div class="fieldcontain ${hasErrors(bean: sintoma.fechaInicio, field: 'fechaInicio', 'error')} ">
                    <label for="fechaInicio">
                        <g:message code="sintoma.fechaInicio.label" default="Fecha de inicio de los síntomas: " />
                    </label></br>
                    <g:textField name="fechaInicio" readonly="true" value="${sintoma?.fechaInicio}" class="form-control" style="width:35%; display:inline;"/>
                </div>
                <div class="fieldcontain ${hasErrors(bean: sintoma.diasConMalestar, field: 'diasConMalestar', 'error')} ">
                    <label for="diasConMalestar">
                        <g:message code="sintoma.diasConMalestar.label" default="Días con malestar: " />
                    </label></br>
                    <g:textField name="diasConMalestar" readonly="true" value="${sintoma?.diasConMalestar}" class="form-control" style="width:35%; display:inline;"/>
                </div>
                <div class="fieldcontain ${hasErrors(bean: sintoma.descripcion, field: 'descripcion', 'error')} ">
                    <label for="descripcion">
                        <g:message code="sintoma.descripcion.label" default="Descripción: " />
                    </label></br>
                    <g:textField name="descripcion" readonly="true" value="${sintoma?.descripcion}" class="form-control" style="width:35%; display:inline;"/>
                </div>
                <g:form resource="${this.usuario}" method="DELETE">
                    <fieldset>
                        <button type="button" class="btn btn-outline-success" href="${createLink(controller:'sintoma', action:'list')}" style="background-color:#009688; color:white;"><g:link class="edit" action="edit" resource="${this.usuario}" style="text-decoration:none; color:white;"><g:message code="default.button.edit.label" default="Edit" /></g:link></button>
                        <input class="btn btn-outline-success" type="submit" value="${message(code: 'default.button.delete.label', default: 'Eliminar')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: '¿Está seguro de eliminar?')}');" style="background-color:#009688; color:white;"/>
                    </fieldset>
                </g:form>
            </div>
        </div>   
    </body>
</html>
