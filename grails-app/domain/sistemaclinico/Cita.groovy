package sistemaclinico

class Cita {
    Integer id
    Date fechaHoraPlanificada
    Integer cancelada
    String apellidopac
    String nombrepac
    Motivo idMotivo
    
    static mappedBy = [idMotivo:"id"]

    static constraints = {
        id(nullable:true)
        fechaHoraPlanificada(nullable:false)
        cancelada(nullable:true)
        nombrepac(nullable:true)
        apellidopac(nullable:true)
        idMotivo(nullable:false)
    }
    
    static mapping = {
        idMotivo lazy:false
        version false
        table "CITA"
        id column: "IDCITA"
        fechaHoraPlanificada column: "FECHAHORAPLANIFICADA"
        cancelada column: "CANCELADA"
        nombrepac column: "NOMBREPAC"
        apellidopac column: "APELLIDOPAC"
        idMotivo column: "IDMOTIVO"
    }
    
    String toString(){
        "${idMotivo}"
    }

    // String toString(){
    //     "$nombre $apellido"
    // }
}
