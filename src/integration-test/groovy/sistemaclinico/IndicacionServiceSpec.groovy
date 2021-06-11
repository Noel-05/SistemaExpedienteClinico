package sistemaclinico

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class IndicacionServiceSpec extends Specification {

    IndicacionService indicacionService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Indicacion(...).save(flush: true, failOnError: true)
        //new Indicacion(...).save(flush: true, failOnError: true)
        //Indicacion indicacion = new Indicacion(...).save(flush: true, failOnError: true)
        //new Indicacion(...).save(flush: true, failOnError: true)
        //new Indicacion(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //indicacion.id
    }

    void "test get"() {
        setupData()

        expect:
        indicacionService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Indicacion> indicacionList = indicacionService.list(max: 2, offset: 2)

        then:
        indicacionList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        indicacionService.count() == 5
    }

    void "test delete"() {
        Long indicacionId = setupData()

        expect:
        indicacionService.count() == 5

        when:
        indicacionService.delete(indicacionId)
        sessionFactory.currentSession.flush()

        then:
        indicacionService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Indicacion indicacion = new Indicacion()
        indicacionService.save(indicacion)

        then:
        indicacion.id != null
    }
}
