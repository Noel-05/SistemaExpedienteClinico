package sistemaclinico

class Usuario {
    
    String username
    String pass
    Integer estadoEmpelado
    RolUsuario idRol
    
    static mappedBy = [idRol:"id"]
    
    static constraints = {
        username(unique:true, nullable:false, blank:false)
        pass(nullable:false, blank:false, password:true)
        estadoEmpelado(nullable:true)
        idRol(nullable:false)
    }
    
    static mapping = {
        table "USUARIO"
        version false
        username column: "USERNAME"
        pass column: "PASSWORD"
        estadoEmpelado column: "ESTADOEMPLEADO"
        idRol column: "IDROL"
    }
    
    String toString(){
        "${username}"
    }
}
