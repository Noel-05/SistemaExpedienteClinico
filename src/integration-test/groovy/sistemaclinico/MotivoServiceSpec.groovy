package sistemaclinico

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class MotivoServiceSpec extends Specification {

    MotivoService motivoService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Motivo(...).save(flush: true, failOnError: true)
        //new Motivo(...).save(flush: true, failOnError: true)
        //Motivo motivo = new Motivo(...).save(flush: true, failOnError: true)
        //new Motivo(...).save(flush: true, failOnError: true)
        //new Motivo(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //motivo.id
    }

    void "test get"() {
        setupData()

        expect:
        motivoService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Motivo> motivoList = motivoService.list(max: 2, offset: 2)

        then:
        motivoList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        motivoService.count() == 5
    }

    void "test delete"() {
        Long motivoId = setupData()

        expect:
        motivoService.count() == 5

        when:
        motivoService.delete(motivoId)
        sessionFactory.currentSession.flush()

        then:
        motivoService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Motivo motivo = new Motivo()
        motivoService.save(motivo)

        then:
        motivo.id != null
    }
}
