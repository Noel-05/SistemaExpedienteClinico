package sistemaclinico

class Sintoma {

    Consulta idConsulta
    Date fechaInicio
    Integer diasConMalestar
    String descripcion

    static mappedBy = [idConsulta: "id"]

    static constraints = {
        idConsulta(nullable: false)
        fechaInicio(unique: false, nullable: false, blank: false)
        diasConMalestar(unique: false, nullable: false, blank: false)
        descripcion(unique: false, nullable: true, blank: false)
    }

    static mapping = {
        idConsulta lazy: false
        version: false
        table: "SINTOMA"
        idConsulta column: "IDCONSULTA"
        fechaInicio column: "FECHAINICIO"
        diasConMalestar column: "DIASCONMALESTAR"
        descripcion column: "DESCRIPCION"
    }
}
