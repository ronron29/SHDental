<%@ page import="shdental.TreatmentPlan" %>



<div class="fieldcontain ${hasErrors(bean: treatmentPlanInstance, field: 'patient', 'error')} required">
	<label for="patient">
		<g:message code="treatmentPlan.patient.label" default="Patient" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="patient" name="patient.id" from="${shdental.Patient.list()}" optionKey="id" required="" value="${treatmentPlanInstance?.patient?.id}" class="many-to-one" optionValue="name"/>
</div>

<div class="fieldcontain ${hasErrors(bean: treatmentPlanInstance, field: 'upperJaw', 'error')} ">
	<label for="upperJaw">
		<g:message code="treatmentPlan.upperJaw.label" default="Upper Jaw" />
		
	</label>
	<g:checkBox name="upperJaw" value="${treatmentPlanInstance?.upperJaw}" />
</div>

<div class="fieldcontain ${hasErrors(bean: treatmentPlanInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="treatmentPlan.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="type" name="type.id" from="${shdental.TreatmentType.list()}" optionKey="id" required="" value="${treatmentPlanInstance?.type?.id}" class="many-to-one" optionValue="name"/>
</div>

<div class="fieldcontain ${hasErrors(bean: treatmentPlanInstance, field: 'units', 'error')} required">
	<label for="units">
		<g:message code="treatmentPlan.units.label" default="Units" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="units" required="" value="${treatmentPlanInstance?.units}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: treatmentPlanInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="treatmentPlan.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${treatmentPlanInstance?.date}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: treatmentPlanInstance, field: 'discount', 'error')} ">
	<label for="discount">
		<g:message code="treatmentPlan.discount.label" default="Discount" />
		
	</label>
	<g:textField name="discount" value="${treatmentPlanInstance?.discount}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: treatmentPlanInstance, field: 'fx', 'error')} ">
	<label for="fx">
		<g:message code="treatmentPlan.fx.label" default="Fx" />
		
	</label>
	<g:textField name="fx" value="${treatmentPlanInstance?.fx}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: treatmentPlanInstance, field: 'misc', 'error')} ">
	<label for="misc">
		<g:message code="treatmentPlan.misc.label" default="Misc" />
		
	</label>
	<g:textField name="misc" value="${treatmentPlanInstance?.misc}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: treatmentPlanInstance, field: 'totalCost', 'error')} ">
	<label for="totalCost">
		<g:message code="treatmentPlan.totalCost.label" default="Total Cost" />
		
	</label>
	<g:textField name="totalCost" value="${treatmentPlanInstance?.totalCost}"/>
</div>

