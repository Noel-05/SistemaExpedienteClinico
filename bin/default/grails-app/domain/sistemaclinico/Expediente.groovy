package sistemaclinico

class Expediente {

    Long id
    Date fechaCreado
    Persona idPersona
    
    static mappedBy = [idPersona: "id"]

    static constraints = {
        id(nullaber:true)
        idPersona(nullable:true)
    }
    static mapping = {
        table "EXPEDIENTE"
        version false
        id column: "IDEXPEDIENTE"
        fechaCreado column: "FECHACREADO"
        idPersona column: "IDPERSONA", generator: "foreign"
    }
}
