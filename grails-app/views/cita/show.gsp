
<%@ page import="dates.Cita" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cita.label', default: 'Cita')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-cita" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-cita" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list cita">
			
				<g:if test="${citaInstance?.hora}">
				<li class="fieldcontain">
					<span id="hora-label" class="property-label"><g:message code="cita.hora.label" default="Hora" /></span>
					
						<span class="property-value" aria-labelledby="hora-label"><g:fieldValue bean="${citaInstance}" field="hora"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${citaInstance?.cliente}">
				<li class="fieldcontain">
					<span id="cliente-label" class="property-label"><g:message code="cita.cliente.label" default="Cliente" /></span>
					
						<span class="property-value" aria-labelledby="cliente-label"><g:link controller="cliente" action="show" id="${citaInstance?.cliente?.id}">${citaInstance?.cliente?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${citaInstance?.comentario}">
				<li class="fieldcontain">
					<span id="comentario-label" class="property-label"><g:message code="cita.comentario.label" default="Comentario" /></span>
					
						<span class="property-value" aria-labelledby="comentario-label"><g:fieldValue bean="${citaInstance}" field="comentario"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${citaInstance?.especalista}">
				<li class="fieldcontain">
					<span id="especalista-label" class="property-label"><g:message code="cita.especalista.label" default="Especalista" /></span>
					
						<span class="property-value" aria-labelledby="especalista-label"><g:link controller="especialista" action="show" id="${citaInstance?.especalista?.id}">${citaInstance?.especalista?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${citaInstance?.fecha}">
				<li class="fieldcontain">
					<span id="fecha-label" class="property-label"><g:message code="cita.fecha.label" default="Fecha" /></span>
					
						<span class="property-value" aria-labelledby="fecha-label"><g:formatDate date="${citaInstance?.fecha}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${citaInstance?.fechaFin}">
				<li class="fieldcontain">
					<span id="fechaFin-label" class="property-label"><g:message code="cita.fechaFin.label" default="Fecha Fin" /></span>
					
						<span class="property-value" aria-labelledby="fechaFin-label"><g:formatDate date="${citaInstance?.fechaFin}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${citaInstance?.fechaInicio}">
				<li class="fieldcontain">
					<span id="fechaInicio-label" class="property-label"><g:message code="cita.fechaInicio.label" default="Fecha Inicio" /></span>
					
						<span class="property-value" aria-labelledby="fechaInicio-label"><g:formatDate date="${citaInstance?.fechaInicio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${citaInstance?.finalizada}">
				<li class="fieldcontain">
					<span id="finalizada-label" class="property-label"><g:message code="cita.finalizada.label" default="Finalizada" /></span>
					
						<span class="property-value" aria-labelledby="finalizada-label"><g:formatBoolean boolean="${citaInstance?.finalizada}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${citaInstance?.servicio}">
				<li class="fieldcontain">
					<span id="servicio-label" class="property-label"><g:message code="cita.servicio.label" default="Servicio" /></span>
					
						<span class="property-value" aria-labelledby="servicio-label"><g:link controller="especialidad" action="show" id="${citaInstance?.servicio?.id}">${citaInstance?.servicio?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${citaInstance?.tipo}">
				<li class="fieldcontain">
					<span id="tipo-label" class="property-label"><g:message code="cita.tipo.label" default="Tipo" /></span>
					
						<span class="property-value" aria-labelledby="tipo-label"><g:link controller="tipoCita" action="show" id="${citaInstance?.tipo?.id}">${citaInstance?.tipo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:citaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${citaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
