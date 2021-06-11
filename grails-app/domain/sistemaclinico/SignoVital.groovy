package sistemaclinico

class SignoVital {
    Long id
    Float peso
    Float temperatura
    Float estatura
    Float presioArterial
    Consulta consulta

    static mappedBy = [consulta: "IDCONSULTA"]
    static constraints = {
        //id(nullaber:true)
        peso(nullable:false)
        temperatura(nullable:false)
        estatura(nullable:false)
        presioArterial(nullable:false)
        consulta(nullable:false)
    }
    static mapping={
        table "SIGNOSVITALES"
        version false
        id column: "IDSIGNOSVITALES"
        peso column: "PESO"
        temperatura column: "TEMPERATURA"
        estatura column: "ESTATURA"
        presioArterial column: "PRESIONARTERIAL"
        consulta: "IDCONSULTA"
    }
}
