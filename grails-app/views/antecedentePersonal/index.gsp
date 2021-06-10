<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'antecedentePersonal.label', default: 'AntecedentePersonal')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div id="list-antecedentePersonal" class="content scaffold-list" role="base">
            <div class="wrapper">
        <div class="content-wrapper">
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                
                        </div><!-- /.col -->
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
                                Antecedentes Personales registrados
                                <div class="btn-group">
                                    <g:link class="btn btn-sm btn-outline-success" aria-expanded="false" controller="expediente" action="show" id="${expediente.id}" style="background-color:#009688; color:white;"> Agregar nuevo
                                    </g:link>

                                </div>
                            </div>
                            <div class="card-body px-0 pt-0">
                                <div class="table-responsive" style="width:80%; display:inline-block;">
                                    <table  class="table table-hover text-center ml-5 mt-2">
                                        <thead class="thead-light">
                                            <tr>
                                                <th scope="col" style="color:#009688;">#</th>
                                                <th scope="col" style="color:#009688;">Fecha de inicio de sintomas</th>
                                                <th scope="col" style="color:#009688;">Acciones</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <g:if test="${ !(antecedentes.empty) }">
                                            <g:each in="${antecedentes}">
                                            <tr>
                                               <td></td>
                                                <td>${it.iniciosSintoma}</td>
                                                <td>
                                                    <div class="btn-group text-nowrap">
                                                    <g:form resource="${this.antecedentePersonal}" method="DELETE">
                                                    
                                                    <fieldset class="buttons">
                                                            <g:link  controller="antecedentePersonal" action="show" id="${it?.id}">Ver</g:link> |
                                                            <g:link  controller="antecedentePersonal" action="edit" id="${it?.id}">Editar</g:link> |
                                                            <button class="btn btn-danger"  type="submit" value="${message(code: 'Registro eliminado.', default: 'Eliminar')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Eliminar')}');">Eliminar</button>
                                                        </fieldset>
                                                    </g:form>
                                                    <g:form resource="${this.antecedentePersonal}" method="DELETE">
                                                        
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
        </div>
    </body>
</html>