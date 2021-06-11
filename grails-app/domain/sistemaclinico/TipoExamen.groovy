package sistemaclinico

class TipoExamen {

    Integer id
    String nombreExamen

    static constraints = {
        nombreExamen(unique:false, nullable: false, blank:false)
    }

    static mapping = {
        version false
        table: "TIPODEEXAMEN"
        id column: "IDTIPOEXAMEN"
        nombreExamen column: "NOMBREEXAMEN"
    }

    String toString(){
        nombreExamen
    }
}
