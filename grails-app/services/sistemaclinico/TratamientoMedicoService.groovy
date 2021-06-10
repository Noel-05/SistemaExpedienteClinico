package sistemaclinico

import grails.gorm.services.Service

@Service(TratamientoMedico)
interface TratamientoMedicoService {

    TratamientoMedico get(Serializable id)

    List<TratamientoMedico> list(Map args)

    Long count()

    void delete(Serializable id)

    TratamientoMedico save(TratamientoMedico tratamientoMedico)

}