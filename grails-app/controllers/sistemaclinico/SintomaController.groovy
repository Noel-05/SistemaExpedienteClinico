package sistemaclinico

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class SintomaController {

    SintomaService sintomaService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [sintomaInstanceList: Sintoma.list(params), sintomaInstanceTotal: Sintoma.count()]
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [sintomaInstanceList: Sintoma.list(params), sintomaInstanceTotal: Sintoma.count()]
    }

    def show(Long id) {
        respond sintomaService.get(id)
    }

    def create() {
        respond new Sintoma(params)
    }

    def save(Sintoma sintoma) {
        if (sintoma == null) {
            notFound()
            return
        }

        try {
            sintomaService.save(sintoma)
        } catch (ValidationException e) {
            respond sintoma.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'sintoma.label', default: 'Sintoma'), sintoma.id])
                redirect sintoma
            }
            '*' { respond sintoma, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond sintomaService.get(id)
    }

    def update(Sintoma sintoma) {
        if (sintoma == null) {
            notFound()
            return
        }

        try {
            sintomaService.save(sintoma)
        } catch (ValidationException e) {
            respond sintoma.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'sintoma.label', default: 'Sintoma'), sintoma.id])
                redirect sintoma
            }
            '*'{ respond sintoma, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        sintomaService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'sintoma.label', default: 'Sintoma'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'sintoma.label', default: 'Sintoma'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
