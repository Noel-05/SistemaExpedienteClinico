<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'examenClinico.label', default: 'Examen Clínico')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>

    <body>
        <!-- Agregar esto como Título del Template -->
        <font face="small fonts" size="10" color="#049286">
            <h1 align="center" class="form-titulo" style="margin-left: 5px; margin-top:20px; bg-success text-white"><g:message code="default.create.label" args="[entityName]" /></h1>
        </font>

        <!-- Agregar esto para el botón Regresar -->
        <div class="container" align="center">
            <button type="button" class="btn btn-outline-success" href="${createLink(controller:'examenClinico', action:'list')}" style="background-color:#009688; color:white;"><g:link class="list" action="index" style="text-decoration:none; color:white;"><g:message code="default.list" args="[entityName]" default="Regresar"/></g:link></button>
        </div>
        </br>
        <div id="create-examenClinico" class="content scaffold-create" role="main">
        
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>

            <g:hasErrors bean="${this.examenClinico}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.examenClinico}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <div style="text-align:center; margin: 0 auto;">
                <g:form resource="${this.examenClinico}" method="POST">
                    <fieldset class="form">
                        <%-- <f:all bean="examenClinico"/> --%>
                        <f:field bean="examenClinico" property="idTipoExamen" label="Tipo de examen:"/></br>
                        <div class="fieldcontain ${hasErrors(bean: examenClinico.nombreExamenClinico, field: 'nombreExamenClinico', 'error')} ">
                            <label for="nombreExamenClinico">
                                <g:message code="examenClinico.nombreExamenClinico.label" default="Nombre del examen: " />
                            </label></br>
                            <g:textField name="nombreExamenClinico" required="true" value="${this.examenClinico.nombreExamenClinico}" class="form-control" style="width:35%; display:inline;" />
                        </div>
                        <div class="fieldcontain ${hasErrors(bean: examenClinico.fechaRealizado, field: 'fechaRealizado', 'error')} ">
                            <label for="fechaRealizado">
                                <g:message code="examenClinico.fechaRealizado.label" default="Fecha de realización: " />
                            </label></br>
                            <g:field type="date" name="fechaRealizado" required="true" value="${this.examenClinico.fechaRealizado}" class="form-control" style="width:35%; display:inline;" />
                        </div>
                        <div class="fieldcontain ${hasErrors(bean: examenClinico.comentarios, field: 'comentarios', 'error')} ">
                            <label for="comentarios">
                                <g:message code="examenClinico.comentarios.label" default="Comentarios: " />
                            </label></br>
                            <g:textField name="comentarios" required="true" value="${this.examenClinico.comentarios}" class="form-control" style="width:35%; display:inline;" />
                        </div>
                        <f:field bean="examenClinico" property="idCita" label="Nombre del paciente:"/></br>
                    </fieldset>
                    <fieldset class="buttons">
                    <g:submitButton name="create" class="btn btn-outline-success" value="${message(code: 'default.button.create.label', default: 'Create')}" style="background-color:#009688; color:white;"/>
                </fieldset>
                </g:form>
            </div>
        </div>
    </body>
</html>
