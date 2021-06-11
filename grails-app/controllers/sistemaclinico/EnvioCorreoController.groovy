package sistemaclinico

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*
import org.apache.commons.codec.digest.DigestUtils

class EnvioCorreoController {

    def index() { }
    
    def send() {
        
        sendMail {
            to params.address
            subject params.subject + " (" + params.usuario +")"
            text params.body + ": " + params.usuario + " \nEnviado el " + new Date() + "\nAtte.:  " + params.correo
        }

        flash.message = "Mensaje enviado el " + new Date()
        redirect action:"index"
    }
}
