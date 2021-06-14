package sistemaclinico

class ExamenFisico {

    String nombreExamenFisico
    Date fechaRealizado
    String comentarios
    Archivo idArchivo

    static mappedBy = [idArchivo: "IDARCHIVO"]

    static constraints = {
        nombreExamenFisico(unique: false, nullable: false, blank: false)
        fechaRealizado(unique: false, nullable: false, blank: false)
        comentarios(unique: false, nullable: false, blank: false)
        idArchivo(nullable: true)
    }

    static mapping = {
        table: "EXAMENFISICO"
        version false
        id column: "IDEXAMENFISICO"
        nombreExamenFisico column: "NOMBREEXAMENFISICO"
        fechaRealizado column: "FECHAREALIZADO"
        comentarios column: "COMENTARIOS"
        idArchivo column: "IDARCHIVO"
    }
}
