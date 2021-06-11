package sistemaclinico

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class SintomaServiceSpec extends Specification {

    SintomaService sintomaService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Sintoma(...).save(flush: true, failOnError: true)
        //new Sintoma(...).save(flush: true, failOnError: true)
        //Sintoma sintoma = new Sintoma(...).save(flush: true, failOnError: true)
        //new Sintoma(...).save(flush: true, failOnError: true)
        //new Sintoma(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //sintoma.id
    }

    void "test get"() {
        setupData()

        expect:
        sintomaService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Sintoma> sintomaList = sintomaService.list(max: 2, offset: 2)

        then:
        sintomaList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        sintomaService.count() == 5
    }

    void "test delete"() {
        Long sintomaId = setupData()

        expect:
        sintomaService.count() == 5

        when:
        sintomaService.delete(sintomaId)
        sessionFactory.currentSession.flush()

        then:
        sintomaService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Sintoma sintoma = new Sintoma()
        sintomaService.save(sintoma)

        then:
        sintoma.id != null
    }
}
