
<%@ page import="dates.EspecialistaEspecialidad" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'especialistaEspecialidad.label', default: 'EspecialistaEspecialidad')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-especialistaEspecialidad" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-especialistaEspecialidad" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list especialistaEspecialidad">
			
				<g:if test="${especialistaEspecialidadInstance?.disponible}">
				<li class="fieldcontain">
					<span id="disponible-label" class="property-label"><g:message code="especialistaEspecialidad.disponible.label" default="Disponible" /></span>
					
						<span class="property-value" aria-labelledby="disponible-label"><g:formatBoolean boolean="${especialistaEspecialidadInstance?.disponible}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${especialistaEspecialidadInstance?.especialidad}">
				<li class="fieldcontain">
					<span id="especialidad-label" class="property-label"><g:message code="especialistaEspecialidad.especialidad.label" default="Especialidad" /></span>
					
						<span class="property-value" aria-labelledby="especialidad-label"><g:link controller="especialidad" action="show" id="${especialistaEspecialidadInstance?.especialidad?.id}">${especialistaEspecialidadInstance?.especialidad?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${especialistaEspecialidadInstance?.especialista}">
				<li class="fieldcontain">
					<span id="especialista-label" class="property-label"><g:message code="especialistaEspecialidad.especialista.label" default="Especialista" /></span>
					
						<span class="property-value" aria-labelledby="especialista-label"><g:link controller="especialista" action="show" id="${especialistaEspecialidadInstance?.especialista?.id}">${especialistaEspecialidadInstance?.especialista?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${especialistaEspecialidadInstance?.precio}">
				<li class="fieldcontain">
					<span id="precio-label" class="property-label"><g:message code="especialistaEspecialidad.precio.label" default="Precio" /></span>
					
						<span class="property-value" aria-labelledby="precio-label"><g:fieldValue bean="${especialistaEspecialidadInstance}" field="precio"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:especialistaEspecialidadInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${especialistaEspecialidadInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
