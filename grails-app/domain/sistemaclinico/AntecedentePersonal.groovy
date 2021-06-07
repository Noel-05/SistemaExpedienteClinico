package sistemaclinico

class AntecedentePersonal {

    Long id
    String sintoma
    Date iniciosSintoma
    String automedicacion
    Expediente idExpediente

    static mappedBy = [idExpediente: "id"] 
    
    static constraints = {
        sintoma(nullable:false)
        iniciosSintoma(nullable:false)
        id(nullable:true)
    }
    static mapping = {
        table "ANTECEDENTEPERSONAL"
        version false
        id column: "IDANTECEDENTEPERSONAL"
        sintoma column: "SINTOMA"
        iniciosSintoma column: "INICIOSSINTOMA"
        automedicacion column: "AUTOMEDICACION"
        idExpediente column: "IDEXPEDIENTE"
    }
}
