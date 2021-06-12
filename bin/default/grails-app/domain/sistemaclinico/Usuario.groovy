package sistemaclinico

class Usuario {
    
    String username
    String pass
    String correo
    Integer estadoEmpelado
    RolUsuario idRol
    
    static mappedBy = [idRol:"id"]
    
    static constraints = {
        username(unique:true, nullable:false, blank:false)
        pass(nullable:false, blank:false, password:true)
        correo(unique:true, nullable:false, blank:false, email:true)
        estadoEmpelado(nullable:true)
        idRol(nullable:false)
    }
    
    static mapping = {
        idRol lazy:false
        version false
        table "USUARIO"
        username column: "USERNAME"
        pass column: "PASSWORD"
        correo column: "CORREO"
        estadoEmpelado column: "ESTADOEMPLEADO"
        idRol column: "IDROL"
    }
    
    String toString(){
        "${username}"
    }
}
