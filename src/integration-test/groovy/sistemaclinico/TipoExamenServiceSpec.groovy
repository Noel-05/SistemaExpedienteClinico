package sistemaclinico

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class TipoExamenServiceSpec extends Specification {

    TipoExamenService tipoExamenService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new TipoExamen(...).save(flush: true, failOnError: true)
        //new TipoExamen(...).save(flush: true, failOnError: true)
        //TipoExamen tipoExamen = new TipoExamen(...).save(flush: true, failOnError: true)
        //new TipoExamen(...).save(flush: true, failOnError: true)
        //new TipoExamen(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //tipoExamen.id
    }

    void "test get"() {
        setupData()

        expect:
        tipoExamenService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<TipoExamen> tipoExamenList = tipoExamenService.list(max: 2, offset: 2)

        then:
        tipoExamenList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        tipoExamenService.count() == 5
    }

    void "test delete"() {
        Long tipoExamenId = setupData()

        expect:
        tipoExamenService.count() == 5

        when:
        tipoExamenService.delete(tipoExamenId)
        sessionFactory.currentSession.flush()

        then:
        tipoExamenService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        TipoExamen tipoExamen = new TipoExamen()
        tipoExamenService.save(tipoExamen)

        then:
        tipoExamen.id != null
    }
}
