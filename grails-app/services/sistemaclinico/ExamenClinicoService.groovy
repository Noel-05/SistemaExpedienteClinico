package sistemaclinico

import grails.gorm.services.Service

@Service(ExamenClinico)
interface ExamenClinicoService {

    ExamenClinico get(Serializable id)

    List<ExamenClinico> list(Map args)

    Long count()

    void delete(Serializable id)

    ExamenClinico save(ExamenClinico examenClinico)

}