<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'antecedenteFamiliar.label', default: 'AntecedenteFamiliar')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div id="list-antecedenteFamiliar" class="content scaffold-list" role="base">
            <div class="wrapper" style="text-align:center; margin: 0 auto;">
        <div class="content-wrapper">
            <div class="content-header">
            <!-- Agregar esto como Título del Template -->
                    <font face="small fonts" size="10" color="#049286">
                        <h1 align="center" class="form-titulo" style="margin-left: 5px; margin-top:20px; bg-success text-white"><g:message code="Listado de Informacio Familiar" args="[entityName]" /></h1>
                    </font>
				<div class="container" align="center">
					<g:link class="btn btn-outline-success" aria-expanded="false" controller="expediente" action="show" id="${expediente.id}" style="background-color:#009688; color:white;">Regresar
                    </g:link>
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
                                        <thead >
                                            <tr>
                                                <th scope="col" style="color:#009688;">#</th>
                                                <th scope="col" style="color:#009688;">Descripcion</th>
                                                <th scope="col" style="color:#009688;">Relacion</th>
                                                <th scope="col" style="color:#009688;">Opciones</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <g:if test="${ !(antecedentes.empty) }">
                                          <g:each status="i" var="a" in="${antecedentes}">
                                            <tr>
                                                <td>${i+1}</td>
                                                <td>${a?.descripcion}</td>
                                                <td>${a?.relacionAntecedenteFamiliar}</td>
                                                <td>
                                                    <div class="btn-group text-nowrap">
                                                    <g:form resource="${this.antecedenteFamiliar}" method="DELETE">
                                                    <fieldset class="buttons">
                                                            <g:link controller="antecedenteFamiliar" action="show" id="${a?.id}">Ver</g:link> |
                                                            <g:link  controller="antecedenteFamiliar" action="edit" id="${a?.id}"><g:message code="default.button.edit.label" default="Editar" /></g:link>
                                                            <button class="btn btn-danger"  type="submit" value="${message(code: 'Registro eliminado.', default: 'Eliminar')}" onclick="return confirm('${message(code: 'Esta seguro? Se eliminara un registro', default: 'Eliminar')}');">Eliminar</button>
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