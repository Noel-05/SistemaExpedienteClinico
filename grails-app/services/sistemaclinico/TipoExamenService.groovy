package sistemaclinico

import grails.gorm.services.Service

@Service(TipoExamen)
interface TipoExamenService {

    TipoExamen get(Serializable id)

    List<TipoExamen> list(Map args)

    Long count()

    void delete(Serializable id)

    TipoExamen save(TipoExamen tipoExamen)

}