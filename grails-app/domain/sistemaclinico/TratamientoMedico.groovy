package sistemaclinico

class TratamientoMedico {
    Long id
    Date fechaAsignado
    String comentario
    //static hasMany=[indicacion: Indicacion]
    static constraints = {
        id (nullable:false)
        fechaAsignado (nullable:false)
        indicacion (nullable:false)
    }
    static mapping={
        table "TRATAMIENTOMEDICO"
        version false
        id column:"IDTRATAMIENTO"
        fechaAsignado: "FECHAASIGNADO"
        comentario:"COMENTARIO"
    }
}
