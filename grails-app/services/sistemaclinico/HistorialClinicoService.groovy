package sistemaclinico

import grails.gorm.services.Service

@Service(HistorialClinico)
interface HistorialClinicoService {

    HistorialClinico get(Serializable id)

    List<HistorialClinico> list(Map args)

    Long count()

    void delete(Serializable id)

    HistorialClinico save(HistorialClinico historialClinico)

}