package sistemaclinico

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class IndicacionController {

    IndicacionService indicacionService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond indicacionService.list(params), model:[indicacionCount: indicacionService.count()]
    }

    def show(Long id) {
        respond indicacionService.get(id)
    }

    def create() {
        respond new Indicacion(params)
    }

    def save(Indicacion indicacion) {
        if (indicacion == null) {
            notFound()
            return
        }

        try {
            indicacionService.save(indicacion)
        } catch (ValidationException e) {
            respond indicacion.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'indicacion.label', default: 'Indicacion'), indicacion.id])
                redirect indicacion
            }
            '*' { respond indicacion, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond indicacionService.get(id)
    }

    def update(Indicacion indicacion) {
        if (indicacion == null) {
            notFound()
            return
        }

        try {
            indicacionService.save(indicacion)
        } catch (ValidationException e) {
            respond indicacion.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'indicacion.label', default: 'Indicacion'), indicacion.id])
                redirect indicacion
            }
            '*'{ respond indicacion, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        indicacionService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'indicacion.label', default: 'Indicacion'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'indicacion.label', default: 'Indicacion'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
