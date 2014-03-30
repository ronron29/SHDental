
<%@ page import="shdental.Patient" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'patient.label', default: 'Patient')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-patient" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-patient" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list patient">
			
				<g:if test="${patientInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="patient.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${patientInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.birthdate}">
				<li class="fieldcontain">
					<span id="birthdate-label" class="property-label"><g:message code="patient.birthdate.label" default="Birthdate" /></span>
					
						<span class="property-value" aria-labelledby="birthdate-label"><g:formatDate date="${patientInstance?.birthdate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="patient.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${patientInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.chiefComplaint}">
				<li class="fieldcontain">
					<span id="chiefComplaint-label" class="property-label"><g:message code="patient.chiefComplaint.label" default="Chief Complaint" /></span>
					
						<span class="property-value" aria-labelledby="chiefComplaint-label"><g:fieldValue bean="${patientInstance}" field="chiefComplaint"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.guardian}">
				<li class="fieldcontain">
					<span id="guardian-label" class="property-label"><g:message code="patient.guardian.label" default="Guardian" /></span>
					
						<span class="property-value" aria-labelledby="guardian-label"><g:fieldValue bean="${patientInstance}" field="guardian"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.height}">
				<li class="fieldcontain">
					<span id="height-label" class="property-label"><g:message code="patient.height.label" default="Height" /></span>
					
						<span class="property-value" aria-labelledby="height-label"><g:fieldValue bean="${patientInstance}" field="height"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.lastVisit}">
				<li class="fieldcontain">
					<span id="lastVisit-label" class="property-label"><g:message code="patient.lastVisit.label" default="Last Visit" /></span>
					
						<span class="property-value" aria-labelledby="lastVisit-label"><g:fieldValue bean="${patientInstance}" field="lastVisit"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.nationality}">
				<li class="fieldcontain">
					<span id="nationality-label" class="property-label"><g:message code="patient.nationality.label" default="Nationality" /></span>
					
						<span class="property-value" aria-labelledby="nationality-label"><g:fieldValue bean="${patientInstance}" field="nationality"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.referredBy}">
				<li class="fieldcontain">
					<span id="referredBy-label" class="property-label"><g:message code="patient.referredBy.label" default="Referred By" /></span>
					
						<span class="property-value" aria-labelledby="referredBy-label"><g:fieldValue bean="${patientInstance}" field="referredBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.sex}">
				<li class="fieldcontain">
					<span id="sex-label" class="property-label"><g:message code="patient.sex.label" default="Sex" /></span>
					
						<span class="property-value" aria-labelledby="sex-label"><g:fieldValue bean="${patientInstance}" field="sex"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="patient.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${patientInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.telephoneNumber}">
				<li class="fieldcontain">
					<span id="telephoneNumber-label" class="property-label"><g:message code="patient.telephoneNumber.label" default="Telephone Number" /></span>
					
						<span class="property-value" aria-labelledby="telephoneNumber-label"><g:fieldValue bean="${patientInstance}" field="telephoneNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.weight}">
				<li class="fieldcontain">
					<span id="weight-label" class="property-label"><g:message code="patient.weight.label" default="Weight" /></span>
					
						<span class="property-value" aria-labelledby="weight-label"><g:fieldValue bean="${patientInstance}" field="weight"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${patientInstance?.id}" />
					<g:link class="edit" action="edit" id="${patientInstance?.id}">
						<g:message code="default.button.edit.label" default="Edit" />
					</g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					<g:link class="create" action="create" controller="TreatmentPlan" absolute="true">
						Create New Treatment Plan
					</g:link>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
