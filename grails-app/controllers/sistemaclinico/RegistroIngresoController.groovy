package sistemaclinico

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class RegistroIngresoController {

    RegistroIngresoService registroIngresoService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond registroIngresoService.list(params), model:[registroIngresoCount: registroIngresoService.count()]
    }

    def show(Long id) {
        respond registroIngresoService.get(id)
    }

    def create() {
        respond new RegistroIngreso(params)
    }

    def save(RegistroIngreso registroIngreso) {
        if (registroIngreso == null) {
            notFound()
            return
        }

        try {
            registroIngresoService.save(registroIngreso)
        } catch (ValidationException e) {
            respond registroIngreso.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'registroIngreso.label', default: 'RegistroIngreso'), registroIngreso.id])
                redirect registroIngreso
            }
            '*' { respond registroIngreso, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond registroIngresoService.get(id)
    }

    def update(RegistroIngreso registroIngreso) {
        if (registroIngreso == null) {
            notFound()
            return
        }

        try {
            registroIngresoService.save(registroIngreso)
        } catch (ValidationException e) {
            respond registroIngreso.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'registroIngreso.label', default: 'RegistroIngreso'), registroIngreso.id])
                redirect registroIngreso
            }
            '*'{ respond registroIngreso, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        registroIngresoService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'registroIngreso.label', default: 'RegistroIngreso'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'registroIngreso.label', default: 'RegistroIngreso'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
