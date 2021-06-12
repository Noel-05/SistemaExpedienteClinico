<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'contacto.label', default: 'Contacto')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div id="edit-contacto" class="content scaffold-edit" role="base">
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.contacto}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.contacto}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <section class="content">
            <!-- Agregar esto como Título del Template -->
            <font face="small fonts" size="10" color="#049286">
                <h1 align="center" class="form-titulo" style="margin-left: 5px; margin-top:20px; bg-success text-white"><g:message code="Editar contacto" args="[entityName]" /></h1>
            </font>
            <div class="container" align="center">
				<g:link class="btn btn-outline-success" style="background-color:#009688; color:white;" controller="contacto" action="index" id="${contacto?.idPersona.id}">Regresar</g:link>
			</div>
				<div class="container-fluid">
					<div class="container w-75 p-3">
						<div class="card">
							<div class="card-header">
								Editar Contacto personal
							</div>
							<div class="card-body">
								<div class="col-md-9" style="margin-left: 100px;">
									<!--<div class="card-body">-->
									<div class="mt-4"></div>
									 <g:form resource="${this.contacto}" method="PUT">
                                     <g:hiddenField name="version" value="${this.contacto?.version}" />
										<fieldset class="form">
                                        <div class="form-group row">
                                                        <label for="telefono" class="col-3 col-form-label">Paciente: </label> 
                                                        <div class="col-9">
                                                        <input value="${contacto?.idPersona.id}" id="idPersona" name="idPersona"  type="text" class="form-control" aria-describedby="idPersonaHelpBlock"/> 
                                                        <span id="calleHelpBlock" class="form-text text-muted">No modificar el codigo de paciente.</span>
                                                        </div>
                                                    </div>
                                        <div class="form-group row">
                                                        <label for="telefono" class="col-3 col-form-label">Telef&oacute;no </label> 
                                                        <div class="col-9">
                                                        <input value="${contacto?.telefono}" id="telefono" name="telefono" placeholder="####-####" type="text" class="form-control" aria-describedby="telefonoHelpBlock" required="required" pattern="(6|7|2)*([0-9][ -]*){7}"
                                                        title="Debe empezar con 6, 7 u 8."/> 
                                                        <span id="calleHelpBlock" class="form-text text-muted">Ingresar el n&uacute;mero de telef&oacute;no.</span>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label for="correo" class="col-3 col-form-label">Email:</label> 
                                                        <div class="col-9">
                                                        <input value="${contacto?.correo}" id="correo" name="correo" placeholder="example@mail.com" type="email" class="form-control" aria-describedby="coloniaHelpBlock" required="required"/> 
                                                        <span id="coloniaHelpBlock" class="form-text text-muted">Ingresar el correo electronico.</span>
                                                        </div>
                                                    </div>
									  <div class="form-group row">
										<div class="offset-4 col-8">
										  <button style="background-color:#009688; color:white;" name="submit" type="submit" class="btn btn-primary">Guardar</button>
									  </div>
								  </div>
                                  </fieldset>
								  </g:form>
										
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
        </div>
    </body>
</html>
