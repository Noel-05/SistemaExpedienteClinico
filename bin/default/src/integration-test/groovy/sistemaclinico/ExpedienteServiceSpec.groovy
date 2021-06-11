package sistemaclinico

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class ExpedienteServiceSpec extends Specification {

    ExpedienteService expedienteService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Expediente(...).save(flush: true, failOnError: true)
        //new Expediente(...).save(flush: true, failOnError: true)
        //Expediente expediente = new Expediente(...).save(flush: true, failOnError: true)
        //new Expediente(...).save(flush: true, failOnError: true)
        //new Expediente(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //expediente.id
    }

    void "test get"() {
        setupData()

        expect:
        expedienteService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Expediente> expedienteList = expedienteService.list(max: 2, offset: 2)

        then:
        expedienteList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        expedienteService.count() == 5
    }

    void "test delete"() {
        Long expedienteId = setupData()

        expect:
        expedienteService.count() == 5

        when:
        expedienteService.delete(expedienteId)
        sessionFactory.currentSession.flush()

        then:
        expedienteService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Expediente expediente = new Expediente()
        expedienteService.save(expediente)

        then:
        expediente.id != null
    }
}
