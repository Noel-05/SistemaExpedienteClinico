package sistemaclinico

import grails.gorm.services.Service

@Service(AntecedentePersonal)
interface AntecedentePersonalService {

    AntecedentePersonal get(Serializable id)

    List<AntecedentePersonal> list(Map args)

    Long count()

    void delete(Serializable id)

    AntecedentePersonal save(AntecedentePersonal antecedentePersonal)

}