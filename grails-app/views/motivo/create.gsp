<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'motivo.label', default: 'Motivo')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    
    <body>
        <!-- Agregar esto como Título del Template -->
        <font face="small fonts" size="10" color="#049286">
            <h1 align="center" class="form-titulo" style="margin-left: 5px; margin-top:20px; bg-success text-white"><g:message code="default.create.label" args="[entityName]" /></h1>
        </font>

        <!-- Agregar esto para el botón Regresar -->
        <div class="container" align="center">
            <button type="button" class="btn btn-outline-success" href="${createLink(controller:'motivo', action:'list')}" style="background-color:#009688; color:white;"><g:link class="list" action="index" style="text-decoration:none; color:white;"><g:message code="default.list" args="[entityName]" default="Regresar"/></g:link></button>
        </div>

        </br>
        
        <div id="create-motivo" class="content scaffold-create" role="main">
            
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            
            <g:hasErrors bean="${this.motivo}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${this.motivo}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                    </g:eachError>
                </ul>
            </g:hasErrors>
            
            <div style="text-align:center; margin: 0 auto;">
                <g:form resource="${this.motivo}" method="POST">
                    <fieldset class="form">
                        <!-- Agregar aquí los campos correspondientes del formulario. -->
                        <!-- <f:all bean="motivo"/> -->
                        <div class="fieldcontain ${hasErrors(bean: motivo.razonMotivo, field: 'razonMotivo', 'error')} ">
                            <label for="razonMotivo">
                                <g:message code="motivo.razonMotivo.label" default="Razón de Motivo: " />
                            </label></br>
                            <g:textField name="razonMotivo" required="true" value="${motivo?.razonMotivo}" class="form-control" style="width:35%; display:inline;" />
                        </div>

                    </fieldset></br>
                    
                    <fieldset class="buttons">
                        <g:submitButton name="create" class="btn btn-outline-success" value="${message(code: 'default.button.create.label', default: 'Create')}" style="background-color:#009688; color:white;"/>
                    </fieldset>
                </g:form>
            </div>
        </div>
    </body>
</html>
