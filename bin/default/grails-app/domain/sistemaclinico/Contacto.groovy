package sistemaclinico

class Contacto {

    Long id
    String telefono
    String correo
    
    static belongsTo=[idPersona: Persona]
    
    static constraints = {
        telefono(minSize:8, maxSize:8, unique:true)
        correo(unique:true, email:true, nullable:true)
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
    public void setIdPersona (Persona idPersona){
        this.idPersona = idPersona 
    }
    public void setTelefono (String telefono){
        this.telefono = telefono
    }
    public void setCorreo (String correo){
        this.correo = correo 
    }
}
