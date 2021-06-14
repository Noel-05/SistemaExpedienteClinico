package sistemaclinico

import grails.gorm.services.Service

@Service(ExamenFisico)
interface ExamenFisicoService {

    ExamenFisico get(Serializable id)

    List<ExamenFisico> list(Map args)

    Long count()

    void delete(Serializable id)

    ExamenFisico save(ExamenFisico examenFisico)

}