
<%@ page import="dates.Especialista" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'especialista.label', default: 'Especialista')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-especialista" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-especialista" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list especialista">
			
				<g:if test="${especialistaInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="especialista.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${especialistaInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${especialistaInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="especialista.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${especialistaInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${especialistaInstance?.comentarios}">
				<li class="fieldcontain">
					<span id="comentarios-label" class="property-label"><g:message code="especialista.comentarios.label" default="Comentarios" /></span>
					
						<span class="property-value" aria-labelledby="comentarios-label"><g:fieldValue bean="${especialistaInstance}" field="comentarios"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${especialistaInstance?.accountExpired}">
				<li class="fieldcontain">
					<span id="accountExpired-label" class="property-label"><g:message code="especialista.accountExpired.label" default="Account Expired" /></span>
					
						<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${especialistaInstance?.accountExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${especialistaInstance?.accountLocked}">
				<li class="fieldcontain">
					<span id="accountLocked-label" class="property-label"><g:message code="especialista.accountLocked.label" default="Account Locked" /></span>
					
						<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${especialistaInstance?.accountLocked}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${especialistaInstance?.apellidos}">
				<li class="fieldcontain">
					<span id="apellidos-label" class="property-label"><g:message code="especialista.apellidos.label" default="Apellidos" /></span>
					
						<span class="property-value" aria-labelledby="apellidos-label"><g:fieldValue bean="${especialistaInstance}" field="apellidos"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${especialistaInstance?.disponible}">
				<li class="fieldcontain">
					<span id="disponible-label" class="property-label"><g:message code="especialista.disponible.label" default="Disponible" /></span>
					
						<span class="property-value" aria-labelledby="disponible-label"><g:formatBoolean boolean="${especialistaInstance?.disponible}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${especialistaInstance?.enabled}">
				<li class="fieldcontain">
					<span id="enabled-label" class="property-label"><g:message code="especialista.enabled.label" default="Enabled" /></span>
					
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${especialistaInstance?.enabled}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${especialistaInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="especialista.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${especialistaInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${especialistaInstance?.passwordExpired}">
				<li class="fieldcontain">
					<span id="passwordExpired-label" class="property-label"><g:message code="especialista.passwordExpired.label" default="Password Expired" /></span>
					
						<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${especialistaInstance?.passwordExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${especialistaInstance?.telefono}">
				<li class="fieldcontain">
					<span id="telefono-label" class="property-label"><g:message code="especialista.telefono.label" default="Telefono" /></span>
					
						<span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${especialistaInstance}" field="telefono"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:especialistaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${especialistaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
