package sistemaclinico
//habria que crear la tabla porque directamente no tenemos donde guardar esa data
class RegistroIngreso {
    Long id
    //Expediente expediente
    //Camilla camilla
    Date fechaIngreso
    Date fechaAlta
    String comentario
    static constraints = {
        id(nullaber:true)
        fechaIngreso (nullable:false)
        fechaAlta (nullable:false)
        comentario (nullable:false)
    }
    static mapping={
        table "registroIngreso"
        version false
        id column: "idRegistroIngreso"
        fechaIngreso column: "fechaIngreso"
        fechaAlta column: "fechaAlta"
        comentario column: "comentario"
    }
}
