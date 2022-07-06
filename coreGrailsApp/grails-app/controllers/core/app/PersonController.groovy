package core.app

import org.grails.plugins.filterpane.FilterPaneUtils

class PersonController {

    def filterPaneService

    def index() {}

    def filter = {
        if(!params.max) params.max = 10
        render( view: 'index',
                model:[ personList: filterPaneService.filter( params, Person ),
                        personCount: filterPaneService.count( params, Person ),
                        filterParams: FilterPaneUtils.extractFilterParams(params),
                        params:params ] )
    }
}
