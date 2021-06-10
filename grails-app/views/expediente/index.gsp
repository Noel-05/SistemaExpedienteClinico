<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'expediente.label', default: 'Expediente')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
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
                                    Expedientes</li>
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
                                Expedientes registrados en el sistema
                                <div class="btn-group">
                                    <g:link class="btn btn-sm btn-outline-success" aria-expanded="false" controller="persona" action="index" style="background-color:#009688; color:white;"> Agregar nuevo
                                    </g:link>
                                </div>
                            </div>
                            <div class="card-body px-0 pt-0">
                                <div class="table-responsive" style="width:80%; display:inline-block;">
                                    <table class="table table-hover text-center ml-5 mt-2">
                                        <thead class="thead-light">
                                            <tr>
                                                <th scope="col" style="color:#009688;">#</th>
                                                <th scope="col" style="color:#009688;">Fecha de creación</th>
                                                <th scope="col" style="color:#009688;">Paciente</th>
                                                <th scope="col" style="color:#009688;">Opciones</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <g:if test="${ !expedientes.empty }">
                                        
                                            <g:each var="e" in="${expedientes}">
                                            <tr>
                                                
                                                <td></td>
                                                <td>${e?.fechaCreado}</td>
                                                <td>${e?.idPersona.nombres} ${e?.idPersona.apellidos}</td>
                                                <td>
                                                    <div class="btn-group text-nowrap">
                                                    <g:form resource="${this.expediente}" method="DELETE">
                                                        <fieldset class="buttons">
                                                            <g:link controller="expediente" action="show" id="${e?.id}"><g:message code="default.button.show.label" default="Ver" /></g:link> | 
                                                            <g:link  action="edit" resource="${this.expediente}"><g:message code="default.button.edit.label" default="Editar" /></g:link> |
                                                            <button class="btn btn-danger" type="submit" value="${message(code: 'Expediente eliminado.', default: 'Eliminar')}" onclick="return confirm('${message(code: 'Esta seguro? Se eliminara un registro', default: 'Esta seguro? Se eliminara un registro')}');">Eliminar</button>
                                                        </fieldset>
                                                    </g:form>
                                                    </div>
                                                </td>
                                            </tr>
                                            </g:each>
                                               
                                        </g:if>
                                        <g:else>
                                               <div class="alert alert-info mt-4" role="alert" >
                                                    No se encontraron registros
                                                </div>
                                            </g:else>
                                        </tbody>
                                    </table>
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