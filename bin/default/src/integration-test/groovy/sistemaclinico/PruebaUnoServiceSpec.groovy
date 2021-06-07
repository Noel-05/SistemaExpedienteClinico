package sistemaclinico

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class PruebaUnoServiceSpec extends Specification {

    PruebaUnoService pruebaUnoService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new PruebaUno(...).save(flush: true, failOnError: true)
        //new PruebaUno(...).save(flush: true, failOnError: true)
        //PruebaUno pruebaUno = new PruebaUno(...).save(flush: true, failOnError: true)
        //new PruebaUno(...).save(flush: true, failOnError: true)
        //new PruebaUno(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //pruebaUno.id
    }

    void "test get"() {
        setupData()

        expect:
        pruebaUnoService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<PruebaUno> pruebaUnoList = pruebaUnoService.list(max: 2, offset: 2)

        then:
        pruebaUnoList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        pruebaUnoService.count() == 5
    }

    void "test delete"() {
        Long pruebaUnoId = setupData()

        expect:
        pruebaUnoService.count() == 5

        when:
        pruebaUnoService.delete(pruebaUnoId)
        sessionFactory.currentSession.flush()

        then:
        pruebaUnoService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        PruebaUno pruebaUno = new PruebaUno()
        pruebaUnoService.save(pruebaUno)

        then:
        pruebaUno.id != null
    }
}
