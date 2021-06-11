package sistemaclinico

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class AntecedentePersonalController {

    AntecedentePersonalService antecedentePersonalService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Expediente id) {
        respond AntecedentePersonal.findAllByIdExpediente(id), model:[antecedentes: AntecedentePersonal.findAllByIdExpediente(id), expediente: id]
        
    }

    def show(Long id) {
        respond antecedentePersonalService.get(id)
    }

    def create() {
        respond new AntecedentePersonal(params), model:[expediente: params.id]
    }

    def save(AntecedentePersonal antecedentePersonal) {
        if (antecedentePersonal == null) {
            notFound()
            return
        }

        try {
            antecedentePersonalService.save(antecedentePersonal)
        } catch (ValidationException e) {
            respond antecedentePersonal.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'antecedentePersonal.label', default: 'AntecedentePersonal'), antecedentePersonal.id])
                redirect (action: "index", id:"${params.idExpediente}")
            }
            '*' { respond antecedentePersonal, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond antecedentePersonalService.get(id)
    }

    def update(AntecedentePersonal antecedentePersonal) {
        if (antecedentePersonal == null) {
            notFound()
            return
        }

        try {
            antecedentePersonalService.save(antecedentePersonal)
        } catch (ValidationException e) {
            respond antecedentePersonal.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'antecedentePersonal.label', default: 'AntecedentePersonal'), antecedentePersonal.id])
                redirect (action: "index", id:"${params.idExpediente}")
            }
            '*'{ respond antecedentePersonal, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        antecedentePersonalService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'antecedentePersonal.label', default: 'AntecedentePersonal'), id])
                redirect (action: "index", contoller:"expediente")
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'antecedentePersonal.label', default: 'AntecedentePersonal'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
