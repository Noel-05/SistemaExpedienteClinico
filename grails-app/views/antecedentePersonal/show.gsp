<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'antecedentePersonal.label', default: 'AntecedentePersonal')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div id="show-antecedentePersonal" class="content scaffold-show" role="main">
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
                            <th scope="row"> Sintomas:</th>
                            <td>${antecedentePersonal?.sintoma}</td>
                        </tr>
                        <tr>
                            <th scope="row">Fecha de inicio de los sintomas:</th>
                            <td>${antecedentePersonal?.iniciosSintoma}</td>
                        </tr>
                        <tr>
                            <th scope="row">Automedicacion:</th>
                            <td>${antecedentePersonal?.automedicacion}</td>
                        </tr>
                    </tbody>
                </table>

            </div>
            <div class="card-footer">
            <g:link style="background-color:#009688; color:white;" class="btn btn-info float-left" controller="antecedentePersonal" action="index" id="${antecedentePersonal?.idExpediente.id}">Regresar</g:link>
            </div>
        </div>
    </div>
        </div>
    </body>
</html>
