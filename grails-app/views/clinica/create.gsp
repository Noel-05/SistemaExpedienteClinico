<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'clinica.label', default: 'Clinica')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <!-- Agregar esto como Título del Template -->
        <font face="small fonts" size="10" color="#049286">
            <h1 align="center" class="form-titulo" style="margin-left: 5px; margin-top:20px; bg-success text-white"><g:message code="default.create.label" args="[entityName]" /></h1>
        </font>

        <!-- Agregar esto para el botón Regresar -->
        <div class="container" align="center">
            <button type="button" class="btn btn-outline-success" href="${createLink(controller:'usuario', action:'list')}" style="background-color:#009688; color:white;"><g:link class="list" action="index" style="text-decoration:none; color:white;"><g:message code="default.list" args="[entityName]" default="Regresar"/></g:link></button>
        </div>
        </br>
        <div id="create-clinica" class="content scaffold-create" role="main">
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>

            <g:hasErrors bean="${this.clinica}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.clinica}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
                <div style="text-align:center; margin: 0 auto;">
                 
            <g:form resource="${this.clinica}" method="POST">
                <fieldset class="form">
                    <%-- <f:all bean="sintoma"/> --%>
                    <div class="fieldcontain ${hasErrors(bean: clinica.nombre, field: 'nombre', 'error')} ">
                            <label for="clinica">
                                <g:message code="clinica.nombre.label" default="Nombre de la clinica: "/>
                            </label></br>
                            <f:field bean="clinica" property="nombre"/>
                    </div>
                    <div class="fieldcontain ${hasErrors(bean: clinica.direccion, field: 'idConsulta', 'error')} ">
                            <label for="direccion">
                                <g:message code="direccion.direccion.label" default="Direccion: "/>
                            </label></br>
                            <f:field bean="clinica" property="direccion"/>
                    </div>
                    <div class="fieldcontain ${hasErrors(bean: clinica.inicioOperaciones, field: 'inicioOperaciones', 'error')} ">
                            <label for="fechaInicio">
                                <g:message code="clinica.fechaInicio.label" default="Fecha Inicio: " />
                            </label></br>
                            <g:field type="date" name="fechaInicio" required="true" value="${this.clinica.inicioOperaciones}" class="form-control" style="width:35%; display:inline;" />
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
