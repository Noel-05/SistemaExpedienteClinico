package sistemaclinico

import grails.gorm.transactions.ReadOnly

class HomeController {

    @ReadOnly
    def index() {
        respond([name: session.name ?: 'User'])
    }

    def updateName(String name) {
        session.name = name

        flash.message = 'Name has been updated'

        redirect action: 'index'
    }

}