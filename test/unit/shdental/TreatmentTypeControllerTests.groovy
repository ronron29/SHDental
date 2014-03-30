package shdental



import org.junit.*
import grails.test.mixin.*

@TestFor(TreatmentTypeController)
@Mock(TreatmentType)
class TreatmentTypeControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/treatmentType/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.treatmentTypeInstanceList.size() == 0
        assert model.treatmentTypeInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.treatmentTypeInstance != null
    }

    void testSave() {
        controller.save()

        assert model.treatmentTypeInstance != null
        assert view == '/treatmentType/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/treatmentType/show/1'
        assert controller.flash.message != null
        assert TreatmentType.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/treatmentType/list'

        populateValidParams(params)
        def treatmentType = new TreatmentType(params)

        assert treatmentType.save() != null

        params.id = treatmentType.id

        def model = controller.show()

        assert model.treatmentTypeInstance == treatmentType
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/treatmentType/list'

        populateValidParams(params)
        def treatmentType = new TreatmentType(params)

        assert treatmentType.save() != null

        params.id = treatmentType.id

        def model = controller.edit()

        assert model.treatmentTypeInstance == treatmentType
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/treatmentType/list'

        response.reset()

        populateValidParams(params)
        def treatmentType = new TreatmentType(params)

        assert treatmentType.save() != null

        // test invalid parameters in update
        params.id = treatmentType.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/treatmentType/edit"
        assert model.treatmentTypeInstance != null

        treatmentType.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/treatmentType/show/$treatmentType.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        treatmentType.clearErrors()

        populateValidParams(params)
        params.id = treatmentType.id
        params.version = -1
        controller.update()

        assert view == "/treatmentType/edit"
        assert model.treatmentTypeInstance != null
        assert model.treatmentTypeInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/treatmentType/list'

        response.reset()

        populateValidParams(params)
        def treatmentType = new TreatmentType(params)

        assert treatmentType.save() != null
        assert TreatmentType.count() == 1

        params.id = treatmentType.id

        controller.delete()

        assert TreatmentType.count() == 0
        assert TreatmentType.get(treatmentType.id) == null
        assert response.redirectedUrl == '/treatmentType/list'
    }
}
