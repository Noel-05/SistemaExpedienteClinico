<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'historialClinico.label', default: 'HistorialClinico')}" />
        <title>Historial | Paciente</title>
    </head>
    <body>
        <div class="wrapper" style="text-align:center; margin: 0 auto;">
            <!-- Agregar esto como Título del Template -->
            <font face="small fonts" size="10" color="#049286">
                <h1 align="center" class="form-titulo" style ="margin-left: 5px; margin-top:20px; bg-success text-white"><g:message code="default.list" args="[entityName]" default="Historial Clínico"/></h1>
            </font>
            
        <div class="content-wrapper">
            <div class="content-header">
                <div class="container-fluid">
                    
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
                                    <table class="table table-hover text-center ml-5 mt-2">
                                        <thead>
                                            <tr>
                                                <th scope="col" style="color:#009688;">#</th>
                                                <th scope="col" style="color:#009688;">Código</th>
                                                <th scope="col" style="color:#009688;">Nombres</th>
                                                <th scope="col" style="color:#009688;">Apellidos</th>
                                                <th scope="col" style="color:#009688;">Acciones</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <g:if test="${ !paciente.empty }">
                                           
                                        
                                            <g:each status="i" var="p" in="${paciente}">
                                            <tr>
                                                
                                                <td>${i+1}</td>
                                                <td>${p.id}</td>
                                                <td>${p.nombres} </td>
                                                <td>${p.apellidos} </td>
                                                <td>
                                                    <div class="btn-group text-nowrap">
                                                    <g:form resource="${this.persona}" method="PUT">
                                                    <g:link  class="btn btn-sm btn-info mr-2" 
                                                        controller="historialClinico" action="create" id="${p?.id}"
                                                         >Agregar Historial
                                                                </g:link>
                                                    <g:link  class="btn btn-sm btn-succes mr-2" 
                                                        controller="historialClinico" action="show" id="${p.id}"
                                                         >Ver Historial
                                                                </g:link>
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