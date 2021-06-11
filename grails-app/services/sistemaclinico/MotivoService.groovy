package sistemaclinico

import grails.gorm.services.Service

@Service(Motivo)
interface MotivoService {

    Motivo get(Serializable id)

    List<Motivo> list(Map args)

    Long count()

    void delete(Serializable id)

    Motivo save(Motivo motivo)

}