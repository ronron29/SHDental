<%@ page import="shdental.TreatmentType" %>



<div class="fieldcontain ${hasErrors(bean: treatmentTypeInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="treatmentType.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${treatmentTypeInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: treatmentTypeInstance, field: 'cost', 'error')} required">
	<label for="cost">
		<g:message code="treatmentType.cost.label" default="Cost" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cost" required="" value="${treatmentTypeInstance?.cost}"/>
</div>

