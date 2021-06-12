<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'clinica.label', default: 'Clinica')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <!-- Agregar esto como Título del Template -->
        <font face="small fonts" size="10" color="#049286">
            <h1 align="center" class="form-titulo" style="margin-left: 5px; margin-top:20px; bg-success text-white"><g:message code="default.edit.label" args="[entityName]" /></h1>
        </font>
        
        <!-- Agregar esto para el botón Regresar -->
        <div class="container" align="center">
            <button type="button" class="btn btn-outline-success" href="${createLink(controller:'sintoma', action:'list')}" style="background-color:#009688; color:white;"><g:link class="list" action="index" style="text-decoration:none; color:white;"><g:message code="default.list" args="[entityName]" default="Regresar"/></g:link></button>
        </div>

        <div id="edit-sintoma" class="content scaffold-edit" role="main">

            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>

            <g:hasErrors bean="${this.clinica}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.clinica}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <div id="list-sintoma" class="content scaffold-list" role="main">
            <div style="text-align:center; margin: 0 auto;">
                <g:form resource="${this.clinica}" method="PUT">
                   
                    <fieldset class="form">
                        <%-- <f:all bean="sintoma"/> --%>
                        <div class="fieldcontain ${hasErrors(bean: clinica.id, field: 'id', 'error')} ">
                            <label for="idClinica">
                                <g:message code="clinica.id.label" default="Nombre: " />
                            </label></br>
                            <g:textField name="idConsulta" required="false" value="${clinica?.nombre}" class="form-control" style="width:35%; display:inline;"/>
                        </div>
                         <div class="fieldcontain ${hasErrors(bean: clinica.id, field: 'id', 'error')} ">
                            <label for="idClinica">
                                <g:message code="clinica.direccion.label" default="Direccion: " />
                            </label></br>
                            <g:textField name="idConsulta" required="false" value="${clinica?.direccion}" class="form-control" style="width:35%; display:inline;"/>
                        </div>
                         <div class="fieldcontain ${hasErrors(bean: clinica.id, field: 'id', 'error')} ">
                          <label for="inicioOperaciones">
                             <g:message code="clinica.inicioOperaciones.label" default="inicioOperaciones: " />
                             </label>
                            <div class="col-8">
                                <input value="${clinica?.inicioOperaciones}" id="inicioOperaciones" name="inicioOperaciones" placeholder="Elegir fecha de creación de la clinica." type="date" required="required" class="form-control">
                            </div>
                    </fieldset>
                    </br>
                    <fieldset class="buttons">
                        <input type="submit" class="btn btn-outline-success" value="${message(code: 'default.button.update.label', default: 'Update')}" style="background-color:#009688; color:white;"/>
                    </fieldset>
                </g:form>
            </div>
            </div>


    </body>
</html>
