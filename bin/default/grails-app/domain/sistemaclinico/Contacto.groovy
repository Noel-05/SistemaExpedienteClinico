package sistemaclinico

class Contacto {

    Long id
    String telefono
    String correo
    Persona idPersona

    static mappedBy = [idPersona: "id"]

    static constraints = {
        telefono(minSize:8, maxSize:8, unique:true)
        correo(unique:true, email:true)
        idPersona(nullable:true)
        id(nullable:true)
    }
    static mapping = {
        table "CONTACTO"
        version false
        id column: "ID"
        telefono column: "TELEFONOCONTACTO"
        correo column: "CORREOCONTACTO"
        idPersona column: "IDPERSONA"
    }
}
