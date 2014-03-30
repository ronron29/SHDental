package shdental



import org.junit.*
import grails.test.mixin.*

@TestFor(TreatmentPlanController)
@Mock(TreatmentPlan)
class TreatmentPlanControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/treatmentPlan/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.treatmentPlanInstanceList.size() == 0
        assert model.treatmentPlanInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.treatmentPlanInstance != null
    }

    void testSave() {
        controller.save()

        assert model.treatmentPlanInstance != null
        assert view == '/treatmentPlan/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/treatmentPlan/show/1'
        assert controller.flash.message != null
        assert TreatmentPlan.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/treatmentPlan/list'

        populateValidParams(params)
        def treatmentPlan = new TreatmentPlan(params)

        assert treatmentPlan.save() != null

        params.id = treatmentPlan.id

        def model = controller.show()

        assert model.treatmentPlanInstance == treatmentPlan
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/treatmentPlan/list'

        populateValidParams(params)
        def treatmentPlan = new TreatmentPlan(params)

        assert treatmentPlan.save() != null

        params.id = treatmentPlan.id

        def model = controller.edit()

        assert model.treatmentPlanInstance == treatmentPlan
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/treatmentPlan/list'

        response.reset()

        populateValidParams(params)
        def treatmentPlan = new TreatmentPlan(params)

        assert treatmentPlan.save() != null

        // test invalid parameters in update
        params.id = treatmentPlan.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/treatmentPlan/edit"
        assert model.treatmentPlanInstance != null

        treatmentPlan.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/treatmentPlan/show/$treatmentPlan.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        treatmentPlan.clearErrors()

        populateValidParams(params)
        params.id = treatmentPlan.id
        params.version = -1
        controller.update()

        assert view == "/treatmentPlan/edit"
        assert model.treatmentPlanInstance != null
        assert model.treatmentPlanInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/treatmentPlan/list'

        response.reset()

        populateValidParams(params)
        def treatmentPlan = new TreatmentPlan(params)

        assert treatmentPlan.save() != null
        assert TreatmentPlan.count() == 1

        params.id = treatmentPlan.id

        controller.delete()

        assert TreatmentPlan.count() == 0
        assert TreatmentPlan.get(treatmentPlan.id) == null
        assert response.redirectedUrl == '/treatmentPlan/list'
    }
}
