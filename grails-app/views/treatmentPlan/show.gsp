
<%@ page import="shdental.TreatmentPlan" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'treatmentPlan.label', default: 'TreatmentPlan')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-treatmentPlan" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-treatmentPlan" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list treatmentPlan">
			
				<g:if test="${treatmentPlanInstance?.patient}">
				<li class="fieldcontain">
					<span id="patient-label" class="property-label"><g:message code="treatmentPlan.patient.label" default="Patient" /></span>
					
						<span class="property-value" aria-labelledby="patient-label"><g:link controller="patient" action="show" id="${treatmentPlanInstance?.patient?.id}">${treatmentPlanInstance?.patient?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${treatmentPlanInstance?.upperJaw}">
				<li class="fieldcontain">
					<span id="upperJaw-label" class="property-label"><g:message code="treatmentPlan.upperJaw.label" default="Upper Jaw" /></span>
					
						<span class="property-value" aria-labelledby="upperJaw-label"><g:formatBoolean boolean="${treatmentPlanInstance?.upperJaw}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${treatmentPlanInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="treatmentPlan.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:link controller="treatmentType" action="show" id="${treatmentPlanInstance?.type?.id}">${treatmentPlanInstance?.type?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${treatmentPlanInstance?.units}">
				<li class="fieldcontain">
					<span id="units-label" class="property-label"><g:message code="treatmentPlan.units.label" default="Units" /></span>
					
						<span class="property-value" aria-labelledby="units-label"><g:fieldValue bean="${treatmentPlanInstance}" field="units"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${treatmentPlanInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="treatmentPlan.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${treatmentPlanInstance?.date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${treatmentPlanInstance?.discount}">
				<li class="fieldcontain">
					<span id="discount-label" class="property-label"><g:message code="treatmentPlan.discount.label" default="Discount" /></span>
					
						<span class="property-value" aria-labelledby="discount-label"><g:fieldValue bean="${treatmentPlanInstance}" field="discount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${treatmentPlanInstance?.fx}">
				<li class="fieldcontain">
					<span id="fx-label" class="property-label"><g:message code="treatmentPlan.fx.label" default="Fx" /></span>
					
						<span class="property-value" aria-labelledby="fx-label"><g:fieldValue bean="${treatmentPlanInstance}" field="fx"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${treatmentPlanInstance?.misc}">
				<li class="fieldcontain">
					<span id="misc-label" class="property-label"><g:message code="treatmentPlan.misc.label" default="Misc" /></span>
					
						<span class="property-value" aria-labelledby="misc-label"><g:fieldValue bean="${treatmentPlanInstance}" field="misc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${treatmentPlanInstance?.totalCost}">
				<li class="fieldcontain">
					<span id="totalCost-label" class="property-label"><g:message code="treatmentPlan.totalCost.label" default="Total Cost" /></span>
					
						<span class="property-value" aria-labelledby="totalCost-label"><g:fieldValue bean="${treatmentPlanInstance}" field="totalCost"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${treatmentPlanInstance?.id}" />
					<g:link class="edit" action="edit" id="${treatmentPlanInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
