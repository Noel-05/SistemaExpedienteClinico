package sistemaclinico

class TratamientoMedico {
    Long id
    Date fechaAsignado
    Diagnostico diagnostico
    String comentario
    //static hasMany=[indicacion: Indicacion]
    //static mappedBy=[indicacion:"IDINDICACION"] 
    static constraints = {
        //id (nullable:false)
        fechaAsignado (nullable:false)
        diagnostico(nullable:false)
        //indicacion (nullable:false)
    }
    static mapping={
        table "TRATAMIENTO"
        version false
        id column:"IDTRATAMIENTO"
        fechaAsignado: "FECHAASIGNADO"
        comentario:"COMENTARIO"
        diagnostico:"IDDIAGNOSTICO"
    }
}
