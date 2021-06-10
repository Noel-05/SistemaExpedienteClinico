<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'antecedenteFamiliar.label', default: 'AntecedenteFamiliar')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div id="show-antecedenteFamiliar" class="content scaffold-show" role="base">
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
             <div class="row align-items-center justify-content-center">
    <div class="col-lg-6 col-md-8">
        <div class="card">
            <div class="card-header">
            <button class="btn btn-lg btn-link navbar-left" aria-expanded="true">
                  Datos generales
                </button>
            </div>
            <div class="card-body">
                <table class="table">
                    <tbody>
                        <tr>
                            <th scope="row"> Descripcion:</th>
                            <td>${antecedenteFamiliar?.descripcion}</td>
                        </tr>
                        <tr>
                            <th scope="row">Relacion:</th>
                            <td>${antecedenteFamiliar?.relacionAntecedenteFamiliar}</td>
                        </tr>
                    </tbody>
                </table>

            </div>
                <g:form resource="${this.antecedenteFamiliar}" method="DELETE">
                <div class="card-footer">
                    <g:link style="background-color:#009688; color:white;" class="btn btn-info float-left" controller="expediente" action="show" id="${antecedenteFamiliar?.idExpediente.id}">Regresar</g:link>
                    <%-- <button style="background-color:#dc3545; color:white;" class="btn btn-danger float-rigth" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');">Eliminar</button> --%>
                </div>
            </g:form>
        </div>
    </div>

</div>
        </div>
    </body>
</html>
