package sistemaclinico

class PruebaUno {
    
    Long id
    String nombre_prueba_uno
    String titulo_prueba_uno

    static constraints = {
        nombre_prueba_uno(nullable:false)
        titulo_prueba_uno(nullable:false)
        id(nullable:true)
    }
    
    static mapping = {
        table "PRUEBAUNO"
        version false
        id column: "CODIGO_PRUEBA_UNO"
        nombre_prueba_uno column: "NOMBRE_PRUEBA_UNO"
        titulo_prueba_uno column: "TITULO_PRUEBA_UNO"
    }
}
