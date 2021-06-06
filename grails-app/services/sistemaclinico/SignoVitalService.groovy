package sistemaclinico

import grails.gorm.services.Service

@Service(SignoVital)
interface SignoVitalService {

    SignoVital get(Serializable id)

    List<SignoVital> list(Map args)

    Long count()

    void delete(Serializable id)

    SignoVital save(SignoVital signoVital)

}