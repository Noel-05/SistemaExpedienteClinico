package sistemaclinico

class Consulta {
    Long id
    Persona medico
    Cita cita
    Expediente expediente
    Date fechaRealizada
    String comentario

    static mappedBy = [cita:"IDCITA",expediente:"IDEXPEDIENTE", medico:"IDMEDICO"]

    static constraints = {
        //id(nullaber:false)
        fechaRealizada(nullable:false)
        comentario(nullable:false)
        medico(nullable:false)
        cita(nullable:false)
        expediente(nullable:false)
    }
    static mapping={
        table "CONSULTA"
        version false
        id column: "IDCONSULTA"
        fechaRealizada column: "FECHAREALIZADA"
        comentario column: "COMENTARIO"
        medico column: "IDEMPLEADO"
        cita column: "IDCITA"
        expediente column: "IDEXPEDIENTE"
    }

    String toString(){
        id
    }
}
