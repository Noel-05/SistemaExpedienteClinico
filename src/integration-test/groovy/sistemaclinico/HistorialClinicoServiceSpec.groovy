package sistemaclinico

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class HistorialClinicoServiceSpec extends Specification {

    HistorialClinicoService historialClinicoService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new HistorialClinico(...).save(flush: true, failOnError: true)
        //new HistorialClinico(...).save(flush: true, failOnError: true)
        //HistorialClinico historialClinico = new HistorialClinico(...).save(flush: true, failOnError: true)
        //new HistorialClinico(...).save(flush: true, failOnError: true)
        //new HistorialClinico(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //historialClinico.id
    }

    void "test get"() {
        setupData()

        expect:
        historialClinicoService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<HistorialClinico> historialClinicoList = historialClinicoService.list(max: 2, offset: 2)

        then:
        historialClinicoList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        historialClinicoService.count() == 5
    }

    void "test delete"() {
        Long historialClinicoId = setupData()

        expect:
        historialClinicoService.count() == 5

        when:
        historialClinicoService.delete(historialClinicoId)
        sessionFactory.currentSession.flush()

        then:
        historialClinicoService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        HistorialClinico historialClinico = new HistorialClinico()
        historialClinicoService.save(historialClinico)

        then:
        historialClinico.id != null
    }
}
