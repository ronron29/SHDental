package shdental

import org.springframework.dao.DataIntegrityViolationException

class TreatmentTypeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [treatmentTypeInstanceList: TreatmentType.list(params), treatmentTypeInstanceTotal: TreatmentType.count()]
    }

    def create() {
        [treatmentTypeInstance: new TreatmentType(params)]
    }

    def save() {
        def treatmentTypeInstance = new TreatmentType(params)
        if (!treatmentTypeInstance.save(flush: true)) {
            render(view: "create", model: [treatmentTypeInstance: treatmentTypeInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'treatmentType.label', default: 'TreatmentType'), treatmentTypeInstance.id])
        redirect(action: "show", id: treatmentTypeInstance.id)
    }

    def show(Long id) {
        def treatmentTypeInstance = TreatmentType.get(id)
        if (!treatmentTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'treatmentType.label', default: 'TreatmentType'), id])
            redirect(action: "list")
            return
        }

        [treatmentTypeInstance: treatmentTypeInstance]
    }

    def edit(Long id) {
        def treatmentTypeInstance = TreatmentType.get(id)
        if (!treatmentTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'treatmentType.label', default: 'TreatmentType'), id])
            redirect(action: "list")
            return
        }

        [treatmentTypeInstance: treatmentTypeInstance]
    }

    def update(Long id, Long version) {
        def treatmentTypeInstance = TreatmentType.get(id)
        if (!treatmentTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'treatmentType.label', default: 'TreatmentType'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (treatmentTypeInstance.version > version) {
                treatmentTypeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'treatmentType.label', default: 'TreatmentType')] as Object[],
                          "Another user has updated this TreatmentType while you were editing")
                render(view: "edit", model: [treatmentTypeInstance: treatmentTypeInstance])
                return
            }
        }

        treatmentTypeInstance.properties = params

        if (!treatmentTypeInstance.save(flush: true)) {
            render(view: "edit", model: [treatmentTypeInstance: treatmentTypeInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'treatmentType.label', default: 'TreatmentType'), treatmentTypeInstance.id])
        redirect(action: "show", id: treatmentTypeInstance.id)
    }

    def delete(Long id) {
        def treatmentTypeInstance = TreatmentType.get(id)
        if (!treatmentTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'treatmentType.label', default: 'TreatmentType'), id])
            redirect(action: "list")
            return
        }

        try {
            treatmentTypeInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'treatmentType.label', default: 'TreatmentType'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'treatmentType.label', default: 'TreatmentType'), id])
            redirect(action: "show", id: id)
        }
    }
}
