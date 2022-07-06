package coregrailsapp

import core.app.Person
import grails.gorm.transactions.Transactional

class BootStrap {

    def init = { servletContext ->
        addData()
    }

    @Transactional
    def addData() {
        100.times {
            new Person(forename: "Forename $it", surname: "Surname $it").save()
        }
    }

    def destroy = {
    }
}
