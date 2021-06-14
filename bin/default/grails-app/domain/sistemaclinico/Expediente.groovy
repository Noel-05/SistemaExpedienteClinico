package sistemaclinico

class Expediente {

    Long id
    Date fechaCreado
    Persona idPersona

    static hasMany=[idAntecedenteFamiliar: AntecedenteFamiliar, idAntecedentePersonal: AntecedentePersonal] 
    static mappedBy = [idPersona: "id"]

    static constraints = {
        id(nullaber:true)
        idPersona(unique:true)
    }
    static mapping = {
        table "EXPEDIENTE"
        version false
        id column: "IDEXPEDIENTE", generator: "sequence", params: [sequence:"expediente_id_sequence"]
        fechaCreado column: "FECHACREADO"
        idPersona column: "IDPERSONA", generator: "foreign"
    }
}
