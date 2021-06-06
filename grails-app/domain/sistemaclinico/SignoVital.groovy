package sistemaclinico

class SignoVital {
    Long id
    Float peso
    Float temperatura
    Float estatura
    Float presioArterial
    Consulta consulta
    static constraints = {
        id(nullaber:true)
        peso(nullable:false)
        temperatura(nullable:false)
        estatura(nullable:false)
        presioArterial(nullable:false)
    }
    static mapping={
        table "SignosVitales"
        version false
        id column: "idSintoma"
        peso column: "peso"
        temperatura column: "temperatura"
        estatura column: "estatura"
        presionArterial column: "presionArterial"
    }
}
