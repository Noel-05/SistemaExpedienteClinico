package sistemaclinico

class HistorialClinico {
    Long id
    Persona idPersona 
    String nombre
    String apellido
    Date fechaNacimiento
    String enfermedadesPadecidas
    String parentesco
    Direccion idDireccion

    static mappedBy=[idPersona: "id", idDireccion: "id"]

    static constraints = {
        enfermedadesPadecidas(nullable:true)
        id(nullable:true)
        fechaNacimiento(withFormat: 'DD/MM/YY')
    }
    static mapping = {
        table "HISTORIALCLINICO"
        version false
        id column: "IDHISTORIAL"
        nombre column: "NOMBRE"
        apellido column: "APELLIDO"
        fechaNacimiento column: "FECHANACIMIENTO"
        enfermedadesPadecidas column: "ENFERMEDADESPADECIDAS"
        parentesco column: "PARENTESCO"
        idPersona column: "IDPERSONA", generator: "foreing" 
        idDireccion column: "IDDIRECCION", generator: "foreing"
    }
    public void setDireccion (Direccion idDireccion){
        this.idDireccion = idDireccion
    }
}

