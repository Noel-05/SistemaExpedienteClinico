package sistemaclinico

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class ExamenClinicoController {

    ExamenClinicoService examenClinicoService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond examenClinicoService.list(params), model:[examenClinicoCount: examenClinicoService.count()]
    }

    def show(Long id) {
        respond examenClinicoService.get(id)
    }

    def create() {
        respond new ExamenClinico(params)
    }

    def save(ExamenClinico examenClinico) {
        if (examenClinico == null) {
            notFound()
            return
        }

        try {
            examenClinicoService.save(examenClinico)
        } catch (ValidationException e) {
            respond examenClinico.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'examenClinico.label', default: 'ExamenClinico'), examenClinico.id])
                redirect examenClinico
            }
            '*' { respond examenClinico, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond examenClinicoService.get(id)
    }

    def update(ExamenClinico examenClinico) {
        if (examenClinico == null) {
            notFound()
            return
        }

        try {
            examenClinicoService.save(examenClinico)
        } catch (ValidationException e) {
            respond examenClinico.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'examenClinico.label', default: 'ExamenClinico'), examenClinico.id])
                redirect examenClinico
            }
            '*'{ respond examenClinico, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        examenClinicoService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'examenClinico.label', default: 'ExamenClinico'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'examenClinico.label', default: 'ExamenClinico'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
