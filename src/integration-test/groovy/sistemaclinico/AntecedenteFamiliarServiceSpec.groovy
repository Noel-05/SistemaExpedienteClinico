package sistemaclinico

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class AntecedenteFamiliarServiceSpec extends Specification {

    AntecedenteFamiliarService antecedenteFamiliarService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new AntecedenteFamiliar(...).save(flush: true, failOnError: true)
        //new AntecedenteFamiliar(...).save(flush: true, failOnError: true)
        //AntecedenteFamiliar antecedenteFamiliar = new AntecedenteFamiliar(...).save(flush: true, failOnError: true)
        //new AntecedenteFamiliar(...).save(flush: true, failOnError: true)
        //new AntecedenteFamiliar(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //antecedenteFamiliar.id
    }

    void "test get"() {
        setupData()

        expect:
        antecedenteFamiliarService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<AntecedenteFamiliar> antecedenteFamiliarList = antecedenteFamiliarService.list(max: 2, offset: 2)

        then:
        antecedenteFamiliarList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        antecedenteFamiliarService.count() == 5
    }

    void "test delete"() {
        Long antecedenteFamiliarId = setupData()

        expect:
        antecedenteFamiliarService.count() == 5

        when:
        antecedenteFamiliarService.delete(antecedenteFamiliarId)
        sessionFactory.currentSession.flush()

        then:
        antecedenteFamiliarService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        AntecedenteFamiliar antecedenteFamiliar = new AntecedenteFamiliar()
        antecedenteFamiliarService.save(antecedenteFamiliar)

        then:
        antecedenteFamiliar.id != null
    }
}
