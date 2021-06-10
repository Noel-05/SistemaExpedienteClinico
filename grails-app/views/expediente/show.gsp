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
    <div class="col-lg-6 col-md-8">
        <div class="card">
            <div class="card-header">
            Datos generales
            </div>
            <div class="card-body">
                <table class="table">
                    <tbody>
                        <tr>
                            <th scope="row"> Fecha de creacion:</th>
                            <td>${expediente?.fechaCreado}</td>
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

            </div>
            <div class="card-footer">
                <g:link style="background-color:#009688; color:white;" class="btn btn-info float-left mt-3" controller="expediente" action="index">Regresar</g:link>
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
