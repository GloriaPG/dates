package dates



import grails.test.mixin.*
import spock.lang.*

@TestFor(EspecialidadController)
@Mock(Especialidad)
class EspecialidadControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.especialidadInstanceList
            model.especialidadInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.especialidadInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'POST'
            def especialidad = new Especialidad()
            especialidad.validate()
            controller.save(especialidad)

        then:"The create view is rendered again with the correct model"
            model.especialidadInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            especialidad = new Especialidad(params)

            controller.save(especialidad)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/especialidad/show/1'
            controller.flash.message != null
            Especialidad.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def especialidad = new Especialidad(params)
            controller.show(especialidad)

        then:"A model is populated containing the domain instance"
            model.especialidadInstance == especialidad
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def especialidad = new Especialidad(params)
            controller.edit(especialidad)

        then:"A model is populated containing the domain instance"
            model.especialidadInstance == especialidad
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'PUT'
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/especialidad/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def especialidad = new Especialidad()
            especialidad.validate()
            controller.update(especialidad)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.especialidadInstance == especialidad

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            especialidad = new Especialidad(params).save(flush: true)
            controller.update(especialidad)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/especialidad/show/$especialidad.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'DELETE'
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/especialidad/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def especialidad = new Especialidad(params).save(flush: true)

        then:"It exists"
            Especialidad.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(especialidad)

        then:"The instance is deleted"
            Especialidad.count() == 0
            response.redirectedUrl == '/especialidad/index'
            flash.message != null
    }
}
