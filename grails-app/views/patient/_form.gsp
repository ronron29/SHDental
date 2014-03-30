<%@ page import="shdental.Patient" %>



<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="patient.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${patientInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'birthdate', 'error')} required">
	<label for="birthdate">
		<g:message code="patient.birthdate.label" default="Birthdate" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="birthdate" precision="day"  value="${patientInstance?.birthdate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="patient.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${patientInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'chiefComplaint', 'error')} ">
	<label for="chiefComplaint">
		<g:message code="patient.chiefComplaint.label" default="Chief Complaint" />
		
	</label>
	<g:textField name="chiefComplaint" value="${patientInstance?.chiefComplaint}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'guardian', 'error')} ">
	<label for="guardian">
		<g:message code="patient.guardian.label" default="Guardian" />
		
	</label>
	<g:textField name="guardian" value="${patientInstance?.guardian}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'height', 'error')} ">
	<label for="height">
		<g:message code="patient.height.label" default="Height" />
		
	</label>
	<g:textField name="height" value="${patientInstance?.height}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'lastVisit', 'error')} ">
	<label for="lastVisit">
		<g:message code="patient.lastVisit.label" default="Last Visit" />
		
	</label>
	<g:textField name="lastVisit" value="${patientInstance?.lastVisit}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'nationality', 'error')} ">
	<label for="nationality">
		<g:message code="patient.nationality.label" default="Nationality" />
		
	</label>
	<g:textField name="nationality" value="${patientInstance?.nationality}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'referredBy', 'error')} ">
	<label for="referredBy">
		<g:message code="patient.referredBy.label" default="Referred By" />
		
	</label>
	<g:textField name="referredBy" value="${patientInstance?.referredBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'sex', 'error')} ">
	<label for="sex">
		<g:message code="patient.sex.label" default="Sex" />
		
	</label>
	<g:textField name="sex" value="${patientInstance?.sex}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="patient.status.label" default="Status" />
		
	</label>
	<g:textField name="status" value="${patientInstance?.status}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'telephoneNumber', 'error')} ">
	<label for="telephoneNumber">
		<g:message code="patient.telephoneNumber.label" default="Telephone Number" />
		
	</label>
	<g:textField name="telephoneNumber" value="${patientInstance?.telephoneNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'weight', 'error')} ">
	<label for="weight">
		<g:message code="patient.weight.label" default="Weight" />
		
	</label>
	<g:textField name="weight" value="${patientInstance?.weight}"/>
</div>

