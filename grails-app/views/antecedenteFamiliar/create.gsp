<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'antecedenteFamiliar.label', default: 'AntecedenteFamiliar')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div id="create-antecedenteFamiliar" class="content scaffold-create" role="base">
            
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.antecedenteFamiliar}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.antecedenteFamiliar}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <section class="content">
			<!-- Agregar esto como Título del Template -->
            <font face="small fonts" size="10" color="#049286">
                <h1 align="center" class="form-titulo" style="margin-left: 5px; margin-top:20px; bg-success text-white"><g:message code="Crear informacion familiar" args="[entityName]" />${persona?.id}</h1>
            </font>
				<div class="container" align="center">
					<g:link class="btn btn-outline-success" style="background-color:#009688; color:white;" controller="expediente" action="show" id="${expediente}">Regresar</g:link>
				</div>
				<div class="container-fluid">
					<div class="container w-75 p-3">
						<div class="card">
							<div class="card-header">
								Nuevo Antecedente Familiar
							</div>
							<div class="card-body">
								<div class="col-md-9" style="margin-left: 100px;">
									<!--<div class="card-body">-->
									<div class="mt-4"></div>
									 <g:form resource="${this.antecedenteFamiliar}" method="POST">
										<fieldset class="form">
											<div class="form-group row">
											<label for="idExpediente" class="col-4 col-form-label"><strong>Expediente</strong> </label> 
											<div class="col-8">
											  <input id="idExpediente" name="idExpediente"  type="text" required="required" class="form-control" value="${expediente}">
											 
										  </div>
                                          </div> 
											<div class="form-group row">
											<label for="descripcion" class="col-4 col-form-label">Descripcion:</label> 
											<div class="col-8">
											  <textArea id="descripcion" name="descripcion" placeholder="Descripcion" type="text" class="form-control"></textArea>
											  <span id="descripcionHelpBlock" class="form-text text-muted">Ingresar una descripcion opcionalmente.</span>
										  </div>
									  </div>
											<div class="form-group row">
											<label for="relacionAntecedenteFamiliar" class="col-4 col-form-label">Relacion:</label> 
											<div class="col-8">
											  <input id="relacionAntecedenteFamiliar" name="relacionAntecedenteFamiliar" placeholder="Relacion" type="text" required="required" class="form-control">
											  <span id="calleHelpBlock" class="form-text text-muted">Ingresar la relacion que se presenta con el antecedente.</span>
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
