<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'contacto.label', default: 'Contacto')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
    <!-- Agregar esto como Título del Template -->
            <font face="small fonts" size="10" color="#049286">
                <h1 align="center" class="form-titulo" style="margin-left: 5px; margin-top:20px; bg-success text-white"><g:message code="Crear contacto" args="[entityName]" /></h1>
            </font>
				<div class="container" align="center">
					<g:link class="btn btn-outline-success" style="background-color:#009688; color:white;" controller="persona" action="show" id="${paciente}">Regresar</g:link>
			</div>
        <div id="create-contacto" class="content scaffold-create" role="base">
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
				<div class="container-fluid">
					<div class="container w-75 p-3">
						<div>
							<div class="card-body">
								<div class="col-md-9" style="margin-left: 100px;">
									<!--<div class="card-body">-->
									<div class="mt-4"></div>
									 <g:form resource="${this.contacto}" method="POST">
										<fieldset class="form">
                                        <div class="form-group row">
                                                        <label for="telefono" class="col-3 col-form-label">Paciente: </label> 
                                                        <div class="col-9">
                                                        <input value="${paciente}" id="idPersona" name="idPersona"  type="text" class="form-control" aria-describedby="idPersonaHelpBlock"/> 
                                                        <span id="calleHelpBlock" class="form-text text-muted">No modificar el codigo de paciente.</span>
                                                        </div>
                                                    </div>
                                        <div class="form-group row">
                                                        <label for="telefono" class="col-3 col-form-label">Telef&oacute;no </label> 
                                                        <div class="col-9">
                                                        <input id="telefono" name="telefono" placeholder="####-####" type="text" class="form-control" aria-describedby="telefonoHelpBlock" required="required" pattern="(6|7|2)*([0-9][ -]*){7}"
                                                        title="Debe empezar con 6, 7 u 8."/> 
                                                        <span id="calleHelpBlock" class="form-text text-muted">Ingresar el n&uacute;mero de telef&oacute;no.</span>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label for="correo" class="col-3 col-form-label">Email:</label> 
                                                        <div class="col-9">
                                                        <input id="correo" name="correo" placeholder="example@mail.com" type="email" class="form-control" aria-describedby="coloniaHelpBlock" required="required"/> 
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
