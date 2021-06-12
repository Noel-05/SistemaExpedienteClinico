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
        id column: "IDDIRECCION", generator: "sequence", params: [sequence:"DIRECCION_ID_SEQ"]
        calle column: "CALLE"
        colonia column: "COLONIA"
        pasaje column: "PASAJE"
        numeroLugar column: "NUMEROLUGAR"
        idMunicipio column: "IDMUNICIPIO"
    }
    public void setCalle (String calle){
        this.calle = calle
    }
    public void setColonia (String colonia){
        this.colonia = colonia
    }
    public void setPasaje (String pasaje){
        this.pasaje = pasaje
    }
    public void setNumeroLugar (String numeroLugar ){
        this.numeroLugar = numeroLugar
    }
    public void setMunicipio (Municipio idMunicipio){
        this.idMunicipio = idMunicipio
    }
}
