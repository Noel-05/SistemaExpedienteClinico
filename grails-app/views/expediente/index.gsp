<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'expediente.label', default: 'Expediente')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="wrapper" style="text-align:center; margin: 0 auto;">
        <div class="content-wrapper">
            <div class="content-header">
                <div class="container-fluid">
                    <!-- Agregar esto como Título del Template -->
                    <font face="small fonts" size="10" color="#049286">
                        <h1 align="center" class="form-titulo" style ="margin-left: 5px; margin-top:20px; bg-success text-white"><g:message code="default.list" args="[entityName]" default="Listado de Expedientes"/></h1>
                    </font>
                    
                    <!-- Agregar esto para el botón de Nuevo Registro -->
                    <div class="container" align="center">
                    <g:link class="btn btn-success" aria-expanded="false" controller="persona" action="index" style="background-color:#009688; color:white;"> Agregar nuevo
                                    </g:link>
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
                        
                        <div>
                            <div class="card-body px-0 pt-0">
                                <div class="table-responsive" style="width:80%; display:inline-block;">
                                    <table class="table table-hover text-center ml-5 mt-2">
                                        <thead >
                                            <tr>
                                                <th scope="col" style="color:#009688;">#</th>
                                                <th scope="col" style="color:#009688;">Fecha de creación</th>
                                                <th scope="col" style="color:#009688;">Paciente</th>
                                                <th scope="col" style="color:#009688;">Opciones</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <g:if test="${ !expedientes.empty }">
                                        
                                            <g:each status="i" var="e" in="${expedientes}">
                                            <tr>
                                                
                                                <td>${i+1}</td>
                                                <td><g:formatDate format="dd/MM/yyyy" date="${e?.fechaCreado}"/></td>
                                                <td>${e?.idPersona.nombres} ${e?.idPersona.apellidos}</td>
                                                <td>
                                                    <div class="btn-group text-nowrap">
                                                    <g:form resource="${this.expediente}" method="DELETE">
                                                        <fieldset class="buttons">
                                                            <g:link controller="expediente" action="show" id="${e?.id}"><g:message code="default.button.show.label" default="Ver" /></g:link> | 
                                                            <g:link  contoller="expediente" action="edit" id="${e?.id}"><g:message code="default.button.edit.label" default="Editar" /></g:link> |
                                                            <g:link  controller="expediente" action="show" id="${e?.id}">Eliminar</g:link>
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
    </body>
</html>