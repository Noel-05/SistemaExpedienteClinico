package sistemaclinico

import grails.gorm.services.Service

@Service(RegistroIngreso)
interface RegistroIngresoService {

    RegistroIngreso get(Serializable id)

    List<RegistroIngreso> list(Map args)

    Long count()

    void delete(Serializable id)

    RegistroIngreso save(RegistroIngreso registroIngreso)

}