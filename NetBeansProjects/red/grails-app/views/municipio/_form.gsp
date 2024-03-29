<%@ page import="red.Municipio" %>



<div class="fieldcontain ${hasErrors(bean: municipioInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="municipio.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="100" required="" value="${municipioInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: municipioInstance, field: 'estado', 'error')} required">
	<label for="estado">
		<g:message code="municipio.estado.label" default="Estado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="estado" name="estado.id" from="${red.Estado.list()}" optionKey="id" required="" value="${municipioInstance?.estado?.id}" class="many-to-one"/>

</div>

