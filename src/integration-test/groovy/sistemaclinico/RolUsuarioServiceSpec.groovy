package sistemaclinico

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class RolUsuarioServiceSpec extends Specification {

    RolUsuarioService rolUsuarioService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new RolUsuario(...).save(flush: true, failOnError: true)
        //new RolUsuario(...).save(flush: true, failOnError: true)
        //RolUsuario rolUsuario = new RolUsuario(...).save(flush: true, failOnError: true)
        //new RolUsuario(...).save(flush: true, failOnError: true)
        //new RolUsuario(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //rolUsuario.id
    }

    void "test get"() {
        setupData()

        expect:
        rolUsuarioService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<RolUsuario> rolUsuarioList = rolUsuarioService.list(max: 2, offset: 2)

        then:
        rolUsuarioList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        rolUsuarioService.count() == 5
    }

    void "test delete"() {
        Long rolUsuarioId = setupData()

        expect:
        rolUsuarioService.count() == 5

        when:
        rolUsuarioService.delete(rolUsuarioId)
        sessionFactory.currentSession.flush()

        then:
        rolUsuarioService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        RolUsuario rolUsuario = new RolUsuario()
        rolUsuarioService.save(rolUsuario)

        then:
        rolUsuario.id != null
    }
}
