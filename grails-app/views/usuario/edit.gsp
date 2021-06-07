<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    
    <body>
        <!-- Agregar esto como Título del Template -->
        <font face="small fonts" size="10" color="#049286">
            <h1 align="center" class="form-titulo" style="margin-left: 5px; margin-top:20px; bg-success text-white"><g:message code="default.edit.label" args="[entityName]" /></h1>
        </font>
        
        <!-- Agregar esto para el botón Regresar -->
        <div class="container" align="center">
            <button type="button" class="btn btn-outline-success" href="${createLink(controller:'usuario', action:'list')}" style="background-color:#009688; color:white;"><g:link class="list" action="index" style="text-decoration:none; color:white;"><g:message code="default.list" args="[entityName]" default="Regresar"/></g:link></button>
        </div>

        </br>
        
        <div id="edit-usuario" class="content scaffold-edit" role="main">
            
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            
            <g:hasErrors bean="${this.usuario}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.usuario}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            
            <div style="text-align:center; margin: 0 auto;">
                <g:form resource="${this.usuario}" method="PUT">
                    <g:hiddenField name="version" value="${this.usuario?.version}" />
                    <fieldset class="form">

                        <!-- <f:all bean="usuario"/> -->

                        <div class="fieldcontain ${hasErrors(bean: usuario.username, field: 'username', 'error')} ">
                            <label for="username">
                                <g:message code="usuario.username.label" default="Usuario: " />
                            </label></br>
                            <g:textField name="username" required="true" value="${usuario?.username}" class="form-control" style="width:35%; display:inline;"/>
                        </div>

                        <div class="fieldcontain ${hasErrors(bean: usuario.pass, field: 'pass', 'error')} ">
                            <label for="pass">
                                <g:message code="usuario.pass.label" default="Contraseña: " />
                            </label></br>
                            <g:passwordField name="pass" required="true" value="${usuario?.pass}" class="form-control" style="width:35%; display:inline;"/>
                        </div>

                        <div class="fieldcontain ${hasErrors(bean: usuario.estadoEmpelado, field: 'estadoEmpelado', 'error')} ">
                            <label for="estadoEmpelado">
                                <g:message code="usuario.estadoEmpelado.label" default="Estado Usuario: " />
                            </label></br>
                            <g:field type="number" name="estadoEmpelado" value="${usuario?.estadoEmpelado}" class="form-control" style="width:35%; display:inline;" />
                        </div>

                        </br>
                        
                        <f:field bean="usuario" property="idRol" label="Rol de Usuario"/>
                        </fieldset></br>
                    
                    <fieldset class="buttons">
                        <input type="submit" class="btn btn-outline-success" value="${message(code: 'default.button.update.label', default: 'Update')}" style="background-color:#009688; color:white;"/>
                    </fieldset>
                
                </g:form>
            </div>
            
        </div>
    </body>
</html>
