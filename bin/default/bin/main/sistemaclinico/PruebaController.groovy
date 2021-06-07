package sistemaclinico

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

import grails.gorm.transactions.Transactional

@SuppressWarnings(['LineLength'])
class PruebaController {

    static namespace = 'scaffolding'

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond pruebaService.list(params), model:[pruebaCount: pruebaService.count()]
    }

    def show(Long id) {
        respond pruebaService.get(id)
    }

    @SuppressWarnings(['FactoryMethodName', 'GrailsMassAssignment'])
    def create() {
        respond new Prueba(params)
    }

    @Transactional 
    def save(Prueba prueba) {
        if (prueba == null) {
            notFound()
            return
        }

        try {
            pruebaService.save(prueba)
        } catch (ValidationException e) {
            respond prueba.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'prueba.label', default: 'Prueba'), prueba.id])
                redirect prueba
            }
            '*' { respond prueba, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond pruebaService.get(id)
    }

    @Transactional 
    def update(Prueba prueba) {
        if (prueba == null) {
            notFound()
            return
        }

        try {
            pruebaService.save(prueba)
        } catch (ValidationException e) {
            respond prueba.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'prueba.label', default: 'Prueba'), prueba.id])
                redirect prueba
            }
            '*'{ respond prueba, [status: OK] }
        }
    }

    @Transactional 
    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        pruebaService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'prueba.label', default: 'Prueba'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'prueba.label', default: 'Prueba'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
