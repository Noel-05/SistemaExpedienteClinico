package sistemaclinico

class Indicacion {
    Long id
    Medicamento medicamento
    Date fechaInicio
    Date fechaFinal
    String dosis
    String contraindicaciones
    //static belongsTo=[tratamiento: TratamientoMedico]
    //static mappedBy =[medicamento:"IDMEDICAMENTO", tratamiento:"IDTRATAMIENTO"]
    static constraints = {
        //id (nullable:false)
        medicamento (nullable:false)
        //tratamiento (nullable:false)
        fechaInicio (nullable:false)
        fechaFinal (nullable:false)
        dosis (nullable:false)
        contraindicaciones (nullable:false)
    }
    static mapping={
        table "INDICACION"
        version false
        id column:"IDINDICACION"
        medicamento column:"IDMEDICAMENTO"
        //tratamiento column:"IDTRATAMIENTO"
        fechaInicio column:"FECHAINICIOINDICACION"
        fechaFinal column:"FECHAFINALINDICACION"
        dosis column:" DOSIS"
        contraindicaciones column: "CONTRAINDICACIONES"
    }
    public void setIdTratamiento(TratamientoMedico tratamiento){
        this.tratamiento=tratamiento
    }
}
