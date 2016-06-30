package dates



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EspecialistaEspecialidadController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond EspecialistaEspecialidad.list(params), model:[especialistaEspecialidadInstanceCount: EspecialistaEspecialidad.count()]
    }

    def show(EspecialistaEspecialidad especialistaEspecialidadInstance) {
        respond especialistaEspecialidadInstance
    }

    def create() {
        respond new EspecialistaEspecialidad(params)
    }

    @Transactional
    def save(EspecialistaEspecialidad especialistaEspecialidadInstance) {
        if (especialistaEspecialidadInstance == null) {
            notFound()
            return
        }

        if (especialistaEspecialidadInstance.hasErrors()) {
            respond especialistaEspecialidadInstance.errors, view:'create'
            return
        }

        especialistaEspecialidadInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'especialistaEspecialidad.label', default: 'EspecialistaEspecialidad'), especialistaEspecialidadInstance.id])
                redirect especialistaEspecialidadInstance
            }
            '*' { respond especialistaEspecialidadInstance, [status: CREATED] }
        }
    }

    def edit(EspecialistaEspecialidad especialistaEspecialidadInstance) {
        respond especialistaEspecialidadInstance
    }

    @Transactional
    def update(EspecialistaEspecialidad especialistaEspecialidadInstance) {
        if (especialistaEspecialidadInstance == null) {
            notFound()
            return
        }

        if (especialistaEspecialidadInstance.hasErrors()) {
            respond especialistaEspecialidadInstance.errors, view:'edit'
            return
        }

        especialistaEspecialidadInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'EspecialistaEspecialidad.label', default: 'EspecialistaEspecialidad'), especialistaEspecialidadInstance.id])
                redirect especialistaEspecialidadInstance
            }
            '*'{ respond especialistaEspecialidadInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(EspecialistaEspecialidad especialistaEspecialidadInstance) {

        if (especialistaEspecialidadInstance == null) {
            notFound()
            return
        }

        especialistaEspecialidadInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'EspecialistaEspecialidad.label', default: 'EspecialistaEspecialidad'), especialistaEspecialidadInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'especialistaEspecialidad.label', default: 'EspecialistaEspecialidad'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
