package sistemaclinico

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class ClinicaServiceSpec extends Specification {

    ClinicaService clinicaService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Clinica(...).save(flush: true, failOnError: true)
        //new Clinica(...).save(flush: true, failOnError: true)
        //Clinica clinica = new Clinica(...).save(flush: true, failOnError: true)
        //new Clinica(...).save(flush: true, failOnError: true)
        //new Clinica(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //clinica.id
    }

    void "test get"() {
        setupData()

        expect:
        clinicaService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Clinica> clinicaList = clinicaService.list(max: 2, offset: 2)

        then:
        clinicaList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        clinicaService.count() == 5
    }

    void "test delete"() {
        Long clinicaId = setupData()

        expect:
        clinicaService.count() == 5

        when:
        clinicaService.delete(clinicaId)
        sessionFactory.currentSession.flush()

        then:
        clinicaService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Clinica clinica = new Clinica()
        clinicaService.save(clinica)

        then:
        clinica.id != null
    }
}
