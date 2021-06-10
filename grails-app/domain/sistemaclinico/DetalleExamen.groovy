package sistemaclinico

class DetalleExamen {

    Integer idDetalleExamen
    String parametro
    String valor_
    String unidad

    static constraints = {
        idDetalleExamen(unique: true, nullable: false, blank: false)
        parametro(unique: false, nullable: false, blank: false)
        valor_(unique: false, nullable: false, blank: false)
        unidad(unique: false, nullable: false, blank: false)
    };

    static mapping = {
        version: false
        table: "DETALLEEXAMEN"
        idDetalleExamen column: "IDDETALLEEXAMEN"
        parametro column: "PARAMETRO"
        valor_ column: "VALOR_"
        unidad column: "UNIDAD"
    }
}
