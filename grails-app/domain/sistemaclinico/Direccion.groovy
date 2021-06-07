package sistemaclinico

class Direccion {

    Long id
    String calle
    String colonia
    String pasaje
    String numeroLugar
    Municipio idMunicipio

    static mappedBy = [idMunicipio: "id"] 

    static constraints = {
        pasaje(nullable: true)
        colonia(nullable:true)
        id(nullable:true)
    }
    static mapping = {
        table "DIRECCION"
        version false
        id column: "IDDIRECCION"
        calle column: "CALLE"
        colonia column: "COLONIA"
        pasaje column: "PASAJE"
        numeroLugar column: "NUMEROLUGAR"
        idMunicipio column: "IDMUNICIPIO"
    }
}
