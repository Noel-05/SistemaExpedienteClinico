package sistemaclinico

class RolUsuario {
    Integer id
    String nombreRol
    Integer estadoEmpleado

    static constraints = {
        nombreRol(nullable:false, blank:false)
        estadoEmpleado(nullable:true)
        id(nullable:true)
    }
    
    static mapping = {
        table "ROL"
        version false
        id column: "IDROL"
        estadoEmpleado column: "ESTADOEMPLEADO"
        nombreRol column: "NOMBREROL"
    }
    
    String toString(){
        "${nombreRol}"
    }
}
