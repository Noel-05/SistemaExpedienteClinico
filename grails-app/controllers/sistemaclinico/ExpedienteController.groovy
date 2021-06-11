package sistemaclinico

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class ExpedienteController {

    ExpedienteService expedienteService
    PersonaService personaService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Expediente.findAll(), model:[expedientes: Expediente.findAll() ]
    }

    def show(Long id) {
        respond expedienteService.get(id)
    }

    def create() {
        respond new Expediente(params), model:[paciente: params.id] 
    }

    def save(Expediente expediente) {
        if (expediente == null) {
            notFound()
            return
        }

        try {
            expedienteService.save(expediente)
        } catch (ValidationException e) {
            respond expediente.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'expediente.label', default: 'Expediente'), expediente.id])
                redirect (action: "index")
            }
            '*' { respond expediente, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond expedienteService.get(id)
    }

    def update(Expediente expediente) {
        if (expediente == null) {
            notFound()
            return
        }

        try {
            expedienteService.save(expediente)
        } catch (ValidationException e) {
            respond expediente.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'expediente.label', default: 'Expediente'), expediente.id])
                redirect (action: "index")
            }
            '*'{ respond expediente, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        expedienteService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'expediente.label', default: 'Expediente'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'expediente.label', default: 'Expediente'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
