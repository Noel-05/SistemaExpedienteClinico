package sistemaclinico

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class PruebaUnoController {

    PruebaUnoService pruebaUnoService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond pruebaUnoService.list(params), model:[pruebaUnoCount: pruebaUnoService.count()]
    }

    def show(Long id) {
        respond pruebaUnoService.get(id)
    }

    def create() {
        respond new PruebaUno(params)
    }

    def save(PruebaUno pruebaUno) {
        if (pruebaUno == null) {
            notFound()
            return
        }

        try {
            pruebaUnoService.save(pruebaUno)
        } catch (ValidationException e) {
            respond pruebaUno.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'pruebaUno.label', default: 'PruebaUno'), pruebaUno.id])
                redirect pruebaUno
            }
            '*' { respond pruebaUno, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond pruebaUnoService.get(id)
    }

    def update(PruebaUno pruebaUno) {
        if (pruebaUno == null) {
            notFound()
            return
        }

        try {
            pruebaUnoService.save(pruebaUno)
        } catch (ValidationException e) {
            respond pruebaUno.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'pruebaUno.label', default: 'PruebaUno'), pruebaUno.id])
                redirect pruebaUno
            }
            '*'{ respond pruebaUno, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        pruebaUnoService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'pruebaUno.label', default: 'PruebaUno'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'pruebaUno.label', default: 'PruebaUno'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
