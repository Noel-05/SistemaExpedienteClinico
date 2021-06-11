package sistemaclinico

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class TipoExamenController {

    TipoExamenService tipoExamenService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond tipoExamenService.list(params), model:[tipoExamenCount: tipoExamenService.count()]
    }

    def show(Long id) {
        respond tipoExamenService.get(id)
    }

    def create() {
        respond new TipoExamen(params)
    }

    def save(TipoExamen tipoExamen) {
        if (tipoExamen == null) {
            notFound()
            return
        }

        try {
            tipoExamenService.save(tipoExamen)
        } catch (ValidationException e) {
            respond tipoExamen.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'tipoExamen.label', default: 'TipoExamen'), tipoExamen.id])
                redirect tipoExamen
            }
            '*' { respond tipoExamen, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond tipoExamenService.get(id)
    }

    def update(TipoExamen tipoExamen) {
        if (tipoExamen == null) {
            notFound()
            return
        }

        try {
            tipoExamenService.save(tipoExamen)
        } catch (ValidationException e) {
            respond tipoExamen.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'tipoExamen.label', default: 'TipoExamen'), tipoExamen.id])
                redirect tipoExamen
            }
            '*'{ respond tipoExamen, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        tipoExamenService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'tipoExamen.label', default: 'TipoExamen'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'tipoExamen.label', default: 'TipoExamen'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
