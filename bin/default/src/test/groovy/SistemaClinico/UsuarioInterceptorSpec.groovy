package sistemaclinico

import grails.testing.web.interceptor.InterceptorUnitTest
import spock.lang.Specification

class UsuarioInterceptorSpec extends Specification implements InterceptorUnitTest<UsuarioInterceptor> {

    def setup() {
    }

    def cleanup() {

    }

    void "Test usuario interceptor matching"() {
        when:"A request matches the interceptor"
            withRequest(controller:"usuario")

        then:"The interceptor does match"
            interceptor.doesMatch()
    }
}
