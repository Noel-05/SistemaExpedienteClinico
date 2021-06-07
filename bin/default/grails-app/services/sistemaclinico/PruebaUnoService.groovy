package sistemaclinico

import grails.gorm.services.Service

@Service(PruebaUno)
interface PruebaUnoService {

    PruebaUno get(Serializable id)

    List<PruebaUno> list(Map args)

    Long count()

    void delete(Serializable id)

    PruebaUno save(PruebaUno pruebaUno)

}