package sistemaclinico

class Prueba {

    Integer id
    String descripcion

    static constraints = {
        descripcion maxSize: 20
    }

    String toString() {
        "${this.class.name} : $id"
    }
}
