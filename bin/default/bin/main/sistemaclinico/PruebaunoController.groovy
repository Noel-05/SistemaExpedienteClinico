package sistemaclinico

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class PruebaunoController {

    PruebaunoService pruebaunoService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond pruebaunoService.list(params), model:[pruebaunoCount: pruebaunoService.count()]
    }

    def show(Long id) {
        respond pruebaunoService.get(id)
    }

    def create() {
        respond new Pruebauno(params)
    }

    def save(Pruebauno pruebauno) {
        if (pruebauno == null) {
            notFound()
            return
        }

        try {
            pruebaunoService.save(pruebauno)
        } catch (ValidationException e) {
            respond pruebauno.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'pruebauno.label', default: 'Pruebauno'), pruebauno.id])
                redirect pruebauno
            }
            '*' { respond pruebauno, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond pruebaunoService.get(id)
    }

    def update(Pruebauno pruebauno) {
        if (pruebauno == null) {
            notFound()
            return
        }

        try {
            pruebaunoService.save(pruebauno)
        } catch (ValidationException e) {
            respond pruebauno.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'pruebauno.label', default: 'Pruebauno'), pruebauno.id])
                redirect pruebauno
            }
            '*'{ respond pruebauno, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        pruebaunoService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'pruebauno.label', default: 'Pruebauno'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'pruebauno.label', default: 'Pruebauno'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
