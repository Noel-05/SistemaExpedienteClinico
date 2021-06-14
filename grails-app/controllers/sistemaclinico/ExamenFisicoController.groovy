package sistemaclinico

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class ExamenFisicoController {

    ExamenFisicoService examenFisicoService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [examenFisicoInstanceList: ExamenFisico.list(params), examenFisicoInstanceTotal: ExamenFisico.count()]
    }

    def show(Long id) {
        respond examenFisicoService.get(id)
    }

    def create() {
        respond new ExamenFisico(params)
    }

    def save(ExamenFisico examenFisico) {
        if (examenFisico == null) {
            notFound()
            return
        }

        try {
            examenFisicoService.save(examenFisico)
        } catch (ValidationException e) {
            respond examenFisico.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'examenFisico.label', default: 'ExamenFisico'), examenFisico.id])
                redirect examenFisico
            }
            '*' { respond examenFisico, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond examenFisicoService.get(id)
    }

    def update(ExamenFisico examenFisico) {
        if (examenFisico == null) {
            notFound()
            return
        }

        try {
            examenFisicoService.save(examenFisico)
        } catch (ValidationException e) {
            respond examenFisico.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'examenFisico.label', default: 'ExamenFisico'), examenFisico.id])
                redirect examenFisico
            }
            '*'{ respond examenFisico, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        examenFisicoService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'examenFisico.label', default: 'ExamenFisico'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'examenFisico.label', default: 'ExamenFisico'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
