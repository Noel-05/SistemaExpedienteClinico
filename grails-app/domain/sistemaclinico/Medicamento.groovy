package sistemaclinico

class Medicamento {
    Long id
    String nombre
    Date fechaLote
    Date fechaCaducidad
    Via via 
    static mappedBy = [via:"IDVIA"]
    static constraints = {
        id (nullable:false)
        nombre (nullable:false)
        fechaLote (nullable:false)
        fechaCaducidad (nullable:false)
        via (nullable:false)
    }
    static mapping={
        table "MEDICAMENTO"
        version false
        id column: "IDMEDICAMENTO"
        nombre column:"NOMBRE"
        fechaLote column: "FECHALOTE"
        fechaCaducidad column:"FECHACADUCIDAD"
        via column: "IDVIA"
    }
}
