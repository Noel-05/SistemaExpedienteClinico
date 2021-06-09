package sistemaclinico

class ExamenClinico {

    Integer idExamenClinico;
    String nombre;
    Date fechaRealizado;
    String comentarios;
    TipoExamen idTipoExamen;
    DetalleExamen idDetalleExamen;

    static mappedBy = [idTipoExamen: "id", idDetalleExamen: "id"];

    static constraints = {
        idExamenClinico(unique: true, nullable: false, blank: false),
        nombre(unique: false, nullable: false, blank: false),
        fechaRealizado(unique: false, nullable: false, blank: false),
        comentarios(unique: false, nullable: false, blank: false),
        idTipoExamen(nullable: false),
        idDetalleExamen(nullable: false)
    };

    static mapping = {
        idTipoExamen lazy: false,
        idDetalleExamen lazy: false,
        version: false,
        table: "EXAMENCLINICO",
        idExamenClinico column: "IDEXAMENCLINICO",
        nombre column: "NOMBRE",
        fechaRealizado column: "FECHAREALIZADO",
        comentarios column: "COMENTARIOS"
    };
}
