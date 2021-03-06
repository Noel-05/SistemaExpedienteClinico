<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        <asset:stylesheet src="application.css"/>
        <asset:stylesheet rel="stylesheet" href="main2.css"/>
    </head>
    
    <body>
        </br>
        
        <!-- Agregar esto como Título del Template -->
        <font face="small fonts" size="10" color="#049286">
            <h1 align="center" class="form-titulo" style="margin-left: 5px; margin-top:20px; bg-success text-white">Iniciar Sesi&oacute;n.</h1>
        </font>
        
        <g:if test="${flash.message}">
            <div class="message" align="center">
                ${flash.message}
            </div>
        </g:if>
        
        <g:form controller="usuario" action="validarLogin">
            <div style="text-align:center; margin: 0 auto;">
                </br>
                <label>Usuario: </label></br>
                <input type="text" name="username" class="form-control" style="width:23%; display:inline;" required="True"/>
                
                </br></br>
                <label>Password: </label></br>
                <input type="password" name="pass" class="form-control" style="width:23%; display:inline;" required="True" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*()_.]).{8,}" title="La Contraseña debe contener almenos una Letra Mayúscula, un Dígito, un Número, un Simbolo Especial y un minímo de 8 carácteres." minlength="8"/>
                
                </br></br>
                <input type="submit" value="login" class="btn btn-outline-success" style="background-color:#009688; color:white;"/>
            </div>
        </g:form>
        
        </br>
        <div style="text-align:center; margin: 0 auto;">
            ¿No tienes cuenta?, puedes crear una aqu&iacute;: 
            <g:link controller="usuario" action="usuariologin">
                Crear Cuenta.
            </g:link>
        </div>
        
        </br></br>
        <g:if test="${flash.message == 'Su Usuario se encuentra Bloqueado. Puede solicitar su desbloqueo en el apartado inferior.'}">
            <div style="text-align:center; margin: 0 auto;">
                <button type="button" class="btn btn-outline-success" href="${createLink(controller:'envioCorreo', action:'index')}" style="background-color:#009688; color:white;"><g:link controller="envioCorreo" action="index" style="text-decoration:none; color:white;"><g:message code="default.list" args="[entityName]" default="Solicitar Desbloqueo"/></g:link></button>
                <!-- <g:link controller="envioCorreo" action="index">
                    Solicitar Desbloqueo.
                </g:link> -->
            </div>
        </g:if>
        
        </br>
        
    </body>
</html>
