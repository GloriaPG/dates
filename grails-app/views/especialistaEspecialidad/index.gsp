
<%@ page import="dates.EspecialistaEspecialidad" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'especialistaEspecialidad.label', default: 'EspecialistaEspecialidad')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-especialistaEspecialidad" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-especialistaEspecialidad" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="disponible" title="${message(code: 'especialistaEspecialidad.disponible.label', default: 'Disponible')}" />
					
						<th><g:message code="especialistaEspecialidad.especialidad.label" default="Especialidad" /></th>
					
						<th><g:message code="especialistaEspecialidad.especialista.label" default="Especialista" /></th>
					
						<g:sortableColumn property="precio" title="${message(code: 'especialistaEspecialidad.precio.label', default: 'Precio')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${especialistaEspecialidadInstanceList}" status="i" var="especialistaEspecialidadInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${especialistaEspecialidadInstance.id}">${fieldValue(bean: especialistaEspecialidadInstance, field: "disponible")}</g:link></td>
					
						<td>${fieldValue(bean: especialistaEspecialidadInstance, field: "especialidad")}</td>
					
						<td>${fieldValue(bean: especialistaEspecialidadInstance, field: "especialista")}</td>
					
						<td>${fieldValue(bean: especialistaEspecialidadInstance, field: "precio")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${especialistaEspecialidadInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
