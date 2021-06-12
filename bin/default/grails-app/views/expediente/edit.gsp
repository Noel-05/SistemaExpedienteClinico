<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'expediente.label', default: 'Expediente')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div id="edit-expediente" class="content scaffold-edit" role="main">
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.expediente}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.expediente}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <section class="content">
			<!-- Agregar esto como Título del Template -->
                <font face="small fonts" size="10" color="#049286">
                    <h1 align="center" class="form-titulo" style="margin-left: 5px; margin-top:20px; bg-success text-white"><g:message code="Editar expediente" args="[entityName]" /></h1>
                </font>

                <!-- Agregar esto para el botón Regresar -->
                <div class="container" align="center">
                    <button type="button" class="btn btn-outline-success" href="${createLink(controller:'expediente', action:'index')}" style="background-color:#009688; color:white;"><g:link class="index" action="index" style="text-decoration:none; color:white;"><g:message code="default.list" args="[entityName]" default="Regresar"/></g:link></button>
                </div>
				<div class="container-fluid">
					<div class="container w-75 p-3">
						<div class="card">
							<div class="card-header">
								Editar expediente
							</div>
							<div class="card-body">
								<div class="col-md-9" style="margin-left: 100px;">
									<!--<div class="card-body">-->
									<div class="mt-4"></div>
									 <g:form resource="${this.expediente}" method="PUT">
                                     <g:hiddenField name="version" value="${this.expediente?.version}" />
										<fieldset class="form">
											<div class="form-group row">
											<label for="fechaCreado" class="col-4 col-form-label"><strong>C&oacute;digo de Paciente:</strong> </label> 
											<div class="col-8">
											  <input value="${expediente?.idPersona.id}" id="idPersona" name="idPersona" placeholder="Elegir fecha de creación del expediente." type="text" required="required" class="form-control" value="${paciente}">
											  <span id="calleHelpBlock" class="form-text text-muted">El c&oacute;digo del paciente no se puede modificar.</span>
										  </div>
									  </div> 
											<div class="form-group row">
											<label for="fechaCreado" class="col-4 col-form-label">Fecha de creación:</label> 
											<div class="col-8">
											  <input value="${expediente?.fechaCreado}" id="fechaCreado" name="fechaCreado" placeholder="Elegir fecha de creación del expediente." type="date" required="required" class="form-control">
											  <span id="calleHelpBlock" class="form-text text-muted">Ingresar la fecha de creaci&oacute;n del expediente.</span>
										  </div>
									  </div> 
									  <div class="form-group row">
										<div class="offset-4 col-8">
										  <button style="background-color:#009688; color:white;" name="submit" type="submit" class="btn btn-primary">Guardar</button>
									  </div>
								  </div>
								  </g:form>
										</fieldset>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
        </div>
    </body>
</html>
