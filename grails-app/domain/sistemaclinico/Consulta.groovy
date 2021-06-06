package sistemaclinico

class Consulta {
    Long id
    //Persona medico
    //Cita cita
    //Expediente expediente
    Date fechaRealizada
    String comentario
    static constraints = {
        id(nullaber:true)
        fechaRealizada(nullable:false)
        comentario(nullable:false)
    }
    static mapping={
        table "Consulta"
        version false
        id column: "idConsulta"
        fechaRealizada column: "fechaRealizada"
        comentario column: "String"
    }
}
