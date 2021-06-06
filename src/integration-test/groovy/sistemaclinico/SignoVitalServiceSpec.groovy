package sistemaclinico

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class SignoVitalServiceSpec extends Specification {

    SignoVitalService signoVitalService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new SignoVital(...).save(flush: true, failOnError: true)
        //new SignoVital(...).save(flush: true, failOnError: true)
        //SignoVital signoVital = new SignoVital(...).save(flush: true, failOnError: true)
        //new SignoVital(...).save(flush: true, failOnError: true)
        //new SignoVital(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //signoVital.id
    }

    void "test get"() {
        setupData()

        expect:
        signoVitalService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<SignoVital> signoVitalList = signoVitalService.list(max: 2, offset: 2)

        then:
        signoVitalList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        signoVitalService.count() == 5
    }

    void "test delete"() {
        Long signoVitalId = setupData()

        expect:
        signoVitalService.count() == 5

        when:
        signoVitalService.delete(signoVitalId)
        sessionFactory.currentSession.flush()

        then:
        signoVitalService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        SignoVital signoVital = new SignoVital()
        signoVitalService.save(signoVital)

        then:
        signoVital.id != null
    }
}
