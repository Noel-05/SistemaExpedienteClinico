package sistemaclinico

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*
import java.time.LocalDate
import java.time.format.DateTimeFormatter
import java.text.SimpleDateFormat

class PersonaController {

    PersonaService personaService
    ContactoService contactoService
    DireccionService direccionService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond personaService.list(params), model:[paciente: personaService.list()]
    }

    def show(String id) {
        def persona
        persona=Persona.findById(id)
        def targetUri = params.targetUri ?: "/${id}"   
        //redirect(uri: targetUri)
        //println persona.nombres
        respond persona, model:[uri: targetUri]  
    }
    def municipios(Long id){
        def municipio=Municipio.findById(id)
        respond municipio
    }

    def create() {
        def departamentos=Departamento.findAll()
        def municipios=Municipio.findAll()
        println municipios.nombre
        respond new Persona(params), model:[departamentos: Departamento.findAll(), municipios: Municipio.findAll()]
    }

    def save() {
        Persona persona = new Persona(params)
        Contacto contacto=new Contacto(params)
        Direccion direccion=new Direccion(params)

        direccion.setCalle(params.calle)
        direccion.setColonia(params.colonia)
        direccion.setPasaje(params.pasaje)
        direccion.setNumeroLugar(params.numeroLugar)
        direccion.setMunicipio(Municipio.findById(params.idMunicipio))
        
        persona.setId(params.id)
        contacto.setTelefono(params.telefono)
        contacto.setCorreo(params.correo)

        if (persona == null) {  
            notFound()
            return
        }

        try {
            
            direccionService.save(direccion)
            persona.setDireccion(direccion)
            println direccion
            personaService.save(persona)
            contacto.setIdPersona(personaService.get(params.id))
            
            contactoService.save(contacto)
            
        } catch (ValidationException e) {
            println contacto.errors
            respond persona.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'Paciente creado con exito', args: [message(code: 'persona.label', default: 'Persona'), persona.id])
                 redirect(action: "index", method:"GET")
            }
            '*' { respond persona, [status: CREATED] }
        }
    }
    def edit(String id) {
        respond personaService.get(id), model:[departamentos: Departamento.findAll(), municipios: Municipio.findAll()]
    }

    def update() {
        Persona persona = new Persona(params)
        Direccion direccion=new Direccion(params)

        direccion.setCalle(params.calle)
        direccion.setColonia(params.colonia)
        direccion.setPasaje(params.pasaje)
        direccion.setNumeroLugar(params.numeroLugar)
        direccion.setMunicipio(Municipio.findById(params.idMunicipio))

        persona.setId(params.id)
        if (persona == null) {
            notFound()
            return
        }

        try {
            direccionService.save(direccion)
            persona.setDireccion(direccion)
            println direccion
            personaService.save(persona)
        } catch (ValidationException e) {
            respond persona.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'Paciente actualizado con éxito.', args: [message(code: 'persona.label', default: 'Persona'), persona.id])
                redirect(action: "index", method:"GET")
            }
            '*'{ respond persona, [status: OK] }
        }
    }

    def delete(String id) {
        if (id == null) {
            notFound()
            return
        }
        personaService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'Paciente eliminado.', args: [message(code: 'persona.label', default: 'Persona'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'persona.label', default: 'Persona'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
