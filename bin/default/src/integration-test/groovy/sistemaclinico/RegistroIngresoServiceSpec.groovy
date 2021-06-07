package sistemaclinico

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class RegistroIngresoServiceSpec extends Specification {

    RegistroIngresoService registroIngresoService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new RegistroIngreso(...).save(flush: true, failOnError: true)
        //new RegistroIngreso(...).save(flush: true, failOnError: true)
        //RegistroIngreso registroIngreso = new RegistroIngreso(...).save(flush: true, failOnError: true)
        //new RegistroIngreso(...).save(flush: true, failOnError: true)
        //new RegistroIngreso(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //registroIngreso.id
    }

    void "test get"() {
        setupData()

        expect:
        registroIngresoService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<RegistroIngreso> registroIngresoList = registroIngresoService.list(max: 2, offset: 2)

        then:
        registroIngresoList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        registroIngresoService.count() == 5
    }

    void "test delete"() {
        Long registroIngresoId = setupData()

        expect:
        registroIngresoService.count() == 5

        when:
        registroIngresoService.delete(registroIngresoId)
        sessionFactory.currentSession.flush()

        then:
        registroIngresoService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        RegistroIngreso registroIngreso = new RegistroIngreso()
        registroIngresoService.save(registroIngreso)

        then:
        registroIngreso.id != null
    }
}
