package sistemaclinico

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class AntecedenteFamiliarController {

    AntecedenteFamiliarService antecedenteFamiliarService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Expediente id) {
        respond AntecedenteFamiliar.findAllByIdExpediente(id), model:[antecedentes: AntecedenteFamiliar.findAllByIdExpediente(id), expediente: id]
        }

    def show(Long id) {
        respond antecedenteFamiliarService.get(id)
    }

    def create() {
        respond new AntecedenteFamiliar(params), model:[expediente: params.id]
    }

    def save(AntecedenteFamiliar antecedenteFamiliar) {
        if (antecedenteFamiliar == null) {
            notFound()
            return
        }

        try {
            antecedenteFamiliarService.save(antecedenteFamiliar)
        } catch (ValidationException e) {
            respond antecedenteFamiliar.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'antecedenteFamiliar.label', default: 'AntecedenteFamiliar'), antecedenteFamiliar.id])
                redirect (action: "index", id:"${params.idExpediente}")
            }
            '*' { respond antecedenteFamiliar, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond antecedenteFamiliarService.get(id)
    }

    def update(AntecedenteFamiliar antecedenteFamiliar) {
        if (antecedenteFamiliar == null) {
            notFound()
            return
        }

        try {
            antecedenteFamiliarService.save(antecedenteFamiliar)
        } catch (ValidationException e) {
            respond antecedenteFamiliar.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'antecedenteFamiliar.label', default: 'AntecedenteFamiliar'), antecedenteFamiliar.id])
                redirect (action: "index", id:"${params.idExpediente}")
            }
            '*'{ respond antecedenteFamiliar, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        antecedenteFamiliarService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'antecedenteFamiliar.label', default: 'AntecedenteFamiliar'), id])
                redirect (action: "index", id:"${params.idExpediente}")
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'antecedenteFamiliar.label', default: 'AntecedenteFamiliar'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
