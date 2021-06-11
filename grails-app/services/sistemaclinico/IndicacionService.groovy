package sistemaclinico

import grails.gorm.services.Service

@Service(Indicacion)
interface IndicacionService {

    Indicacion get(Serializable id)

    List<Indicacion> list(Map args)

    Long count()

    void delete(Serializable id)

    Indicacion save(Indicacion indicacion)

}