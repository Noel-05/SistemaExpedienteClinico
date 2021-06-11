<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
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
        
        <div id="create-usuario" class="content scaffold-create" role="main">
            
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
                <g:form resource="${usuario}" method="POST">
                    <fieldset class="form">

                        <!-- Agregar aquí los campos correspondientes del formulario. -->
                        <!-- <f:all bean="usuario"/> -->
                        <div class="fieldcontain ${hasErrors(bean: usuario.username, field: 'username', 'error')} ">
                            <label for="username">
                                <g:message code="usuario.username.label" default="Usuario: " />
                            </label></br>
                            <g:textField name="username" required="true" value="${usuario?.username}" class="form-control" style="width:35%; display:inline;" />
                        </div>

                        <div class="fieldcontain ${hasErrors(bean: usuario.pass, field: 'pass', 'error')} ">
                            <label for="pass">
                                <g:message code="usuario.pass.label" default="Contraseña: " />
                            </label></br>
                            <input type="password" name="pass" class="form-control" value="${usuario?.pass}" style="width:35%; display:inline;" required="True" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*()_.]).{8,}" title="La Contraseña debe contener almenos una Letra Mayúscula, un Dígito, un Número, un Simbolo Especial y un minímo de 8 carácteres." minlength="8"/>
                        </div>
                        
                        <div class="fieldcontain ${hasErrors(bean: usuario.correo, field: 'correo', 'error')} ">
                            <label for="pass">
                                <g:message code="usuario.correo.label" default="Correo: " />
                            </label></br>
                            <input type="email" name="correo" class="form-control" value="${usuario?.correo}" style="width:35%; display:inline;" required="True" />
                        </div>

                        <g:if test="${session.usuario}">
                            
                            <div class="fieldcontain ${hasErrors(bean: usuario.estadoEmpelado, field: 'estadoEmpelado', 'error')} ">
                                <label for="estadoEmpelado">
                                    <g:message code="usuario.estadoEmpelado.label" default="Estado Usuario: " />
                                </label></br>
                                <select name="estadoEmpelado" id="estadoEmpelado" class="form-control col-4 col-sm-4 input-style" title="Seleccione el estado del usuario."  style="display:inline;" required="True">
                                    <option selected value="1">Activo</option>
                                    <option value="2">Bloqueado</option>
                                </select></br>
                                <!-- <g:textField name="estadoEmpelado" value="1" class="form-control" style="width:35%; display:inline;" /> -->
                            </div>

                            </br>
                            <f:field bean="usuario" property="idRol" label="Rol de Usuario"/>
                            
                        </g:if>
                        <g:else>
                            <div class="fieldcontain ${hasErrors(bean: usuario.estadoEmpelado, field: 'estadoEmpelado', 'error')} ">
                                <g:field type="hidden" name="estadoEmpelado" value="1" class="form-control" style="width:35%; display:inline;" />
                            </div>

                            <div class="fieldcontain ${hasErrors(bean: usuario.idRol, field: 'idRol', 'error')} ">
                                <g:field type="hidden" name="idRol" value="23" class="form-control" style="width:35%; display:inline;"/>
                            </div>
                        </g:else>

                    </fieldset></br>

                    <fieldset class="buttons">
                        <g:submitButton name="create" class="btn btn-outline-success" value="${message(code: 'default.button.create.label', default: 'Create')}" style="background-color:#009688; color:white;"/>
                    </fieldset>
                    
                </g:form>
            </div>
            
        </div>
    </body>
</html>