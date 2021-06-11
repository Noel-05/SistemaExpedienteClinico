package sistemaclinico

class CodigoInternacional {
    Long id
    String nombreCodigo
    static constraints = {
    id (nullable:false)
    nombreCodigo(nullable:false)
    }
    static mapping = {
        table "CODIGOSINTERNACIONALES"
        version false
        id column:"CODIGOINTERNACIONAL"
        nombreCodigo column: "NOMBRECODIGOINTERNACIONAL"
    }
}
