package sistemaclinico

class Clinica {
    Long id
    String nombre
    Direccion direccion
    //Contacto contacto
    Date inicioOperaciones
    static mappedBy=[direccion:"IDDIRECCION"]
    static constraints = {
        //id(nullable:false)
        nombre(nullable:false)
        direccion(nullable:false)
        //contacto(nullable:false)
        inicioOperaciones(nullable:false)
    }
    static mapping={
        table "CLINICA"
        version false
        id column: "IDCLINICA"
    }
}
