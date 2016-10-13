package sla



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MesesController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Meses.list(params), model:[mesesInstanceCount: Meses.count()]
    }

    def show(Meses mesesInstance) {
        respond mesesInstance
    }

    def create() {
        respond new Meses(params)
    }

    @Transactional
    def save(Meses mesesInstance) {
        if (mesesInstance == null) {
            notFound()
            return
        }

        if (mesesInstance.hasErrors()) {
            respond mesesInstance.errors, view:'create'
            return
        }

        mesesInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'meses.label', default: 'Meses'), mesesInstance.id])
                redirect mesesInstance
            }
            '*' { respond mesesInstance, [status: CREATED] }
        }
    }

    def edit(Meses mesesInstance) {
        respond mesesInstance
    }

    @Transactional
    def update(Meses mesesInstance) {
        if (mesesInstance == null) {
            notFound()
            return
        }

        if (mesesInstance.hasErrors()) {
            respond mesesInstance.errors, view:'edit'
            return
        }

        mesesInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Meses.label', default: 'Meses'), mesesInstance.id])
                redirect mesesInstance
            }
            '*'{ respond mesesInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Meses mesesInstance) {

        if (mesesInstance == null) {
            notFound()
            return
        }

        mesesInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Meses.label', default: 'Meses'), mesesInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'meses.label', default: 'Meses'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
