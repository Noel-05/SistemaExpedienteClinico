<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'rolUsuario.label', default: 'RolUsuario')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    
    <body>
        <!-- Agregar esto como Título del Template -->
        <font face="small fonts" size="10" color="#049286">
            <h1 align="center" class="form-titulo" style="margin-left: 5px; margin-top:20px; bg-success text-white"><g:message code="default.show.label" args="[entityName]" /></h1>
        </font>
        
        <!-- Agregar esto para el botón Regresar -->
        <div class="container" align="center">
            <button type="button" class="btn btn-outline-success" href="${createLink(controller:'rolUsuario', action:'list')}" style="background-color:#009688; color:white;"><g:link class="list" action="index" style="text-decoration:none; color:white;"><g:message code="default.list" args="[entityName]" default="Regresar"/></g:link></button>
        </div>
        
        </br>
        
        <div id="show-rolUsuario" class="content scaffold-show" role="main">
            
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            
            <div style="text-align:center; margin: 0 auto;">
                
                <!-- <f:display bean="rolUsuario" /> -->
            
                <div class="fieldcontain ${hasErrors(bean: rolUsuario.nombreRol, field: 'nombreRol', 'error')} ">
                    <label for="nombreRol">
                        <g:message code="rolUsuario.nombreRol.label" default="Nombre de Rol: " />
                    </label></br>
                    <g:textField name="nombreRol" readonly="true" value="${rolUsuario?.nombreRol}" class="form-control" style="width:35%; display:inline;"/>
                </div>

                <div class="fieldcontain ${hasErrors(bean: rolUsuario.estadoEmpleado, field: 'estadoEmpleado', 'error')} ">
                    <label for="estadoEmpleado">
                        <g:message code="rolUsuario.estadoEmpleado.label" default="Estado del Rol: " />
                    </label></br>
                    <g:field type="number" name="estadoEmpleado" readonly="true" value="${rolUsuario?.estadoEmpleado}" class="form-control" style="width:35%; display:inline;" />
                </div>
            
                <g:form resource="${this.rolUsuario}" method="DELETE">
                    <fieldset class="buttons">
                        <button type="button" class="btn btn-outline-success" href="${createLink(controller:'rolUsuario', action:'list')}" style="background-color:#009688; color:white;"><g:link class="edit" action="edit" resource="${this.usuario}" style="text-decoration:none; color:white;"><g:message code="default.button.edit.label" default="Edit" /></g:link></button>
                        
                        <input class="btn btn-outline-success" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" style="background-color:#009688; color:white;"/>
                    </fieldset>
                </g:form>
                    
            </div>
            
        </div>
    </body>
</html>
