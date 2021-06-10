<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'persona.label', default: 'Persona')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="row align-items-center justify-content-center">
    <div class="col-lg-6 col-md-8">
        <div class="card">
            <div class="card-header">
                <button class="btn btn-lg btn-link navbar-left" aria-expanded="true">
                    Datos generales de <strong> ${persona?.id} </strong>
                </button>
            </div>
            <div class="card-body">
                <table class="table">
                    <tbody>
                        <tr>
                            <th scope="row"> Nombres:</th>
                            <td>${persona?.nombres}</td>
                        </tr>
                        <tr>
                            <th scope="row">Apellidos:</th>
                            <td>${persona?.apellidos}</td>
                        </tr>
                        <tr>
                            <th scope="row">Documento de identidad:</th>
                            <td>${persona?.dui}</td>
                        </tr>
                        <tr>
                            <th scope="row">Estado Civil:</th>
                            <g:if test="${ persona?.estadoCivil==0 }">
                               <td>Casado/a</td>
                            </g:if>
                            <g:elseif test="${ persona?.estadoCivil==1 }">
                               <td>Soltero/a</td>
                            </g:elseif>
                            <g:elseif test="${ persona?.estadoCivil==2 }">
                               <td>Viudo/a</td>
                            </g:elseif>
                            <g:elseif test="${ persona?.estadoCivil==3 }">
                               <td>Otro</td>
                            </g:elseif>
                        </tr>
                        <tr>
                            <th scope="row">G&eacute;nero:</th>
                            <g:if test="${ persona?.genero==0 }">
                               <td>Femenino</td>
                            </g:if>
                            <g:else>
                               <td>Masculino</td>
                            </g:else>
                        </tr>
                        <tr>
                            <th scope="row">Apellido de casado:</th>
                            <td>${persona?.apellidoDeCasado}</td>
                        </tr>
                        <tr>
                            <th scope="row">Fecha de nacimiento:</th>
                            <td><g:formatDate format="dd/MM/yyyy" date="${persona?.fechaNacimiento}"/> </td>
                        </tr>
                        <tr>
                            <th scope="row">Direcci&oacute;n:</th>
                            <g:if test="${persona?.idDireccion != null }">
                               <td>Calle ${persona?.idDireccion.calle}, Psje. ${persona?.idDireccion.pasaje}, Colonia ${persona?.idDireccion.colonia}, ${persona?.idDireccion.idMunicipio.nombre}, ${persona?.idDireccion.idMunicipio.idDepartamento.nombre} </td>
                            </g:if>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
                <table class="table">
                    <tbody>
                        <tr>
                            <th scope="row">Contacto:</th>
                            <td><g:link class=" btn btn-info" controller="contacto" action="index" id="${persona?.id}">Ver informacion de contacto</g:link>
                            <g:link class=" btn btn-success" controller="contacto" action="create" id="${persona?.id}">Agregar nuevo contacto</g:link></td>
                        </tr>
                    </tbody>
                </table>

            </div>
            <div class="card-footer">
                <g:link style="background-color:#009688; color:white;" class="btn btn-info float-left mt-3 ml-5" controller="persona" action="index">Regresar</g:link>
            </div>
        </div>
    </div>

</div>
    </body>
</html>
