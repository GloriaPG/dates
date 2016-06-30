package dates



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EspecialistaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Especialista.list(params), model:[especialistaInstanceCount: Especialista.count()]
    }

    def show(Especialista especialistaInstance) {
        respond especialistaInstance
    }

    def create() {
        respond new Especialista(params)
    }

    @Transactional
    def save(Especialista especialistaInstance) {
        if (especialistaInstance == null) {
            notFound()
            return
        }

        if (especialistaInstance.hasErrors()) {
            respond especialistaInstance.errors, view:'create'
            return
        }

        especialistaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'especialista.label', default: 'Especialista'), especialistaInstance.id])
                redirect especialistaInstance
            }
            '*' { respond especialistaInstance, [status: CREATED] }
        }
    }

    def edit(Especialista especialistaInstance) {
        respond especialistaInstance
    }

    @Transactional
    def update(Especialista especialistaInstance) {
        if (especialistaInstance == null) {
            notFound()
            return
        }

        if (especialistaInstance.hasErrors()) {
            respond especialistaInstance.errors, view:'edit'
            return
        }

        especialistaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Especialista.label', default: 'Especialista'), especialistaInstance.id])
                redirect especialistaInstance
            }
            '*'{ respond especialistaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Especialista especialistaInstance) {

        if (especialistaInstance == null) {
            notFound()
            return
        }

        especialistaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Especialista.label', default: 'Especialista'), especialistaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'especialista.label', default: 'Especialista'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
