package sistemaclinico

class Municipio {
    Long id
    String nombre
    Departamento idDepartamento

    static mappedBy = [idDepartamento: "id"]
    
    static constraints = {
        id(nullable:true)
    }
     static mapping = {
        table "MUNICIPAIO"
        version false
        id column: "IDMUNICIPIO"
        nombre column:"NOMBREMUNICIPIO"
        idDepartamento column: "IDDEPARTAMENTO"
    }
}
