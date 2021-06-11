package sistemaclinico

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class ExamenClinicoServiceSpec extends Specification {

    ExamenClinicoService examenClinicoService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new ExamenClinico(...).save(flush: true, failOnError: true)
        //new ExamenClinico(...).save(flush: true, failOnError: true)
        //ExamenClinico examenClinico = new ExamenClinico(...).save(flush: true, failOnError: true)
        //new ExamenClinico(...).save(flush: true, failOnError: true)
        //new ExamenClinico(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //examenClinico.id
    }

    void "test get"() {
        setupData()

        expect:
        examenClinicoService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<ExamenClinico> examenClinicoList = examenClinicoService.list(max: 2, offset: 2)

        then:
        examenClinicoList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        examenClinicoService.count() == 5
    }

    void "test delete"() {
        Long examenClinicoId = setupData()

        expect:
        examenClinicoService.count() == 5

        when:
        examenClinicoService.delete(examenClinicoId)
        sessionFactory.currentSession.flush()

        then:
        examenClinicoService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        ExamenClinico examenClinico = new ExamenClinico()
        examenClinicoService.save(examenClinico)

        then:
        examenClinico.id != null
    }
}
