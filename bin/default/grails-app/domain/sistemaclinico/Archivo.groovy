package sistemaclinico

class Archivo {

    Integer idArchivo
    String ruta
    Date fechaSubida

    static constraints = {
        idArchivo(unique: true, nullable: false, blank: false)
        ruta(unique: false, nullable: false, blank: false)
        fechaSubida(unique: false, nullable: false, blank: false)
    };

    static mapping = {
        version: false
        table: "ARCHIVO"
        idArchivo column: "IDARCHIVO"
        ruta column: "RUTA"
        fechaSubida column: "FECHASUBIDA"
    };
}
