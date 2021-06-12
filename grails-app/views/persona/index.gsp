<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'persona.label', default: 'Persona')}" />
        <title>Lista | Paciente</title>
    </head>
    <body>
        <div class="wrapper" style="text-align:center; margin: 0 auto;">
        <div class="content-wrapper">
            <div class="content-header">
                <div class="container-fluid">
                <!-- Agregar esto como Título del Template -->
                    <font face="small fonts" size="10" color="#049286">
                        <h1 align="center" class="form-titulo" style ="margin-left: 5px; margin-top:20px; bg-success text-white"><g:message code="default.list" args="[entityName]" default="Listado de Pacientes"/></h1>
                    </font>
                    
                    <!-- Agregar esto para el botón de Nuevo Registro -->
                    <div class="container" align="center">
                        <button type="button" class="btn btn-outline-success" href="${createLink(controller:'persona', action:'create')}" style="background-color:#009688; color:white;"><g:link action="create" style="text-decoration:none; color:white;"><g:message code="Agregar nuevo" args="[entityName]" /></g:link></button>
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
                        
                        <div >
                            <div class="card-body px-0 pt-0">
                                <div class="table-responsive" style="width:80%; display:inline-block;">
                                    <table  class="table table-hover text-center ml-5 mt-2">
                                        <thead >
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
                                                        <g:link action="edit" controller="persona" id="${p?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                                                        <button class="btn btn-danger" type="submit" action="delete" resource="${this.persona}" value="${message(code: 'Paciente eliminado.', default: 'Eliminar')}" onclick="return confirm('${message(code: 'Esta seguro? Se eliminara un registro', default: 'Esta seguro? Se eliminara un registro')}');">Eliminar</button>
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