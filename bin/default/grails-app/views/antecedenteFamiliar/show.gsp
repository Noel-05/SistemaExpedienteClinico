<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'antecedenteFamiliar.label', default: 'AntecedenteFamiliar')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div id="show-antecedenteFamiliar" class="content scaffold-show" role="base">
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
             <div class="row align-items-center justify-content-center">
             <!-- Agregar esto como Título del Template -->
                    <font face="small fonts" size="10" color="#049286">
                        <h1 align="center" class="form-titulo" style="margin-left: 5px; margin-top:20px; bg-success text-white"><g:message code="Detalles de informacion familiar" args="[entityName]" />${persona?.id}</h1>
                    </font>
				<div class="container" align="center">
					<g:link class="btn btn-outline-success" aria-expanded="false" controller="antecedenteFamiliar" action="index" id="${antecedenteFamiliar?.idExpediente.id}" style="background-color:#009688; color:white;"> Regresar
                    </g:link>
				</div>
    <div class="col-lg-6 col-md-8">
        <div >
            
            <div class="card-body">
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <th scope="row"> Descripcion:</th>
                            <td>${antecedenteFamiliar?.descripcion}</td>
                        </tr>
                        <tr>
                            <th scope="row">Relacion:</th>
                            <td>${antecedenteFamiliar?.relacionAntecedenteFamiliar}</td>
                        </tr>
                    </tbody>
                </table>

            </div>
                <g:form resource="${this.antecedenteFamiliar}" method="DELETE">
                <div class="card-footer">
                    <%-- <button style="background-color:#dc3545; color:white;" class="btn btn-danger float-rigth" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');">Eliminar</button> --%>
                </div>
            </g:form>
        </div>
    </div>

</div>
        </div>
    </body>
</html>
