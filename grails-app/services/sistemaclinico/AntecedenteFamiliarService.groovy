package sistemaclinico

import grails.gorm.services.Service

@Service(AntecedenteFamiliar)
interface AntecedenteFamiliarService {

    AntecedenteFamiliar get(Serializable id)

    List<AntecedenteFamiliar> list(Map args)

    Long count()

    void delete(Serializable id)

    AntecedenteFamiliar save(AntecedenteFamiliar antecedenteFamiliar)

}