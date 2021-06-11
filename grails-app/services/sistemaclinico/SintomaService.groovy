package sistemaclinico

import grails.gorm.services.Service

@Service(Sintoma)
interface SintomaService {

    Sintoma get(Serializable id)

    List<Sintoma> list(Map args)

    Long count()

    void delete(Serializable id)

    Sintoma save(Sintoma sintoma)

}