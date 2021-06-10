<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'persona.label', default: 'Persona')}" />
        <title>Lista | Paciente</title>
    </head>
    <body>
        <div class="wrapper">
        <div class="content-wrapper">
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                
                        </div><!-- /.col -->
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    Pacientes</li>
                            </ol>
                        </div>
                    </div>

                </div>
            </div>
            <section class="content">
                <div class="container-fluid">
                    <div class="container">
                        <div role="alert">
                            <g:if test="${flash.message}">
                            <div class="message" role="status">${flash.message}</div>
                            </g:if>
                        </div>
                        
                        <div class="card">
                            <div class="card-header">
                                Pacientes registrados en el sistema
                                <div class="btn-group">
                                    <button  class="btn btn-sm btn-outline-succes" aria-expanded="false" href="${createLink(controller:'persona', action:'create')}" style="background-color:#009688; color:white;"><g:link action="create" style="text-decoration:none; color:white;"><g:message code="Crear nuevo" args="[entityName]" default="Agregar nuevo"/></g:link>
                                    </button>
                                </div>
                            </div>
                            <div class="card-body px-0 pt-0">
                                <div class="table-responsive" style="width:80%; display:inline-block;">
                                    <table  class="table table-hover text-center ml-5 mt-2">
                                        <thead class="thead-light">
                                            <tr>
                                                <th scope="col" style="color:#009688;">#</th>
                                                <th scope="col" style="color:#009688;">Código</th>
                                                <th scope="col" style="color:#009688;">Nombres</th>
                                                <th scope="col" style="color:#009688;">Apellidos</th>
                                                <th scope="col" style="color:#009688;">Opcion</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <g:if test="${ !paciente.empty }">
                                           
                                        
                                            <g:each status="i" var="p" in="${paciente}">
                                            <tr>
                                                
                                                <td>${i+1}</td>
                                                <td>${p?.id}</td>
                                                <td>${p?.nombres} </td>
                                                <td>${p?.apellidos} </td>
                                                <td>
                                                    <div class="btn-group text-nowrap">
                                                    <g:form resource="${this.persona}" method="DELETE">
                                                        <g:link class="btn btn-success" controller="expediente" action="create" id="${p?.id}">Abrir Expediente </g:link>
                                                        <g:link controller="persona" action="show" id="${p.id}">Ver </g:link> |
                                                        <g:link action="edit" controller="persona" id="${p?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link> |
                                                        <g:link  type="submit" action="delete" controller="persona" id="${p?.id}" value="${message(code: 'Paciente eliminado.', default: 'Eliminar')}" onclick="return confirm('${message(code: 'Esta seguro? Se eliminara un registro', default: 'Esta seguro? Se eliminara un registro')}');">Eliminar</g:link>
                                                    </g:form> 
                                                    </div>
                                                </td>
                                            </tr>
                                            </g:each>
                                            </g:if>
                                            <g:else>
                                               <div class="alert alert-info mt-4 ml-5" role="alert" >
                                                    No se encontraron registros
                                                </div>
                                            </g:else>
                                        </tbody>
                                    </table>
                                    <div class="pagination">
                                        <g:paginate total="${paciente ?: 0}" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div> 
    </body>
</html>