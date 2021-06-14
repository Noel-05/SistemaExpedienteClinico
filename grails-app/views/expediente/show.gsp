<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'expediente.label', default: 'Expediente')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
        
    </head>
    <body>
        <div id="show-expediente" class="content scaffold-show" role="base">
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <div class="row align-items-center justify-content-center">
            <!-- Agregar esto como Título del Template -->
                <font face="small fonts" size="10" color="#049286">
                    <h1 align="center" class="form-titulo" style="margin-left: 5px; margin-top:20px; bg-success text-white"><g:message code="Detalles de expediente de " args="[entityName]" /><strong>${expediente?.idPersona.id}</strong></h1>
                </font>

                <!-- Agregar esto para el botón Regresar -->
                <div class="container" align="center">
                    <button type="button" class="btn btn-outline-success" href="${createLink(controller:'expediente', action:'index')}" style="background-color:#009688; color:white;"><g:link class="index" action="index" style="text-decoration:none; color:white;"><g:message code="default.list" args="[entityName]" default="Regresar"/></g:link></button>
                </div>
    <div class="col-lg-6 col-md-8">
        <div>
            <div class="card-body">
                <table class="table">
                    <tbody>
                        <tr>
                            <th scope="row"> Fecha de creacion:</th>
                            <td><g:formatDate format="dd/MM/yyyy" date="${expediente?.fechaCreado}"/></td>
                        </tr>
                        <tr>
                            <th scope="row">Paciente:</th>
                            <td>${expediente?.idPersona.nombres} ${expediente?.idPersona.apellidos} <g:link class=" btn btn-link float-rigth" controller="persona" action="show" id="${expediente?.idPersona.id}">Ver mas...</g:link>  </td>
                        </tr>
                        <tr>
                            <th scope="row">Antecedentes del Paciente:</th>
                            <td><g:link class="btn btn-info float-rigth" controller="antecedentePersonal" action="create" id="${expediente?.id}">Agregar</g:link>
                                <g:link class="btn btn-success float-rigth" controller="antecedentePersonal" action="index" id="${expediente?.id}">Ver</g:link>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">Informacion Familiar:</th>
                            <td><g:link  class=" btn btn-info float-rigth" controller="antecedenteFamiliar" action="create" id="${expediente?.id}">Agregar</g:link>
                                <g:link class=" btn btn-success float-rigth" data-bs-toggle="modal" data-bs-target="#exampleModal" controller="antecedenteFamiliar" action="index" id="${expediente?.id}">Ver</g:link>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <g:form resource="${this.expediente}" method="DELETE">
                <div class="container" align="center">
                    <button type="button" class="btn btn-outline-success" href="${createLink(controller:'expediente', action:'index')}" style="background-color:#009688; color:white;"><g:link class="list" action="index" style="text-decoration:none; color:white;"><g:message code="default.list" args="[entityName]" default="Regresar"/></g:link></button>
                    <input  class="delete btn btn-danger" style="background-color:#009688; color:white;" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </div>
                </g:form>
            </div>
        </div>
    </div>

</div>
            
        </div>
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
    </body>
</html>
