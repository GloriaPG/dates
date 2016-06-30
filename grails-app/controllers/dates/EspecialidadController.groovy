package dates



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EspecialidadController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Especialidad.list(params), model:[especialidadInstanceCount: Especialidad.count()]
    }

    def show(Especialidad especialidadInstance) {
        respond especialidadInstance
    }

    def create() {
        respond new Especialidad(params)
    }

    @Transactional
    def save(Especialidad especialidadInstance) {
        if (especialidadInstance == null) {
            notFound()
            return
        }

        if (especialidadInstance.hasErrors()) {
            respond especialidadInstance.errors, view:'create'
            return
        }

        especialidadInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'especialidad.label', default: 'Especialidad'), especialidadInstance.id])
                redirect especialidadInstance
            }
            '*' { respond especialidadInstance, [status: CREATED] }
        }
    }

    def edit(Especialidad especialidadInstance) {
        respond especialidadInstance
    }

    @Transactional
    def update(Especialidad especialidadInstance) {
        if (especialidadInstance == null) {
            notFound()
            return
        }

        if (especialidadInstance.hasErrors()) {
            respond especialidadInstance.errors, view:'edit'
            return
        }

        especialidadInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Especialidad.label', default: 'Especialidad'), especialidadInstance.id])
                redirect especialidadInstance
            }
            '*'{ respond especialidadInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Especialidad especialidadInstance) {

        if (especialidadInstance == null) {
            notFound()
            return
        }

        especialidadInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Especialidad.label', default: 'Especialidad'), especialidadInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'especialidad.label', default: 'Especialidad'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
