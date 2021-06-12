package sistemaclinico

class ExamenClinico {

    String nombreExamenClinico
    Date fechaRealizado
    String comentarios
    TipoExamen idTipoExamen
    Cita idCita
    //Empleado idEmpleado
    Diagnostico idDiagnostico

    static mappedBy = [idTipoExamen: "IDTIPOEXAMEN", idCita: "IDCITA", idDiagnostico: "IDDIAGNOSTICO"]

    static constraints = {
        nombreExamenClinico(unique: false, nullable: false, blank: false)
        fechaRealizado(unique: false, nullable: false, blank: false)
        comentarios(unique: false, nullable: false, blank: false)
        idTipoExamen(nullable: false)
        idCita(nullable: false)
        idDiagnostico(nullable: true)
    }

    static mapping = {
        table: "EXAMENCLINICO"
        version false
        id column: "IDEXAMENCLINICO"
        nombreExamenClinico column: "NOMBREEXAMENCLINICO"
        fechaRealizado column: "FECHAREALIZADO"
        comentarios column: "COMENTARIOS"
        idTipoExamen column: "IDTIPOEXAMEN"
        idCita column: "IDCITA"
        idDiagnostico column: "IDDIAGNOSTICO"
    }
}
