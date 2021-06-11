package sistemaclinico

class Diagnostico {
    Long id
    CodigoInternacional codigoInternacional
    Consulta consulta
    Date fechaRealizado
    Boolean esFinal
    String comentarios
    String conclusion
    static mappedBy=[codigoInternacional:"CODIGOINTERNACIONAL",consulta:"IDCONSULTA"]
    static constraints = {
        consulta(nullable:false)
        //id(nullable:false)
        codigoInternacional(nullable:false)
        fechaRealizado(nullable:false)
        esFinal(nullable:false)
        comentarios(nullable:false)
        conclusion(nullable:false)
    }
    static mapping={
        table "DIAGNOSTICO"
        version false
        id column:"IDDIAGNOSTICO"
        codigoInternacional column:"CODIGOINTERNACIONAL"
        consulta column: "IDCONSULTA"
        fechaRealizado column:"FECHAREALIZADO"
        esFinal column:"ESFINAL"
        comentarios column:"COMENTARIOSDIAGNOSTICOS"
        conclusion column:"CONCLUSION"
    }
}
