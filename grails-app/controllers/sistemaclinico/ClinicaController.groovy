package sistemaclinico

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class ClinicaController {

    ClinicaService clinicaService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond clinicaService.list(params), model:[clinicaCount: clinicaService.count()]
    }

    def show(Long id) {
        respond clinicaService.get(id)
    }

    def create() {
        respond new Clinica(params)
    }

    def save(Clinica clinica) {
        if (clinica == null) {
            notFound()
            return
        }

        try {
            clinicaService.save(clinica)
        } catch (ValidationException e) {
            respond clinica.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'clinica.label', default: 'Clinica'), clinica.id])
                redirect clinica
            }
            '*' { respond clinica, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond clinicaService.get(id)
    }

    def update(Clinica clinica) {
        if (clinica == null) {
            notFound()
            return
        }

        try {
            clinicaService.save(clinica)
        } catch (ValidationException e) {
            respond clinica.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'clinica.label', default: 'Clinica'), clinica.id])
                redirect clinica
            }
            '*'{ respond clinica, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        clinicaService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'clinica.label', default: 'Clinica'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'clinica.label', default: 'Clinica'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
