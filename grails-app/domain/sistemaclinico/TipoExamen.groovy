package sistemaclinico

class TipoExamen {

    Integer idTipoExamen
    String nombre

    static constraints = {
        idTipoExamen(unique:true, nullable:false, blank:false)
        nombre(unique:false, nullable: false, blank:false)
    }

    static mapping = {
        version: false
        table: "TIPOEXAMEN"
        idTipoExamen column: "IDTIPOEXAMEN"
        nombre column: "NOMBRE"
    }
}
