<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'contacto.label', default: 'Contacto')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div id="list-contacto" class="content scaffold-list" role="base">
            <div class="wrapper">
        <div class="content-wrapper">
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                
                        </div><!-- /.col -->
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Paciente</a></li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    Contactos</li>
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
                                Contactos
                                <div class="btn-group">
                                    <g:link class="btn btn-sm btn-outline-success" aria-expanded="false" controller="persona" action="show" id="${paciente.id}" style="background-color:#009688; color:white;"> Agregar nuevo
                                    </g:link>
                                </div>
                            </div>
                            <div class="card-body px-0 pt-0">
                                <div class="table-responsive" style="width:80%; display:inline-block;">
                                    <table class="table table-hover text-center ml-5 mt-2">
                                        <thead class="thead-light">
                                            <tr>
                                                <th scope="col" style="color:#009688;">#</th>
                                                <th scope="col" style="color:#009688;">Telefono</th>
                                                <th scope="col" style="color:#009688;">Correo Electronico</th>
                                                <th scope="col" style="color:#009688;">Acciones</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <g:if test="${ !(contactos.empty) }">
                                                <g:each in="${contactos}">
                                                <tr>
                                                    
                                                    <td></td>
                                                    <td>${it.telefono}</td>
                                                    <td>${it.correo}</td>
                                                    <td>
                                                        <div class="btn-group text-nowrap">
                                                        <g:form resource="${this.contacto}" method="DELETE">
                                                            <fieldset class="buttons">
                                                            <g:link  controller="contacto" action="edit" id="${it.id}">Editar</g:link> |
                                                            <button class="btn btn-danger" type="submit"><g:message  value="${message(code: 'Registro eliminado.', default: 'Eliminar')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Esta seguro? Se eliminara un registro')}');" />Eliminar</button>
                                                            </fieldset>
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
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
        </div>
    </body>
</html>