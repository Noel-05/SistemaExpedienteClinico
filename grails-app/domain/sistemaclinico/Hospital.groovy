package sistemaclinico

class Hospital {
    Long id
    Clinica clinica
    static mappedBy = [clinica:"IDCLINICA"]
    static constraints = {
        id (nullable:false)
        clinica (nullable:false)
    }
    static mapping={
        table "HOSPITAL"
        version false
        id column:"IDHOSPITAL"
        clinica column:"IDCLINICA"
    }
}
