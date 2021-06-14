package sistemaclinico

class Persona implements Serializable {
    //Long id
    String id
    Persona perIdPersona
    Direccion idDireccion
    String username
    Date fechaNacimiento
    String nombres 
    String apellidoDeCasado
    Long estadoCivil
    String apellidos 
    Long genero
    String dui
    
    static hasMany=[idContacto: Contacto, idHistorialClinico: HistorialClinico]
    static mappedBy = [idDireccion: 'id'] 

    static constraints = {
        fechaNacimiento(withFormat: 'DD/MM/YY')
        dui( unique: true) 
        perIdPersona(nullable:true)
        idDireccion(nullable:true)
        apellidoDeCasado(nullable:true)
        username(nullable:true)
        estadoCivil( nullable:true)
        genero(nullable:true)
        idContacto(nullable:true)
    }
    
    static mapping = {
        table "PERSONA"
        version false
        //id column:"ID", 
        id column: "IDPERSONA", generator: 'assigned', type: 'string'
        perIdPersona column: "PER_IDPERSONA"
        idDireccion column: "IDDIRECCION"
        username column: "USERNAME"
        fechaNacimiento column: "FECHANACIMIENTO"
        nombres column: "NOMBRES"
        apellidoDeCasado column: "APELLIDODECASADO"
        estadoCivil column: "ESTADOCIVIL"
        apellidos column: "APELLIDOS"
        genero column: "GENERO"
        dui column: "DOCUMENTOIDENTIDAD"
        idContacto cascade: 'all-delete-orphan'
        idDireccion cascade: 'all-delete-orphan'
    }
    public void setId (String id){
        this.id = id
    }
    public void setDireccion (Direccion idDireccion){
        this.idDireccion = idDireccion
    }
    "${nombres + apellidos}"
}
