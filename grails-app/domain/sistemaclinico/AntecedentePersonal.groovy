package sistemaclinico

class AntecedentePersonal {

    Long id
    String sintoma
    Date iniciosSintoma
    String automedicacion
    
    static belongsTo=[idExpediente: Expediente]
    static mappedBy = [idExpediente: "id"] 
    
    static constraints = {
        sintoma(nullable:false)
        iniciosSintoma(nullable:false)
        id(nullable:true)
    }
    static mapping = {
        table "ANTECEDENTEPERSONAL"
        version false
        id column: "IDANTECEDENTEPERSONAL", generator: "sequence", params: [sequence:"ANTECEDENTE_PERSONAL_ID_SEQ"]
        sintoma column: "SINTOMA"
        iniciosSintoma column: "INICIOSINTOMA"
        automedicacion column: "AUTOMEDICACION"
        idExpediente column: "IDEXPEDIENTE"
    }
}
