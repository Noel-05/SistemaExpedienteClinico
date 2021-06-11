package sistemaclinico
//habria que crear la tabla porque directamente no tenemos donde guardar esa data
class RegistroIngreso {
    Long id
    Expediente expediente
    Camilla camilla
    Date fechaIngreso
    Date fechaAlta
    String comentario
    static mappedBy = [expediente:"IDEXPEDIENTE", camilla:"IDCAMILLA"]
    static constraints = {
        id(nullaber:false)
        fechaIngreso (nullable:false)
        fechaAlta (nullable:false)
        comentario (nullable:false)
        expediente(nullable:true)
        camilla(nullable:true)
    }
    static mapping={
        table "REGISTROINGRESO"
        version false
        id column: "IDREGISTROINGRESO"
        fechaIngreso column: "FECHAINGRESO"
        fechaAlta column: "FECHAALTA"
        comentario column: "COMENTARIO"
        expediente: "IDEXPEDIENTE"
        camilla: "IDCAMILLA"
    }
}
