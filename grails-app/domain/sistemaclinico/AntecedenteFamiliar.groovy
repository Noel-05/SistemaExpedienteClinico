package sistemaclinico

class AntecedenteFamiliar {

    Long id
    String descripcion
    String relacionAntecedenteFamiliar
    Expediente idExpediente

    static mappedBy = [idExpediente: "id"]

    static constraints = {
        descripcion(blank: true)
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
