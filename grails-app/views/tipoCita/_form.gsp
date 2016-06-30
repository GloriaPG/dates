<%@ page import="dates.TipoCita" %>



<div class="fieldcontain ${hasErrors(bean: tipoCitaInstance, field: 'tipo', 'error')} required">
	<label for="tipo">
		<g:message code="tipoCita.tipo.label" default="Tipo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tipo" required="" value="${tipoCitaInstance?.tipo}"/>

</div>

