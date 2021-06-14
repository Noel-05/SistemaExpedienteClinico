<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'examenClinico.label', default: 'Examen Clínico')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <!-- Agregar esto como Título del Template -->
        <font face="small fonts" size="10" color="#049286">
            <h1 align="center" class="form-titulo" style="margin-left: 5px; margin-top:20px; bg-success text-white"><g:message code="default.show.label" args="[entityName]" /></h1>
        </font>
        
        <!-- Agregar esto para el botón Regresar -->
        <div class="container" align="center">
            <button type="button" class="btn btn-outline-success" href="${createLink(controller:'examenClinico', action:'list')}" style="background-color:#009688; color:white;"><g:link class="list" action="index" style="text-decoration:none; color:white;"><g:message code="default.list" args="[entityName]" default="Regresar"/></g:link></button>
        </div>
        
        </br>
        <div id="show-examenClinico" class="content scaffold-show" role="main">
            
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <div style="text-align:center; margin: 0 auto;">
            <%-- <f:display bean="examenClinico" /> --%>
            <div class="fieldcontain ${hasErrors(bean: examenClinico.idTipoExamen, field: 'idTipoExamen', 'error')} ">
                <label for="idTipoExamen">
                    <g:message code="examenClinico.idTipoExamen.label" default="Tipo de examen: " />
                </label></br>
                <g:textField name="idTipoExamen" readonly="true" value="${examenClinico?.idTipoExamen}" class="form-control" style="width:35%; display:inline;"/>
            </div>
            <div class="fieldcontain ${hasErrors(bean: examenClinico.nombreExamenClinico, field: 'nombreExamenClinico', 'error')} ">
                <label for="nombreExamenClinico">
                    <g:message code="examenClinico.nombreExamenClinico.label" default="Nombre del examen: " />
                </label></br>
                <g:textField name="nombreExamenClinico" readonly="true" value="${examenClinico?.nombreExamenClinico}" class="form-control" style="width:35%; display:inline;"/>
            </div>
            <div class="fieldcontain ${hasErrors(bean: examenClinico.fechaRealizado, field: 'fechaRealizado', 'error')} ">
                <label for="fechaRealizado">
                    <g:message code="examenClinico.fechaRealizado.label" default="Fecha de realización: " />
                </label></br>
                <g:textField name="fechaRealizado" readonly="true" value="${examenClinico?.fechaRealizado}" class="form-control" style="width:35%; display:inline;"/>
            </div>
            <div class="fieldcontain ${hasErrors(bean: examenClinico.comentarios, field: 'comentarios', 'error')} ">
                <label for="comentarios">
                    <g:message code="examenClinico.comentarios.label" default="Comentarios: " />
                </label></br>
                <g:textField name="comentarios" readonly="true" value="${examenClinico?.comentarios}" class="form-control" style="width:35%; display:inline;"/>
            </div>
            <div class="fieldcontain ${hasErrors(bean: examenClinico.idCita, field: 'idCita', 'error')} ">    
                <label for="idCita">
                    <g:message code="examenClinico.idCita.label" default="Nombre del paciente: " />
                </label></br>
                <g:textField name="idCita" readonly="true" value="${examenClinico?.idCita}" class="form-control" style="width:35%; display:inline;"/>
            </div></br>
            <g:form resource="${this.examenClinico}" method="DELETE">
                <fieldset class="buttons">
                    <button type="button" class="btn btn-outline-success" href="${createLink(controller:'examenClinico', action:'list')}" style="background-color:#009688; color:white;"><g:link class="edit" action="edit" resource="${this.examenClinico}" style="text-decoration:none; color:white;"><g:message code="default.button.edit.label" default="Edit" /></g:link></button>
                    <input class="btn btn-outline-success" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" style="background-color:#009688; color:white;"/>
                </fieldset>
            </g:form>
        </div>
        </div>
    </body>
</html>
