package shdental

import org.springframework.dao.DataIntegrityViolationException

class TreatmentPlanController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [treatmentPlanInstanceList: TreatmentPlan.list(params), treatmentPlanInstanceTotal: TreatmentPlan.count()]
    }

    def create() {
        [treatmentPlanInstance: new TreatmentPlan(params)]
    }

    def save() {
        def treatmentPlanInstance = new TreatmentPlan(params)
        if (!treatmentPlanInstance.save(flush: true)) {
            render(view: "create", model: [treatmentPlanInstance: treatmentPlanInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'treatmentPlan.label', default: 'TreatmentPlan'), treatmentPlanInstance.id])
        redirect(action: "show", id: treatmentPlanInstance.id)
    }

    def show(Long id) {
        def treatmentPlanInstance = TreatmentPlan.get(id)
        if (!treatmentPlanInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'treatmentPlan.label', default: 'TreatmentPlan'), id])
            redirect(action: "list")
            return
        }

        [treatmentPlanInstance: treatmentPlanInstance]
    }

    def edit(Long id) {
        def treatmentPlanInstance = TreatmentPlan.get(id)
        if (!treatmentPlanInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'treatmentPlan.label', default: 'TreatmentPlan'), id])
            redirect(action: "list")
            return
        }

        [treatmentPlanInstance: treatmentPlanInstance]
    }

    def update(Long id, Long version) {
        def treatmentPlanInstance = TreatmentPlan.get(id)
        if (!treatmentPlanInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'treatmentPlan.label', default: 'TreatmentPlan'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (treatmentPlanInstance.version > version) {
                treatmentPlanInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'treatmentPlan.label', default: 'TreatmentPlan')] as Object[],
                          "Another user has updated this TreatmentPlan while you were editing")
                render(view: "edit", model: [treatmentPlanInstance: treatmentPlanInstance])
                return
            }
        }

        treatmentPlanInstance.properties = params

        if (!treatmentPlanInstance.save(flush: true)) {
            render(view: "edit", model: [treatmentPlanInstance: treatmentPlanInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'treatmentPlan.label', default: 'TreatmentPlan'), treatmentPlanInstance.id])
        redirect(action: "show", id: treatmentPlanInstance.id)
    }

    def delete(Long id) {
        def treatmentPlanInstance = TreatmentPlan.get(id)
        if (!treatmentPlanInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'treatmentPlan.label', default: 'TreatmentPlan'), id])
            redirect(action: "list")
            return
        }

        try {
            treatmentPlanInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'treatmentPlan.label', default: 'TreatmentPlan'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'treatmentPlan.label', default: 'TreatmentPlan'), id])
            redirect(action: "show", id: id)
        }
    }
}
