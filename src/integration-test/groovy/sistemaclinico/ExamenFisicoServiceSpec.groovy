package sistemaclinico

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class ExamenFisicoServiceSpec extends Specification {

    ExamenFisicoService examenFisicoService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new ExamenFisico(...).save(flush: true, failOnError: true)
        //new ExamenFisico(...).save(flush: true, failOnError: true)
        //ExamenFisico examenFisico = new ExamenFisico(...).save(flush: true, failOnError: true)
        //new ExamenFisico(...).save(flush: true, failOnError: true)
        //new ExamenFisico(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //examenFisico.id
    }

    void "test get"() {
        setupData()

        expect:
        examenFisicoService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<ExamenFisico> examenFisicoList = examenFisicoService.list(max: 2, offset: 2)

        then:
        examenFisicoList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        examenFisicoService.count() == 5
    }

    void "test delete"() {
        Long examenFisicoId = setupData()

        expect:
        examenFisicoService.count() == 5

        when:
        examenFisicoService.delete(examenFisicoId)
        sessionFactory.currentSession.flush()

        then:
        examenFisicoService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        ExamenFisico examenFisico = new ExamenFisico()
        examenFisicoService.save(examenFisico)

        then:
        examenFisico.id != null
    }
}
