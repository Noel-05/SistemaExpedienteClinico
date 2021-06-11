package sistemaclinico

class Via {
    Long id
    String nombre
    static constraints = {
        id (nullable:false)
        nombre (nullable:false)
    }
    static mapping={
        table "VIA"
        version false
        id column:"IDVIA"
        nombre column:"NOMBREVIA"
    }
}
