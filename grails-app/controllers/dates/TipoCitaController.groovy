package dates



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TipoCitaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TipoCita.list(params), model:[tipoCitaInstanceCount: TipoCita.count()]
    }

    def show(TipoCita tipoCitaInstance) {
        respond tipoCitaInstance
    }

    def create() {
        respond new TipoCita(params)
    }

    @Transactional
    def save(TipoCita tipoCitaInstance) {
        if (tipoCitaInstance == null) {
            notFound()
            return
        }

        if (tipoCitaInstance.hasErrors()) {
            respond tipoCitaInstance.errors, view:'create'
            return
        }

        tipoCitaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'tipoCita.label', default: 'TipoCita'), tipoCitaInstance.id])
                redirect tipoCitaInstance
            }
            '*' { respond tipoCitaInstance, [status: CREATED] }
        }
    }

    def edit(TipoCita tipoCitaInstance) {
        respond tipoCitaInstance
    }

    @Transactional
    def update(TipoCita tipoCitaInstance) {
        if (tipoCitaInstance == null) {
            notFound()
            return
        }

        if (tipoCitaInstance.hasErrors()) {
            respond tipoCitaInstance.errors, view:'edit'
            return
        }

        tipoCitaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TipoCita.label', default: 'TipoCita'), tipoCitaInstance.id])
                redirect tipoCitaInstance
            }
            '*'{ respond tipoCitaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TipoCita tipoCitaInstance) {

        if (tipoCitaInstance == null) {
            notFound()
            return
        }

        tipoCitaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TipoCita.label', default: 'TipoCita'), tipoCitaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'tipoCita.label', default: 'TipoCita'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
