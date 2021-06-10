package sistemaclinico

class Departamento {

    Long id
    String nombre
    Pais idPais
    
    static mappedBy = [idPais: "id"] 

    static constraints = {
        id(nullable:true)
    }
    static mapping = {
        table "DEPARTAMENTO"
        version false
        id column: "IDDEPARTAMENTO"
        nombre column: "NOMBREDEPARTAMENTO"
        idPais column: "IDPAIS"
    }
}
