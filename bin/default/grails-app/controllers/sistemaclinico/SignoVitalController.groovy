package sistemaclinico

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class SignoVitalController {

    SignoVitalService signoVitalService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond signoVitalService.list(params), model:[signoVitalCount: signoVitalService.count()]
    }

    def show(Long id) {
        respond signoVitalService.get(id)
    }

    def create() {
        respond new SignoVital(params)
    }

    def save(SignoVital signoVital) {
        if (signoVital == null) {
            notFound()
            return
        }

        try {
            signoVitalService.save(signoVital)
        } catch (ValidationException e) {
            respond signoVital.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'signoVital.label', default: 'SignoVital'), signoVital.id])
                redirect signoVital
            }
            '*' { respond signoVital, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond signoVitalService.get(id)
    }

    def update(SignoVital signoVital) {
        if (signoVital == null) {
            notFound()
            return
        }

        try {
            signoVitalService.save(signoVital)
        } catch (ValidationException e) {
            respond signoVital.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'signoVital.label', default: 'SignoVital'), signoVital.id])
                redirect signoVital
            }
            '*'{ respond signoVital, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        signoVitalService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'signoVital.label', default: 'SignoVital'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'signoVital.label', default: 'SignoVital'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
