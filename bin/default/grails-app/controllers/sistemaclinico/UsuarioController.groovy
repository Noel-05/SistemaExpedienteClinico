package sistemaclinico

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*
import org.apache.commons.codec.digest.DigestUtils

class UsuarioController {

    UsuarioService usuarioService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    /* def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond usuarioService.list(params), model:[usuarioCount: usuarioService.count()]
    }*/
    
    def index() {
        // Agregar estó
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [usuarioInstanceList: Usuario.list(params), usuarioInstanceTotal: Usuario.count()]
    }
    
    def login(){
        
    }
    
    def validarLogin(){
        def usuario = Usuario.findWhere(["username":params.username, "pass":params.pass, "estadoEmpelado":1])
        if (!usuario) {
            flash.message = "No se encontró el Usuario ${params.username}. Porfavor verifique el Username o el Password."
            redirect(action:'login')
            //return
        }
        else {
            session.usuario = usuario
            redirect(controller:'usuario', action:'index')
        }
        
        /*if(params.username == "admin" && params.pass == "pass"){
            flash.message = "login succeed"
            session.user = "admin"

        }else{
            flash.message = "login failed"
        }
        
        redirect(action: 'login')*/
    }
    
    def logout = {
        session.usuario = null
        redirect(action: 'login')
    }
    
    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [usuarioInstanceList: Usuario.list(params), usuarioInstanceTotal: Usuario.count()]
    }

    def show(Long id) {
        respond usuarioService.get(id)
    }

    def create() {
        respond new Usuario(params)
    }

    def save(Usuario usuario) {
        /*params.pass = DigestUtils.md5Hex(params.pass)
        def u = usuarioService.create(usuario)
        
        if(!u.hasErrors()) {
            flash.message = "Usuario ${u.username} created"
            redirect(action:show, id:u.id)
        }
        
        else {
            render(view:'create',model:[usuarioInstance:u])
        }*/
        if (usuario == null) {
            notFound()
            return
        }

        try {
            usuarioService.save(usuario)
        } catch (ValidationException e) {
            respond usuario.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'usuario.label', default: 'Usuario'), usuario.id])
                redirect usuario
            }
            '*' { respond usuario, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond usuarioService.get(id)
    }

    def update(Usuario usuario) {
        if (usuario == null) {
            notFound()
            return
        }

        try {
            usuarioService.save(usuario)
        } catch (ValidationException e) {
            respond usuario.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'usuario.label', default: 'Usuario'), usuario.id])
                redirect usuario
            }
            '*'{ respond usuario, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        usuarioService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'usuario.label', default: 'Usuario'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'usuario.label', default: 'Usuario'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
