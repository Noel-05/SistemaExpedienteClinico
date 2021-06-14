<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'contacto.label', default: 'Contacto')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
    <!-- Agregar esto como Título del Template -->
        <font face="small fonts" size="10" color="#049286">
            <h1 align="center" class="form-titulo" style="margin-left: 5px; margin-top:20px; bg-success text-white"><g:message code="default.show.label" args="[entityName]" /></h1>
        </font>
        
        <!-- Agregar esto para el botón Regresar -->
        <div class="container" align="center">
            <button type="button" class="btn btn-outline-success" href="${createLink(controller:'cita', action:'list')}" style="background-color:#009688; color:white;"><g:link class="list" action="index" style="text-decoration:none; color:white;"><g:message code="default.list" args="[entityName]" default="Regresar"/></g:link></button>
        </div>
        <div id="show-contacto" class="row align-items-center justify-content-center" role="main">
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <%-- <f:display bean="contacto" /> --%>
            <div class="col-lg-6 col-md-8">
        <div  style="text-align:center; margin: 0 auto;">
            
            <div class="card-body">
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <th scope="row"> Telefono:</th>
                            <td>${contacto?.telefono}</td>
                        </tr>
                        <tr>
                            <th scope="row">Correo electronico:</th>
                            <td>${contacto?.correo}</td>
                        </tr>
                    </tbody>
                </table>
                <g:form resource="${this.contacto}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="btn btn-success" action="edit" style="background-color:#009688; color:white;" resource="${this.contacto}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input  class="delete btn btn-danger" style="background-color:#009688; color:white;" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
            </div>
               
        </div>
    </div>
            
        </div>
    </body>
</html>
