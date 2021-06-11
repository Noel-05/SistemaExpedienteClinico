<!doctype html>
<html>
<head>
    <head>
        <meta name="layout" content="base" />
        <title>Solicitud Desbloqueo</title>
        <asset:stylesheet src="application.css"/>
        <asset:stylesheet rel="stylesheet" href="main2.css"/>
    </head>

    <body>
        <!-- Agregar esto como Título del Template -->
        <font face="small fonts" size="10" color="#049286">
            <h1 align="center" class="form-titulo" style="margin-left: 5px; margin-top:20px; bg-success text-white">Solicitar Desbloqueo de Usuario.</h1>
        </font>
        
        <g:if test="${flash.message}">
            <div class="message" align="center">
                ${flash.message}
            </div>
        </g:if>
        
        <div style="text-align:center; margin: 0 auto;">
            <g:form controller="envioCorreo" action="send">
                
                <div class="fieldcontain">
                    <g:field type="hidden" name="address" placeholder="expediente@seclin.com" value="expedienteclinicomorag@gmail.com" class="form-control" style="width:35%; display:inline;" />
                </div>
                
                <div class="fieldcontain">
                    <g:field type="hidden" name="subject" placeholder="Asunto" value="Solicitud de Desbloqueo " class="form-control" style="width:35%; display:inline;" />
                </div>
                
                <div class="fieldcontain">
                    <g:field type="hidden" name="body" placeholder="Your message" value="Solicito desbloqueo para mi usuario" class="form-control" style="width:35%; display:inline;" />
                </div>

                </br>
                <label>Nombre de Usuario: </label></br>
                <div class="fieldcontain">
                    <g:textField name="usuario" placeholder="Ingrese su usuario." required="" class="form-control" style="width:27%; display:inline;" />
                </div>
                
                </br>
                <label>Correo Peronal: </label></br>
                <div class="fieldcontain">
                    <input type="email" name="correo" class="form-control" style="width:27%; display:inline;" required="True" placeholder="Ingrese su correo."/>
                    <!-- <g:textField name="correo" placeholder="Ingrese su correo." required="" class="form-control" style="width:27%; display:inline;" /> -->
                </div>
                
                </br></br>
                <fieldset>
                  <g:submitButton name="send" value="Enviar" class="btn btn-outline-success" style="background-color:#009688; color:white;"/>
                  <button type="button" class="btn btn-outline-success" href="${createLink(controller:'usuario', action:'index')}" style="background-color:#009688; color:white;"><g:link controller="usuario" action="index" style="text-decoration:none; color:white;"><g:message code="default.list" args="[entityName]" default="Regresar"/></g:link></button>
                </fieldset>
                
            </g:form>
        </div>

    </body>
</html>