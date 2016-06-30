<%@ page import="dates.Especialidad" %>



<div class="fieldcontain ${hasErrors(bean: especialidadInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="especialidad.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" required="" value="${especialidadInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: especialidadInstance, field: 'disponible', 'error')} ">
	<label for="disponible">
		<g:message code="especialidad.disponible.label" default="Disponible" />
		
	</label>
	<g:checkBox name="disponible" value="${especialidadInstance?.disponible}" />

</div>

<div class="fieldcontain ${hasErrors(bean: especialidadInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="especialidad.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${especialidadInstance?.nombre}"/>

</div>

