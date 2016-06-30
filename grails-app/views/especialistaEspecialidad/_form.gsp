<%@ page import="dates.EspecialistaEspecialidad" %>



<div class="fieldcontain ${hasErrors(bean: especialistaEspecialidadInstance, field: 'disponible', 'error')} ">
	<label for="disponible">
		<g:message code="especialistaEspecialidad.disponible.label" default="Disponible" />
		
	</label>
	<g:checkBox name="disponible" value="${especialistaEspecialidadInstance?.disponible}" />

</div>

<div class="fieldcontain ${hasErrors(bean: especialistaEspecialidadInstance, field: 'especialidad', 'error')} required">
	<label for="especialidad">
		<g:message code="especialistaEspecialidad.especialidad.label" default="Especialidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="especialidad" name="especialidad.id" from="${dates.Especialidad.list()}" optionKey="id" required="" value="${especialistaEspecialidadInstance?.especialidad?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: especialistaEspecialidadInstance, field: 'especialista', 'error')} required">
	<label for="especialista">
		<g:message code="especialistaEspecialidad.especialista.label" default="Especialista" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="especialista" name="especialista.id" from="${dates.Especialista.list()}" optionKey="id" required="" value="${especialistaEspecialidadInstance?.especialista?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: especialistaEspecialidadInstance, field: 'precio', 'error')} required">
	<label for="precio">
		<g:message code="especialistaEspecialidad.precio.label" default="Precio" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="precio" value="${fieldValue(bean: especialistaEspecialidadInstance, field: 'precio')}" required=""/>

</div>

