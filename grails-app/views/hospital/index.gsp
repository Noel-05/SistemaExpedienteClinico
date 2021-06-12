<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'hospital.label', default: 'Hospital')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
         <div class="wrapper">
        <div class="content-wrapper">
            <div class="content-header">
                <div class="container-fluid">
                    <!-- Agregar esto como Título del Template -->
                    <font face="small fonts" size="10" color="#049286">
                        <h1 align="center" class="form-titulo" style ="margin-left: 5px; margin-top:20px; bg-success text-white"><g:message code="default.list" args="[entityName]" default="Listado de hospitales"/></h1>
                    </font>
                    
                    <!-- Agregar esto para el botón de Nuevo Registro -->
                     <!-- Agregar esto para el botón de Nuevo Registro -->
                    <div class="container" align="center">
                        <button type="button" class="btn btn-outline-success" href="${createLink(controller:'hospital', action:'create')}" style="background-color:#009688; color:white;"><g:link action="create" style="text-decoration:none; color:white;"><g:message code="Agregar nueva" args="[entityName]" /></g:link></button>
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
                                    
                                </div>
                            </div>
                            <div class="card-body px-0 pt-0">
                                <div class="table-responsive" style="width:80%; display:inline-block;">
                                    <table class="table table-hover text-center ml-5 mt-2">
                                        <thead >
                                            <tr>
                                                <th scope="col" style="color:#009688;">Nombre</th>
                                                <th scope="col" style="color:#009688;">Clinica</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <g:if test="${ !hospitalList.empty }">
                                        
                                            <g:each status="i" var="e" in="${hospitalList}">
                                            <tr>
                                                
                                                <td> <g:link controller="hospital" action="show" id="${e?.id}"><g:message code="default.button.show.label" default="${e.nombre}" /></g:link> </td>
                                                <td>${e.clinica}
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