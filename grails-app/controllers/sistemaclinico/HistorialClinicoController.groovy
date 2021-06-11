package sistemaclinico

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class HistorialClinicoController {

    HistorialClinicoService historialClinicoService
    DireccionService direccionService
    PersonaService personaService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond personaService.list(params), model:[paciente: personaService.list()]
    }

    def show(Persona id) { 
        def historiales= HistorialClinico.findAllByIdPersona(id)
        println  historiales
        respond HistorialClinico.findAllByIdPersona(id), model:[historiales: HistorialClinico.findAllByIdPersona(id), paciente: id]
    }

    def create() {
        def municipios=Municipio.findAll()
        println municipios.nombre
        respond new HistorialClinico(params), model:[paciente: params.id, departamentos: Departamento.findAll(), municipios: Municipio.findAll()] 
    }

    def save() {
        HistorialClinico historialClinico=new HistorialClinico(params)
        Direccion direccion=new Direccion(params)

        direccion.setCalle(params.calle)
        direccion.setColonia(params.colonia)
        direccion.setPasaje(params.pasaje)
        direccion.setNumeroLugar(params.numeroLugar)
        direccion.setMunicipio(Municipio.findById(params.idMunicipio))
        if (historialClinico == null) {
            notFound()
            return
        }

        try {
            direccionService.save(direccion)
            historialClinico.setDireccion(direccion)
            historialClinicoService.save(historialClinico)
        } catch (ValidationException e) {
            respond historialClinico.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'historialClinico.label', default: 'HistorialClinico'), historialClinico.id])
                redirect (action: "index")
            }
            '*' { respond historialClinico, [status: CREATED] }
        }
    }

    def edit(Long id) {
         respond historialClinicoService.get(id), model:[departamentos: Departamento.findAll(), municipios: Municipio.findAll()]
    }

    def update() {
        HistorialClinico historialClinico=new HistorialClinico(params)
        Direccion direccion=new Direccion(params)
        println params.calle

        direccion.setCalle(params.calle)
        direccion.setColonia(params.colonia)
        direccion.setPasaje(params.pasaje)
        direccion.setNumeroLugar(params.numeroLugar)
        direccion.setMunicipio(Municipio.findById(params.idMunicipio))
        if (historialClinico == null) {
            notFound()
            return
        }

        try {
            direccionService.save(direccion)
            historialClinico.setDireccion(direccion)
            historialClinicoService.save(historialClinico)
        } catch (ValidationException e) { 
            respond historialClinico.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'historialClinico.label', default: 'HistorialClinico'), historialClinico.id])
                redirect (action: "show", id:"${params.idPersona}")
            }
            '*'{ respond historialClinico, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }
        historialClinicoService.delete(id)  

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'historialClinico.label', default: 'HistorialClinico'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'historialClinico.label', default: 'HistorialClinico'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
