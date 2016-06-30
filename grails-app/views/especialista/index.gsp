
<%@ page import="dates.Especialista" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'especialista.label', default: 'Especialista')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-especialista" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-especialista" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="username" title="${message(code: 'especialista.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'especialista.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="comentarios" title="${message(code: 'especialista.comentarios.label', default: 'Comentarios')}" />
					
						<g:sortableColumn property="accountExpired" title="${message(code: 'especialista.accountExpired.label', default: 'Account Expired')}" />
					
						<g:sortableColumn property="accountLocked" title="${message(code: 'especialista.accountLocked.label', default: 'Account Locked')}" />
					
						<g:sortableColumn property="apellidos" title="${message(code: 'especialista.apellidos.label', default: 'Apellidos')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${especialistaInstanceList}" status="i" var="especialistaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${especialistaInstance.id}">${fieldValue(bean: especialistaInstance, field: "username")}</g:link></td>
					
						<td>${fieldValue(bean: especialistaInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: especialistaInstance, field: "comentarios")}</td>
					
						<td><g:formatBoolean boolean="${especialistaInstance.accountExpired}" /></td>
					
						<td><g:formatBoolean boolean="${especialistaInstance.accountLocked}" /></td>
					
						<td>${fieldValue(bean: especialistaInstance, field: "apellidos")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${especialistaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
