<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    
    <body>
        <div style="text-align:center; margin: 0 auto;">
        
            <!-- Agregar esto como Título del Template -->
            <font face="small fonts" size="10" color="#049286">
                <h1 align="center" class="form-titulo" style ="margin-left: 5px; margin-top:20px; bg-success text-white"><g:message code="default.list" args="[entityName]" default="Listado de Usuarios"/></h1>
            </font>
            
            <!-- Agregar esto para el botón de Nuevo Registro -->
            <div class="container" align="center">
                <button type="button" class="btn btn-outline-success" href="${createLink(controller:'usuario', action:'create')}" style="background-color:#009688; color:white;"><g:link action="create" style="text-decoration:none; color:white;"><g:message code="default.new.label" args="[entityName]" /></g:link></button>
            </div>

            </br>
            
            <div id="list-usuario" class="content scaffold-list" role="main">
                
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>

                    <!-- Agregar acá todo lo que se mostrará en la tabla -->
                    <!-- <f:table collection="${usuarioList}" /> -->
                    <div class="table-responsive" style="width:80%; display:inline-block;">
                        <table class="table table-hover text-center">

                            <thead>
                                <tr>
                                    <g:sortableColumn property="username" title="${message(code: 'usuario.username.label', default: 'Nombre de Usuario')}" />
                                    <!-- <g:sortableColumn property="pass" title="${message(code: 'usuario.pass.label', default: 'Contraseña')}" /> -->
                                    <g:sortableColumn property="estadoEmpelado" title="${message(code: 'usuario.estadoEmpelado.label', default: 'Estado del Empleado')}" />
                                    <g:sortableColumn property="idRol" title="${message(code: 'usuario.idRol.label', default: 'Rol')}" />
                                    <th style="color:#009688;">Opcion</th>
                                </tr>
                            </thead>

                            <tbody>
                                <g:each in="${usuarioInstanceList}" status="i" var="usuarioInstance">
                                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                        <td><g:link action="show" id="${usuarioInstance.id}">${fieldValue(bean: usuarioInstance, field: "username")}</g:link></td>
                                        <!--<td>${fieldValue(bean: usuarioInstance, field: "username")}</td>-->
                                        <!-- <td>${fieldValue(bean: usuarioInstance, field: "pass")}</td> -->
                                        <g:if test="${(fieldValue(bean: usuarioInstance, field: "estadoEmpelado")) == '1'}">
                                            <td>Activo</td>
                                        </g:if>
                                        <g:else>
                                            <td>Inactivo</td>
                                        </g:else>
                                        
                                        <td>${fieldValue(bean: usuarioInstance, field: "idRol")}</td>
                                        
                                        <f:display bean="usuario" />
                                        <g:form resource="${usuarioInstance.id}" method="DELETE">
                                            <td><fieldset class="buttons">
                                                <g:link action="edit" id="${usuarioInstance.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                                                |
                                                <g:link action="show" id="${usuarioInstance.id}"><g:message code="default.button.show.label" default="Eliminar" /></g:link>
                                            </fieldset></td>
                                        </g:form>
                                        
                                    </tr>
                                </g:each>
                            </tbody>

                        </table>
                    </div>

                <div class="pagination">
                    <g:paginate total="${usuarioCount ?: 0}" />
                </div>
                
            </div>
        </div>
        
    </body>
</html>


        