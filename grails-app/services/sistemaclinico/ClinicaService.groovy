package sistemaclinico

import grails.gorm.services.Service

@Service(Clinica)
interface ClinicaService {

    Clinica get(Serializable id)

    List<Clinica> list(Map args)

    Long count()

    void delete(Serializable id)

    Clinica save(Clinica clinica)

}