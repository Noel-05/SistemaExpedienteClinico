<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'motivo.label', default: 'Motivo')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
        <asset:stylesheet src="application.css"/>
        <asset:stylesheet rel="stylesheet" href="main2.css"/>
    </head>
    
    <body>
        <!-- Agregar esto como Título del Template -->
        <font face="small fonts" size="10" color="#049286">
            <h1 align="center" class="form-titulo" style="margin-left: 5px; margin-top:20px; bg-success text-white"><g:message code="default.show.label" args="[entityName]" /></h1>
        </font>
        
        <!-- Agregar esto para el botón Regresar -->
        <div class="container" align="center">
            <button type="button" class="btn btn-outline-success" href="${createLink(controller:'motivo', action:'list')}" style="background-color:#009688; color:white;"><g:link class="list" action="index" style="text-decoration:none; color:white;"><g:message code="default.list" args="[entityName]" default="Regresar"/></g:link></button>
        </div>
        
        </br>
        
        <div id="show-motivo" class="content scaffold-show" role="main">
            
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            
            <div style="text-align:center; margin: 0 auto;">
                
                <!-- <f:display bean="motivo" /> -->
            
                <div class="fieldcontain ${hasErrors(bean: motivo.razonMotivo, field: 'razonMotivo', 'error')} ">
                    <label for="razonMotivo" style="display:inline; text-align:center; margin: 0 auto;">
                        <g:message code="motivo.razonMotivo.label" default="Razón de Motivo: " />
                    </label></br>
                    <g:textField name="razonMotivo" readonly="true" value="${motivo?.razonMotivo}" class="form-control" style="width:35%; display:inline;"/>
                </div>

                <g:form resource="${this.motivo}" method="DELETE">
                    <fieldset>
                        <button type="button" class="btn btn-outline-success" href="${createLink(controller:'motivo', action:'list')}" style="background-color:#009688; color:white;"><g:link class="edit" action="edit" resource="${this.motivo}" style="text-decoration:none; color:white;"><g:message code="default.button.edit.label" default="Edit" /></g:link></button>
                        
                        <input class="btn btn-outline-success" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" style="background-color:#009688; color:white;"/>
                    </fieldset>
                </g:form>
             
            </div>
            
        </div>
    </body>
</html>
