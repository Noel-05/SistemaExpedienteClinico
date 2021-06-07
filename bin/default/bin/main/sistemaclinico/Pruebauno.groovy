package sistemaclinico

class Pruebauno {
    Long version
    Long id
    
    Long codigo_prueba_uno
    String nombre_prueba_uno
    String titulo_prueba_uno

    static constraints = {
        nombre_prueba_uno maxSize: 100
        titulo_prueba_uno maxSize: 100
    }
    
    String toString() {
        nombre_prueba_uno
    }
}
