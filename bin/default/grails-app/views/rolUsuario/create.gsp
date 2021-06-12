<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'rolUsuario.label', default: 'RolUsuario')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    
    <body>
        <!-- Agregar esto como Título del Template -->
        <font face="small fonts" size="10" color="#049286">
            <h1 align="center" class="form-titulo" style="margin-left: 5px; margin-top:20px; bg-success text-white"><g:message code="default.create.label" args="[entityName]" /></h1>
        </font>

        <!-- Agregar esto para el botón Regresar -->
        <div class="container" align="center">
            <button type="button" class="btn btn-outline-success" href="${createLink(controller:'rolUsuario', action:'list')}" style="background-color:#009688; color:white;"><g:link class="list" action="index" style="text-decoration:none; color:white;"><g:message code="default.list" args="[entityName]" default="Regresar"/></g:link></button>
        </div>

        </br>
        
        <div id="create-rolUsuario" class="content scaffold-create" role="main">
        
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            
            <g:hasErrors bean="${this.rolUsuario}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${this.rolUsuario}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                    </g:eachError>
                </ul>
            </g:hasErrors>
            
            <div style="text-align:center; margin: 0 auto;">
                <g:form resource="${this.rolUsuario}" method="POST">
                    <fieldset class="form">
                        
                        <!-- Agregar aquí los campos correspondientes del formulario. -->
                        <!-- <f:all bean="rolUsuario"/> -->
                        <div class="fieldcontain ${hasErrors(bean: rolUsuario.nombreRol, field: 'nombreRol', 'error')} ">
                            <label for="nombreRol">
                                <g:message code="rolUsuario.nombreRol.label" default="Nombre de Rol: " />
                            </label></br>
                            <g:textField name="nombreRol" required="true" value="${rolUsuario?.nombreRol}" class="form-control" style="width:35%; display:inline;" />
                        </div>
                        
                        <div class="fieldcontain ${hasErrors(bean: rolUsuario.estadoEmpleado, field: 'estadoEmpleado', 'error')} ">
                            <label for="estadoEmpleado">
                                <g:message code="rolUsuario.estadoEmpleado.label" default="Estado del Rol: " />
                            </label></br>
                            <select name="estadoEmpleado" id="estadoEmpleado" class="form-control col-4 col-sm-4 input-style" title="Seleccione el estado del rol."  style="display:inline;" required="True">
                                <option selected value="1">Activo</option>
                                <option value="2">Desactivo</option>
                            </select></br>
                            <!-- <g:textField name="estadoEmpleado" value="1" class="form-control" style="width:35%; display:inline;" /> -->
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
