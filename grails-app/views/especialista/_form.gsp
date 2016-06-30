<%@ page import="dates.Especialista" %>



<div class="fieldcontain ${hasErrors(bean: especialistaInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="especialista.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${especialistaInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: especialistaInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="especialista.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${especialistaInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: especialistaInstance, field: 'comentarios', 'error')} ">
	<label for="comentarios">
		<g:message code="especialista.comentarios.label" default="Comentarios" />
		
	</label>
	<g:textField name="comentarios" value="${especialistaInstance?.comentarios}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: especialistaInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="especialista.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${especialistaInstance?.accountExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: especialistaInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="especialista.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${especialistaInstance?.accountLocked}" />

</div>

<div class="fieldcontain ${hasErrors(bean: especialistaInstance, field: 'apellidos', 'error')} required">
	<label for="apellidos">
		<g:message code="especialista.apellidos.label" default="Apellidos" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidos" required="" value="${especialistaInstance?.apellidos}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: especialistaInstance, field: 'disponible', 'error')} ">
	<label for="disponible">
		<g:message code="especialista.disponible.label" default="Disponible" />
		
	</label>
	<g:checkBox name="disponible" value="${especialistaInstance?.disponible}" />

</div>

<div class="fieldcontain ${hasErrors(bean: especialistaInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="especialista.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${especialistaInstance?.enabled}" />

</div>

<div class="fieldcontain ${hasErrors(bean: especialistaInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="especialista.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${especialistaInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: especialistaInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="especialista.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${especialistaInstance?.passwordExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: especialistaInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="especialista.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefono" required="" value="${especialistaInstance?.telefono}"/>

</div>

