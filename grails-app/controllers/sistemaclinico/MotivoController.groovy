package sistemaclinico

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class MotivoController {

    MotivoService motivoService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        // Agregar estó
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [motivoInstanceList: Motivo.list(params), motivoInstanceTotal: Motivo.count()]
    }

    def show(Long id) {
        respond motivoService.get(id)
    }

    def create() {
        respond new Motivo(params)
    }

    def save(Motivo motivo) {
        if (motivo == null) {
            notFound()
            return
        }

        try {
            motivoService.save(motivo)
        } catch (ValidationException e) {
            respond motivo.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'motivo.label', default: 'Motivo'), motivo.id])
                redirect action:"index"
            }
            '*' { respond motivo, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond motivoService.get(id)
    }

    def update(Motivo motivo) {
        if (motivo == null) {
            notFound()
            return
        }

        try {
            motivoService.save(motivo)
        } catch (ValidationException e) {
            respond motivo.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'motivo.label', default: 'Motivo'), motivo.id])
                redirect motivo
            }
            '*'{ respond motivo, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        motivoService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'motivo.label', default: 'Motivo'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'motivo.label', default: 'Motivo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
