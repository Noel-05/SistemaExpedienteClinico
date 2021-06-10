package sistemaclinico

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class TratamientoMedicoController {

    TratamientoMedicoService tratamientoMedicoService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond tratamientoMedicoService.list(params), model:[tratamientoMedicoCount: tratamientoMedicoService.count()]
    }

    def show(Long id) {
        respond tratamientoMedicoService.get(id)
    }

    def create() {
        respond new TratamientoMedico(params)
    }

    def save(TratamientoMedico tratamientoMedico) {
        if (tratamientoMedico == null) {
            notFound()
            return
        }

        try {
            tratamientoMedicoService.save(tratamientoMedico)
        } catch (ValidationException e) {
            respond tratamientoMedico.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'tratamientoMedico.label', default: 'TratamientoMedico'), tratamientoMedico.id])
                redirect tratamientoMedico
            }
            '*' { respond tratamientoMedico, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond tratamientoMedicoService.get(id)
    }

    def update(TratamientoMedico tratamientoMedico) {
        if (tratamientoMedico == null) {
            notFound()
            return
        }

        try {
            tratamientoMedicoService.save(tratamientoMedico)
        } catch (ValidationException e) {
            respond tratamientoMedico.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'tratamientoMedico.label', default: 'TratamientoMedico'), tratamientoMedico.id])
                redirect tratamientoMedico
            }
            '*'{ respond tratamientoMedico, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        tratamientoMedicoService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'tratamientoMedico.label', default: 'TratamientoMedico'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'tratamientoMedico.label', default: 'TratamientoMedico'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
