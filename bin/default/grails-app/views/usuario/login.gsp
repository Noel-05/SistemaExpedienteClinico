<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    
    <body>
        </br>
        <h1>Ejemplo Login</h1>
        
        <g:if test="${flash.message}">
            <div class="message">
                ${flash.message}
            </div>
        </g:if>
        
        <g:if test="${session.usuario}">
            </br>
            <h2 class="text-titles">Usuario Activo : ${session.usuario} </h2>
            </br>
        </g:if>
        </br>
        
        <g:form controller="usuario" action="validarLogin">
            <div>
                <label>Usuario: </label>
                <input type="text" name="username"/>
                <label>Password: </label>
                <input type="password" name="pass"/>
                <label>&nbsp; </label>
                <input type="submit" value="login"/>
            </div>
        </g:form>
        
    </body>
</html>
