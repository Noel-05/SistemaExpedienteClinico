<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'persona.label', default: 'Persona')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    </head>
    <body>
        <div id="create-persona" class="content scaffold-create" role="base">
            <%-- <h1><g:message code="default.create.label" args="[entityName]" /></h1> --%>
            
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
                <g:hasErrors bean="${this.persona}">
                    <ul class="errors" role="alert">
                        <g:eachError bean="${this.persona}" var="error">
                            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                        </g:eachError>
                    </ul>
                </g:hasErrors>
            <section class="content">
            <!-- Agregar esto como Título del Template -->
                <font face="small fonts" size="10" color="#049286">
                    <h1 align="center" class="form-titulo" style="margin-left: 5px; margin-top:20px; bg-success text-white"><g:message code="Editar paciente" args="[entityName]" /></h1>
                </font>

                <!-- Agregar esto para el botón Regresar -->
                <div class="container" align="center">
                    <button type="button" class="btn btn-outline-success" href="${createLink(controller:'persona', action:'index')}" style="background-color:#009688; color:white;"><g:link class="index" action="index" style="text-decoration:none; color:white;"><g:message code="default.list" args="[entityName]" default="Regresar"/></g:link></button>
                </div>
                <div class="container-fluid">
                    <div class="container w-75 p-3">
                        <div>
                            <div class="card-body">
                                <div class="col-md-9" style="margin-left: 100px;">
                                    <!--<div class="card-body">-->

                                    <div class="stepwizard">
                                        <div class="stepwizard-row setup-panel">
                                            <div class="stepwizard-step">
                                                <a href="#step-1" type="button" class="btn btn-primary btn-circle">1</a>
                                                <p>Datos Personales</p>
                                            </div>

                                            <div class="stepwizard-step">
                                                <a href="#step-2" type="button" class="btn btn-default btn-circle"
                                                    disabled="disabled">2</a>
                                                    <p>Direccion</p>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="mt-4"></div>
                                    <g:form resource="${this.persona}" method="PUT">
                                    <g:hiddenField name="version" value="${this.persona?.version}" />
                                        <fieldset class="form">
                                        <div class="row setup-content" id="step-1">
                                            <div class="col-xs-12">
                                                <div class="col-md-12">
                                                <div class="form-group row">
                                                        <label class="col-4 col-form-label" for="nombres">Identificador:</label> 
                                                        <div class="col-8">
                                                            <input value="${persona.id}" id="id" name="id" placeholder="001-RC" type="text" class="form-control" aria-describedby="idHelpBlock" required="required"/> 
                                                            <span id="idHelpBlock" class="form-text text-muted">Ingresar el identificador</span>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-4 col-form-label" for="nombres">Nombres:</label> 
                                                        <div class="col-8">
                                                            <input value="${persona.nombres}" id="nombres" name="nombres" placeholder="Nombres" type="text" class="form-control" aria-describedby="nombresHelpBlock" required="required" pattern="[A-zÀ-ú\s]+"
                                                            title="No se permiten numeros, guiones o simbolos"/> 
                                                            <span id="nombresHelpBlock" class="form-text text-muted">Ingresar nombres</span>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label for="apellidos" class="col-4 col-form-label">Apellidos:</label> 
                                                        <div class="col-8">
                                                            <input value="${persona.apellidos}" id="apellidos" name="apellidos" placeholder="Apellidos" type="text" class="form-control" aria-describedby="apellidosHelpBlock" required="required" pattern="[A-zÀ-ú\s]+"
                                                            title="No se permiten numeros, guiones o simbolos"/> 
                                                            <span id="apellidosHelpBlock" class="form-text text-muted">Ingresar apellidos</span>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label for="estadoCivil" class="col-4 col-form-label">Estado civil:</label> 
                                                        <div class="col-8">
                                                          <select id="estadoCivil" name="estadoCivil" class="custom-select" aria-describedby="estadoCivilHelpBlock">
                                                            <option value="0">Casado/a</option>
                                                            <option value="1">Soltero/a</option>
                                                            <option value="2">Viudo/a</option>
                                                            <option value="3">Otro</option>
                                                          </select> 
                                                          <span id="estadoCivilHelpBlock" class="form-text text-muted">Seleccione el estado civil.</span>
                                                        </div>
                                                      </div> 
                                                    <div class="form-group row">
                                                        <label for="apellidoDeCasado" class="col-4 col-form-label">Apellido de Casado:</label> 
                                                        <div class="col-8">
                                                            <input value="${persona.apellidoDeCasado}" id="apellidoDeCasado" name="apellidoDeCasado" placeholder="Apellido de casado" type="text" class="form-control" aria-describedby="apellidoDeCasadoHelpBlock"/> 
                                                            <span id="apellidoDeCasadoHelpBlock" class="form-text text-muted">Ingresar el apellido de casado si lo tiene.</span>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-4">Genero:</label> 
                                                        <div class="col-8">
                                                            <g:radioGroup name="genero" labels="['Femenino', 'Masculino']" values="[0,1]" >
                                                                <p>${it.label} ${it.radio}</p>
                                                            </g:radioGroup>
                                                        </div>
                                                        <span id="generoHelpBlock" class="form-text text-muted">Seleccionar genero.</span>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label for="fechaNacimiento" class="col-4 col-form-label">Fecha de nacimiento:</label> 
                                                        <div class="col-8">
                                                        <input  value="${persona.fechaNacimiento}" id="fechaNacimiento" name="fechaNacimiento" placeholder="Fecha de nacimiento" type="date" class="form-control" required="required" aria-describedby="fechaNacimientoHelpBlock"/> 
                                                        <span id="fechaNacimientoHelpBlock" class="form-text text-muted">Ingresar fecha de nacimiento.</span>

                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label for="dui" class="col-4 col-form-label">DUI:</label> 
                                                        <div class="col-8">
                                                        <input value="${persona.dui}" id="dui" name="dui" placeholder="########-#" type="text" class="form-control" required="required" aria-describedby="duiHelpBlock" pattern="[0-9]{8}[-][0-9]{1}"
                                                        title="Debe ingresar numeros y un guión"/> 
                                                        <span id="duiHelpBlock" class="form-text text-muted">Ingresar el Numero Único de Identidad.</span>
                                                        </div>
                                                    </div> 
                                                    <button style="background-color:#009688; color:white;" class="btn btn-success pull-right nextBtn">Siguiente</button>
                                                </div>
                                                
                                            </div>
                                        </div>
                                        <div class="row setup-content" id="step-2">
                                            <div class="col-xs-12">
                                                <div class="col-md-12">
                                                    <div class="col-xs-12">
                                                <div class="col-md-12">
                                                    <div class="form-group row">
                                                        <label for="idDepartamento" class="col-3 col-form-label">Departamento:</label> 
                                                        <div class="col-9">
                                                        <select id="idDepartamento" name="idDepartamento" class="custom-select" aria-describedby="estadoCivilHelpBlock">
                                                        <option value="${this.persona?.idDireccion.idMunicipio.idDepartamento.id}" selected>${this.persona?.idDireccion.idMunicipio.idDepartamento.nombre}</option>
                                                        <g:each var="i" in="${ departamentos }">
                                                            <option value="${i.id}">${i.nombre}</option><
                                                        </g:each>
                                                         </select>
                                                        <span id="idDepartamentoHelpBlock" class="form-text text-muted">Seleccione el Departamento.</span>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label for="idMunicipio" class="col-3 col-form-label">Municipio:</label> 
                                                        <div class="col-9">
                                                        <select id="idMunicipio" name="idMunicipio" class="custom-select" required>
                                                            <option value="${this.persona?.idDireccion.idMunicipio.id}" selected>${this.persona?.idDireccion.idMunicipio.nombre}</option>
                                                            <g:each var="i" in="${ municipios }">
                                                                <option value="${i.id}">${i.nombre}</option>
                                                            </g:each>
                                                        </select>
                                                        <span id="idMunicipioHelpBlock" class="form-text text-muted">Seleccione el municipio.</span>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label for="calle" class="col-3 col-form-label">Calle</label> 
                                                        <div class="col-9">
                                                        <input value="${persona?.idDireccion.calle}" id="calle" name="calle" placeholder="Calle" type="text" class="form-control" aria-describedby="calleHelpBlock" required="required"/> 
                                                        <span id="calleHelpBlock" class="form-text text-muted">Ingresar Calle.</span>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label for="colonia" class="col-3 col-form-label">Colonia:</label> 
                                                        <div class="col-9">
                                                        <input value="${persona?.idDireccion.colonia}" id="colonia" name="colonia" placeholder="Colonia" type="text" class="form-control" aria-describedby="coloniaHelpBlock"/> 
                                                        <span id="coloniaHelpBlock" class="form-text text-muted">Ingresar nombre de la colonia.</span>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label for="pasaje" class="col-3 col-form-label">Pasaje:</label> 
                                                        <div class="col-9">
                                                        <input value="${persona?.idDireccion.pasaje}" id="pasaje" name="pasaje" placeholder="Pasaje" type="text" class="form-control" aria-describedby="pasajeHelpBlock"/> 
                                                        <span id="pasajeHelpBlock" class="form-text text-muted">Ingresar nombre del pasaje de residencia.</span>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label for="numeroLugar" class="col-3 col-form-label">Numero de lugar:</label> 
                                                        <div class="col-9">
                                                            <input value="${persona?.idDireccion.numeroLugar}" id="numeroLugar" name="numeroLugar" placeholder="Numero de lugar" type="text" aria-describedby="numeroDeLugarHelpBlock" class="form-control" required="required"/> 
                                                            <span id="numeroLugarHelpBlock" class="form-text text-muted">Ingresar el numero de lugar</span>
                                                        </div>
                                                    </div> 
                                                    <button style="background-color:#009688; color:white;" class="btn btn-success pull-right" type="submit">Guardar</button>
                                                </div>
                                            </div>
                                                </div>
                                            </div>
                                        </div>  
                                        </fieldset>
            
                                    </g:form>
                                    <!--</div>-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <script type="text/javascript">
            $(document).ready(function () {

            var navListItems = $('div.setup-panel div a'),
                    allWells = $('.setup-content'),
                    allNextBtn = $('.nextBtn');

            allWells.hide();

            navListItems.click(function (e) {
                e.preventDefault();
                var $target = $($(this).attr('href')),
                        $item = $(this);

                if (!$item.hasClass('disabled')) {
                    navListItems.removeClass('btn-primary').addClass('btn-default');
                    $item.addClass('btn-primary');
                    allWells.hide();
                    $target.show();
                    $target.find('input:eq(0)').focus();
                }
            });

            allNextBtn.click(function(){
                var curStep = $(this).closest(".setup-content"),
                    curStepBtn = curStep.attr("id"),
                    nextStepWizard = $('div.setup-panel div a[href="#' + curStepBtn + '"]').parent().next().children("a"),
                    curInputs = curStep.find("input[type='text'],input[type='url']"),
                    isValid = true;

                $(".form-group").removeClass("has-error");
                for(var i=0; i<curInputs.length; i++){
                    if (!curInputs[i].validity.valid){
                        isValid = false;
                        $(curInputs[i]).closest(".form-group").addClass("has-error");
                    }
                }

                if (isValid)
                    nextStepWizard.removeAttr('disabled').trigger('click');
            });

            $('div.setup-panel div a.btn-primary').trigger('click');
        });
    </script>
    <style>
            body{ 
            margin-top:40px; 
        }

        .stepwizard-step p {
            margin-top: 10px;
        }

        .stepwizard-row {
            display: table-row;
        }

        .stepwizard {
            display: table;
            width: 100%;
            position: relative;
        }

        .stepwizard-step button[disabled] {
            opacity: 1 !important;
            filter: alpha(opacity=100) !important;
        }

        .stepwizard-row:before {
            top: 14px;
            bottom: 0;
            position: absolute;
            content: " ";
            width: 100%;
            height: 1px;
            background-color: #ccc;
            z-order: 0;

        }

        .stepwizard-step {
            display: table-cell;
            text-align: center;
            position: relative;
        }

        .btn-circle {
        width: 30px;
        height: 30px;
        text-align: center;
        padding: 6px 0;
        font-size: 12px;
        line-height: 1.428571429;
        border-radius: 15px;
        }
    </style>
    </body>
</html>
