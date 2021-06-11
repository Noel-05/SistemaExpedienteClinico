package sistemaclinico

class Cita {
    Long id
    Motivo motivo
    Date fechaPlanificada
    Boolean cancelada
    String nombre
    String apellido
    static mappedBy =[motivo:"IDMOTIVO"]

    static constraints = {
        motivo(nullable:false)
        fechaPlanificada(nullable:false)
        cancelada(nullable:false)
        nombre (nullable:false)
        apellido (nullable:false)
    }
    static mapping={
        table "CITA"
        version false
        id column:"IDCITA"
        motivo column:"IDMOTIVO"
        fechaPlanificada column:"FECHAHORAPLANIFICADA"
        nombre column:"NOMBREPAC"
        apellido column:"APELLIDOPAC"
        cancelada column:"CANCELADA"
    }
}
