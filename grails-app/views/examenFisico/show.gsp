<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'examenFisico.label', default: 'Examen Físico')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <!-- Agregar esto como Título del Template -->
        <font face="small fonts" size="10" color="#049286">
            <h1 align="center" class="form-titulo" style="margin-left: 5px; margin-top:20px; bg-success text-white"><g:message code="default.show.label" args="[entityName]" /></h1>
        </font>
        
        <!-- Agregar esto para el botón Regresar -->
        <div class="container" align="center">
            <button type="button" class="btn btn-outline-success" href="${createLink(controller:'examenFisico', action:'list')}" style="background-color:#009688; color:white;"><g:link class="list" action="index" style="text-decoration:none; color:white;"><g:message code="default.list" args="[entityName]" default="Regresar"/></g:link></button>
        </div></br>

        <div id="show-examenFisico" class="content scaffold-show" role="main">

            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <div style="text-align:center; margin: 0 auto;">
                <div class="fieldcontain ${hasErrors(bean: examenFisico.nombreExamenFisico, field: 'nombreExamenFisico', 'error')} ">
                    <label for="nombreExamenFisico">
                        <g:message code="examenFisico.nombreExamenFisico.label" default="Nombre del examen: " />
                    </label></br>
                    <g:textField name="nombreExamenFisico" readonly="true" value="${examenFisico?.nombreExamenFisico}" class="form-control" style="width:35%; display:inline;"/>
                </div>
                <div class="fieldcontain ${hasErrors(bean: examenFisico.fechaRealizado, field: 'fechaRealizado', 'error')} ">
                <label for="fechaRealizado">
                    <g:message code="examenFisico.fechaRealizado.label" default="Fecha de realización: " />
                </label></br>
                <g:textField name="fechaRealizado" readonly="true" value="${examenFisico?.fechaRealizado}" class="form-control" style="width:35%; display:inline;"/>
                </div>
                <div class="fieldcontain ${hasErrors(bean: examenFisico.comentarios, field: 'comentarios', 'error')} ">
                <label for="comentarios">
                    <g:message code="examenFisico.comentarios.label" default="Comentarios: " />
                </label></br>
                <g:textField name="comentarios" readonly="true" value="${examenFisico?.comentarios}" class="form-control" style="width:35%; display:inline;"/>
            </div>
            <%-- <f:display bean="examenFisico" /> --%>

            <g:form resource="${this.examenFisico}" method="DELETE">
                <fieldset class="buttons">
                    <button type="button" class="btn btn-outline-success" href="${createLink(controller:'examenFisico', action:'list')}" style="background-color:#009688; color:white;"><g:link class="edit" action="edit" resource="${this.examenFisico}" style="text-decoration:none; color:white;"><g:message code="default.button.edit.label" default="Edit" /></g:link></button>
                    <input class="btn btn-outline-success" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" style="background-color:#009688; color:white;"/>
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
