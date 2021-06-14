<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'examenFisico.label', default: 'Examen Fisico')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>

    <body>
        <!-- Agregar esto como Título del Template -->
        <font face="small fonts" size="10" color="#049286">
            <h1 align="center" class="form-titulo" style="margin-left: 5px; margin-top:20px; bg-success text-white"><g:message code="default.create.label" args="[entityName]" /></h1>
        </font>

        <!-- Agregar esto para el botón Regresar -->
        <div class="container" align="center">
            <button type="button" class="btn btn-outline-success" href="${createLink(controller:'examenFisico', action:'list')}" style="background-color:#009688; color:white;"><g:link class="list" action="index" style="text-decoration:none; color:white;"><g:message code="default.list" args="[entityName]" default="Regresar"/></g:link></button>
        </div>
        </br>

        <div id="create-examenFisico" class="content scaffold-create" role="main">

            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>

            <g:hasErrors bean="${this.examenFisico}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.examenFisico}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <div style="text-align:center; margin: 0 auto;">
                <g:form resource="${this.examenFisico}" method="POST">
                    <fieldset class="form">
                        <%-- <f:all bean="examenFisico"/> --%>
                        <div class="fieldcontain ${hasErrors(bean: examenFisico.nombreExamenFisico, field: 'nombreExamenFisico', 'error')} ">
                            <label for="nombreExamenFisico">
                                <g:message code="examenFisico.nombreExamenFisico.label" default="Nombre del examen: " />
                            </label></br>
                            <g:textField name="nombreExamenFisico" required="true" value="${this.examenFisico.nombreExamenFisico}" class="form-control" style="width:35%; display:inline;" />
                        </div>
                        <div class="fieldcontain ${hasErrors(bean: examenFisico.fechaRealizado, field: 'fechaRealizado', 'error')} ">
                            <label for="fechaRealizado">
                                <g:message code="examenFisico.fechaRealizado.label" default="Fecha de realización: " />
                            </label></br>
                            <g:field type="date" name="fechaRealizado" required="true" value="${this.examenFisico.fechaRealizado}" class="form-control" style="width:35%; display:inline;" />
                        </div>
                        <div class="fieldcontain ${hasErrors(bean: examenFisico.comentarios, field: 'comentarios', 'error')} ">
                            <label for="comentarios">
                                <g:message code="examenFisico.comentarios.label" default="Comentarios: " />
                            </label></br>
                            <g:textField name="comentarios" required="true" value="${this.examenFisico.comentarios}" class="form-control" style="width:35%; display:inline;" />
                        </div>
                    </fieldset>
                        
                    <fieldset class="buttons">
                        <g:submitButton name="create" class="btn btn-outline-success" value="${message(code: 'default.button.create.label', default: 'Create')}" style="background-color:#009688; color:white;"/>
                    </fieldset>
                </g:form>
            </div>   
        </div>
    </body>
</html>
