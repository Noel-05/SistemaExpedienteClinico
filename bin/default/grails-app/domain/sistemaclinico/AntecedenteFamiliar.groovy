package sistemaclinico

class AntecedenteFamiliar {

    Long id
    String descripcion
    String relacionAntecedenteFamiliar
    static belongsTo=[idExpediente: Expediente]

    static mappedBy = [idExpediente: "id"]

    static constraints = {
        relacionAntecedenteFamiliar(nullable:false)
        id(nullable:true)
    }
    static mapping = {
        table "ANTECEDENTEFAMILIAR"
        version false
        id column: "IDANTECEDENTEFAMILIAR"
        descripcion column: "DESCRIPCIONANTECEDENTEFAMILIAR"
        relacionAntecedenteFamiliar column: "RELACION_ANTECEDENTE_FAMILIAR"
        idExpediente column: "IDEXPEDIENTE"
    }
}
