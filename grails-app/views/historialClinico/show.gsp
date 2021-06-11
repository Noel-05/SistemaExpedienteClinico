<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'historialClinico.label', default: 'HistorialClinico')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="row align-items-center justify-content-center" role="base">
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <!-- Agregar esto como Título del Template -->
            <font face="small fonts" size="10" color="#049286">
                <h1 align="center" class="form-titulo" style="margin-left: 5px; margin-top:20px; bg-success text-white"><g:message code="Detalles de historial clinico" args="[entityName]" /></h1>
            </font>

            <!-- Agregar esto para el botón Regresar -->
            <div class="container" align="center">
                <button type="button" class="btn btn-outline-success" href="${createLink(controller:'historialClinico', action:'index')}" style="background-color:#009688; color:white;"><g:link class="list" action="index" style="text-decoration:none; color:white;"><g:message code="default.list" args="[entityName]" default="Regresar"/></g:link></button>
            </div>
            <div class="w-50 p-3">
                <div class="card ">
                    <div class="card-header">
                        <button class="btn btn-lg btn-link navbar-left" aria-expanded="true">
                            Historial Clínico de <strong>${paciente?.nombres} ${paciente?.apellidos} </strong>
                        </button>
                    </div>
                    <div class="card-body">
                        <g:if test="${ !(historiales.empty)}">
                            <g:each status="i" var="h" in="${ historiales }">
                                <div class="container bordered ">
                                    <table class="table">
                                        <thead>
                                            <th style="background-color: #eee; width: 10px;"><span> ${i+1} </span></th>
                                            <th><span> Parentesco: ${h?.parentesco} </span></th>
                                            <th></th>
                                            <th></th>
                                        </thead>
                                        <tbody>
                                            <th><span> Nombres:</span>
                                                <td>  ${h?.nombre}</td>
                                            </th>
                                            <th><span>Apellidos:</span>
                                                <td > ${h?.apellido}</td>
                                            </th>
                                        </tbody>
                                    </table>
                                    <table class="table">
                                        <tbody>
                                            <th><span> Fecha de nacimiento:</span>
                                                <td><g:formatDate format="dd/MM/yyyy" date="${h?.fechaNacimiento}"/>  </td>
                                            </th>
                                        </tbody>
                                    </table>
                                    <table class="table">
                                        <tbody>
                                            <th><span> Direccion:</span>
                                                <td>${h?.idDireccion.calle}, ${h?.idDireccion.pasaje}, ${h?.idDireccion.colonia}, ${h?.idDireccion.idMunicipio.nombre}, ${h?.idDireccion.idMunicipio.idDepartamento.nombre} </td>
                                            </th>
                                        </tbody>
                                    </table>
                                    <table class="table">
                                        <tbody>
                                            <th><span> Enfermedades padecidas:</span>
                                                <td>${h?.enfermedadesPadecidas} </td>
                                            </th>
                                        </tbody>
                                    </table>
                                </div>
                                <br>
                                <div class="container mb-3">
                                    <g:form resource="${this.departamento}" method="DELETE">
                                        <fieldset class="buttons">
                                            <g:link class="edit btn btn-info" controller="historialClinico" action="edit" id="${h?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                                            <input class="delete btn btn-danger" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                                        </fieldset>
                                    </g:form>
                                </div>
                            </g:each>
                        </g:if>
                        <g:else>
                            <div class="alert alert-info mt-4" role="alert" >
                                No se encontraron registros
                            </div>
                        </g:else>
                    </div>
                    <div >
                        <div class="container" align="center">
                            <button type="button" class="btn btn-outline-success" href="${createLink(controller:'historialClinico', action:'index')}" style="background-color:#009688; color:white;"><g:link class="list" action="index" style="text-decoration:none; color:white;"><g:message code="default.list" args="[entityName]" default="Regresar"/></g:link></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     </body>
</html>
