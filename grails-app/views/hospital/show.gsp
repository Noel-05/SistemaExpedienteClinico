<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'hospital.label', default: 'Hospital')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>


          <!-- Agregar esto como Título del Template -->
        <font face="small fonts" size="10" color="#049286">
            <h1 align="center" class="form-titulo" style="margin-left: 5px; margin-top:20px; bg-success text-white"><g:message code="default.show.label" args="[entityName]" /></h1>
        </font>
        
        <!-- Agregar esto para el botón Regresar -->
        <div class="container" align="center">
            <button type="button" class="btn btn-outline-success" href="${createLink(controller:'sintoma', action:'list')}" style="background-color:#009688; color:white;"><g:link class="list" action="index" style="text-decoration:none; color:white;"><g:message code="default.list" args="[entityName]" default="Regresar"/></g:link></button>
        </div>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <%-- <f:display bean="sintoma" /> --%>
            <div style="text-align:center; margin: 0 auto;">
                <div class="fieldcontain  ">
                    <label for="nombre">
                        <g:message code="clinica.idConsulta.label" default="Nombre del hospital: " />
                    </label></br>
                    <g:textField name="nombre" readonly="true" value="${hospital?.nombre}" class="form-control" style="width:35%; display:inline;"/>
                </div>
               <div class="fieldcontain  ">
                    <label for="nombre">
                        <g:message code="clinica.idConsulta.label" default="Nombre de clinica: " />
                    </label></br>
                    <g:textField name="nombre" readonly="true" value="${hospital?.clinica.nombre}" class="form-control" style="width:35%; display:inline;"/>
                </div>
                <g:form resource="${this.clinica}" method="DELETE">
                    <fieldset>
                        <button type="button" class="btn btn-outline-success" href="${createLink(controller:'hospital', action:'list')}" style="background-color:#009688; color:white;"><g:link class="edit" action="edit" resource="${this.hospital}" style="text-decoration:none; color:white;"><g:message code="default.button.edit.label" default="Edit" /></g:link></button>
                        <input class="btn btn-outline-success" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: '¿Está seguro de eliminar?')}');" style="background-color:#009688; color:white;"/>
                    </fieldset>
                </g:form>
            </div>

        
    </body>
</html>
