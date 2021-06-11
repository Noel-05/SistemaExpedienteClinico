package sistemaclinico

class Hospital {
    Long id
    Clinica clinica
    String nombre
    static mappedBy = [clinica:"IDCLINICA"]
    static constraints = {
        //id (nullable:false)
        nombre (nullable:false)
        clinica (nullable:false)
    }
    static mapping={
        table "HOSPITAL"
        version false
        id column:"IDHOSPITAL"
        clinica column:"IDCLINICA"
        nombre column:"NOMBRE"
    }
}
