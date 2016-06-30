<%@ page import="dates.Cita" %>



<div class="fieldcontain ${hasErrors(bean: citaInstance, field: 'hora', 'error')} required">
	<label for="hora">
		<g:message code="cita.hora.label" default="Hora" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="hora" required="" value="${citaInstance?.hora}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: citaInstance, field: 'cliente', 'error')} required">
	<label for="cliente">
		<g:message code="cita.cliente.label" default="Cliente" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="cliente" name="cliente.id" from="${dates.Cliente.list()}" optionKey="id" required="" value="${citaInstance?.cliente?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: citaInstance, field: 'comentario', 'error')} required">
	<label for="comentario">
		<g:message code="cita.comentario.label" default="Comentario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="comentario" required="" value="${citaInstance?.comentario}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: citaInstance, field: 'especalista', 'error')} required">
	<label for="especalista">
		<g:message code="cita.especalista.label" default="Especalista" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="especalista" name="especalista.id" from="${dates.Especialista.list()}" optionKey="id" required="" value="${citaInstance?.especalista?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: citaInstance, field: 'fecha', 'error')} required">
	<label for="fecha">
		<g:message code="cita.fecha.label" default="Fecha" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fecha" precision="day"  value="${citaInstance?.fecha}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: citaInstance, field: 'fechaFin', 'error')} required">
	<label for="fechaFin">
		<g:message code="cita.fechaFin.label" default="Fecha Fin" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaFin" precision="day"  value="${citaInstance?.fechaFin}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: citaInstance, field: 'fechaInicio', 'error')} required">
	<label for="fechaInicio">
		<g:message code="cita.fechaInicio.label" default="Fecha Inicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaInicio" precision="day"  value="${citaInstance?.fechaInicio}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: citaInstance, field: 'finalizada', 'error')} ">
	<label for="finalizada">
		<g:message code="cita.finalizada.label" default="Finalizada" />
		
	</label>
	<g:checkBox name="finalizada" value="${citaInstance?.finalizada}" />

</div>

<div class="fieldcontain ${hasErrors(bean: citaInstance, field: 'servicio', 'error')} required">
	<label for="servicio">
		<g:message code="cita.servicio.label" default="Servicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="servicio" name="servicio.id" from="${dates.Especialidad.list()}" optionKey="id" required="" value="${citaInstance?.servicio?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: citaInstance, field: 'tipo', 'error')} required">
	<label for="tipo">
		<g:message code="cita.tipo.label" default="Tipo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tipo" name="tipo.id" from="${dates.TipoCita.list()}" optionKey="id" required="" value="${citaInstance?.tipo?.id}" class="many-to-one"/>

</div>

