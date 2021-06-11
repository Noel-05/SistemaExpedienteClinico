package sistemaclinico

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class RolUsuarioController {

    RolUsuarioService rolUsuarioService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        // Agregar estó
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [rolUsuarioInstanceList: RolUsuario.list(params), rolUsuarioInstanceTotal: RolUsuario.count()]
        //params.max = Math.min(max ?: 10, 100)
        //respond rolUsuarioService.list(params), model:[rolUsuarioCount: rolUsuarioService.count()]
    }
    
    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [rolUsuarioInstanceList: RolUsuario.list(params), rolUsuarioInstanceTotal: RolUsuario.count()]
    }

    def show(Long id) {
        respond rolUsuarioService.get(id)
    }

    def create() {
        respond new RolUsuario(params)
    }

    def save(RolUsuario rolUsuario) {
        if (rolUsuario == null) {
            notFound()
            return
        }

        try {
            rolUsuarioService.save(rolUsuario)
        } catch (ValidationException e) {
            respond rolUsuario.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'rolUsuario.label', default: 'RolUsuario'), rolUsuario.id])
                redirect action:"index"
            }
            '*' { respond rolUsuario, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond rolUsuarioService.get(id)
    }

    def update(RolUsuario rolUsuario) {
        if (rolUsuario == null) {
            notFound()
            return
        }

        try {
            rolUsuarioService.save(rolUsuario)
        } catch (ValidationException e) {
            respond rolUsuario.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'rolUsuario.label', default: 'RolUsuario'), rolUsuario.id])
                redirect rolUsuario
            }
            '*'{ respond rolUsuario, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        rolUsuarioService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'rolUsuario.label', default: 'RolUsuario'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'rolUsuario.label', default: 'RolUsuario'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
