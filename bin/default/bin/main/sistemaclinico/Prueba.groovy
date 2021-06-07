package sistemaclinico

class Prueba {

    Integer idPrueba
    Integer version
    String descripcion

    static constraints = {
        descripcion maxSize: 20
    }

    String toString() {
        "${this.class.name} : $descripcion"
    }
}
