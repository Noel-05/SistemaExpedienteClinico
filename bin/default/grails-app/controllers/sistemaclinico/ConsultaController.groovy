package sistemaclinico

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class ConsultaController {

    ConsultaService consultaService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond consultaService.list(params), model:[consultaCount: consultaService.count()]
    }

    def show(Long id) {
        respond consultaService.get(id)
    }

    def create() {
        respond new Consulta(params)
    }

    def save(Consulta consulta) {
        if (consulta == null) {
            notFound()
            return
        }

        try {
            consultaService.save(consulta)
        } catch (ValidationException e) {
            respond consulta.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'consulta.label', default: 'Consulta'), consulta.id])
                redirect consulta
            }
            '*' { respond consulta, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond consultaService.get(id)
    }

    def update(Consulta consulta) {
        if (consulta == null) {
            notFound()
            return
        }

        try {
            consultaService.save(consulta)
        } catch (ValidationException e) {
            respond consulta.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'consulta.label', default: 'Consulta'), consulta.id])
                redirect consulta
            }
            '*'{ respond consulta, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        consultaService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'consulta.label', default: 'Consulta'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'consulta.label', default: 'Consulta'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
