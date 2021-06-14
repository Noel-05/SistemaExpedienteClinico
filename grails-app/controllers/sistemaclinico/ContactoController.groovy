package sistemaclinico

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class ContactoController {

    ContactoService contactoService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Persona id) { 
        respond Contacto.findAllByIdPersona(id), model: [contactos: Contacto.findAllByIdPersona(id), paciente: id ]
    }

    def show(Long id) {
        respond contactoService.get(id) 
    }

    def create() {
        respond new Contacto(params), model:[paciente: params.id] 
    }
 
    def save(Contacto contacto) {
        if (contacto == null) {
            notFound()
            return
        }

        try {
            contactoService.save(contacto)
        } catch (ValidationException e) {
            respond contacto.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'contacto.label', default: 'Contacto'), contacto.id])
                redirect (action: "index", id:"${params.idPersona}")  
            }
            '*' { respond contacto, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond contactoService.get(id)
    }

    def update(Contacto contacto) {
        if (contacto == null) {
            notFound()
            return
        }

        try {
            contactoService.save(contacto)
        } catch (ValidationException e) {
            respond contacto.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'contacto.label', default: 'Contacto'), contacto.id])
                println params.idPersona
                redirect (action: "index", id:"${params.idPersona}")
            }
            '*'{ respond contacto, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }
        def cont=contactoService.get(id) 
        def contPer=cont.idPersona.id
        contactoService.delete(id)
        
        request.withFormat { 
            form multipartForm {
                flash.message = message(code: 'Registro eliminado.', args: [message(code: 'contacto.label', default: 'Contacto'), id])
                redirect (action: "index", id:"${contPer}", model:[paciente: contPer]) 
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'contacto.label', default: 'Contacto'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
