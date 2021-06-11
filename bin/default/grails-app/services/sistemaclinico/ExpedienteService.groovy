package sistemaclinico

import grails.gorm.services.Service

@Service(Expediente)
interface ExpedienteService {

    Expediente get(Serializable id)

    List<Expediente> list(Map args)

    Long count()

    void delete(Serializable id)

    Expediente save(Expediente expediente)

}