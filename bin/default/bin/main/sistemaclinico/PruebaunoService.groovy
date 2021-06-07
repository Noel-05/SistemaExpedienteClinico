package sistemaclinico

import grails.gorm.services.Service

@Service(Pruebauno)
interface PruebaunoService {

    Pruebauno get(Serializable id)

    List<Pruebauno> list(Map args)

    Long count()

    void delete(Serializable id)

    Pruebauno save(Pruebauno pruebauno)

}