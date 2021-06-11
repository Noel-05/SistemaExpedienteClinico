package sistemaclinico

class ExamenFisico {

    Integer idExamenFisico
    String nombre
    Date fechaRealizado
    String comentarios
    Archivo idArchivo

    static mappedBy = [idArchivo: "id"]

    static constraints = {
        idExamenFisico(unique: true, nullable: false, blank: false)
        nombre(unique: false, nullable: false, blank: false)
        fechaRealizado(unique: false, nullable: false, blank: false)
        comentarios(unique: false, nullable: false, blank: false)
        idArchivo(nullable: false)
    };

    static mapping = {
        idArchivo lazy: false
        version: false
        table: "EXAMENFISICO"
        idExamenFisico column: "IDEXAMENFISICO"
        nombre column: "NOMBRE"
        fechaRealizado column: "FECHAREALIZADO"
        comentarios column: "COMENTARIOS"
        idArchivo column: "IDARCHIVO"
    };
}
