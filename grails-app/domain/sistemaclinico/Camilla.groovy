package sistemaclinico

class Camilla {
    Long id
    Habitacion habitacion
    Integer disponible

    static mappedBy = [ habilacion:"IDHABITACION"]

    static constraints = {
        //habitacion(nullable:false)
        disponible(nullable:false)
    }
    static mapping={
        table "CAMILLA"
        version false
        id column:"IDCAMILLA"
        habitacion column:"IDHABITACION"
        disponible column:"DISPONIBLE"
    }
}
