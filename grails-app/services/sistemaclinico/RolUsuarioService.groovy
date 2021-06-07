package sistemaclinico

import grails.gorm.services.Service

@Service(RolUsuario)
interface RolUsuarioService {

    RolUsuario get(Serializable id)

    List<RolUsuario> list(Map args)

    Long count()

    void delete(Serializable id)

    RolUsuario save(RolUsuario rolUsuario)

}