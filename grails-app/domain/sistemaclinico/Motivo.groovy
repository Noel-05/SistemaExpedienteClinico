package sistemaclinico

class Motivo {
    Long id
    String motivo
    static constraints = {
        motivo(nullable:false)
    }
    static mapping ={
        table "motivo"
        version false
        id column: "IDMOTIVO"
        motivo column:"RAZONMOTIVO"
    }
}
