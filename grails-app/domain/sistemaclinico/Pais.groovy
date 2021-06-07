package sistemaclinico

class Pais {

    Long id
    Long codTelefono
    String nombre


    static constraints = {
        id(nullable:true)
    }
    static mapping = {
        table "PAIS"
        version false
        id column:"IDPAIS" 
        codTelefono column: "CODTELEFONO"
        nombre column: "NOMBREPAIS"
    }
}
