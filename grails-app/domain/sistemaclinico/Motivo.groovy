package sistemaclinico

class Motivo {
    Integer id
    String razonMotivo

    static constraints = {
        razonMotivo(nullable:false)
        id(nullable:true)
    }
    
    static mapping = {
        table "MOTIVO"
        version false
        id column: "IDMOTIVO"
        razonMotivo column: "RAZONMOTIVO"
    }
    
    String toString(){
        "${razonMotivo}"
    }
}
