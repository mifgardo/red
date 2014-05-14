<%@ page import="red.Usuario" %>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="usuario.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${usuarioInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'estado', 'error')} required">
	<label for="estad">
		<g:message code="usuario.estado.label" default="Estado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="estado" name="estado.id" from="${red.Estado.list()}" optionKey="id" required="" value="${usuarioInstance?.estado?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'municipio', 'error')} ">
	<label for="municipio">
		<g:message code="usuario.municipio.label" default="Municipio" />
		
	</label>
	<g:textField name="municipio" id="municipio" value="${usuarioInstance?.municipio}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'fechaNacimiento', 'error')} required">
	<label for="fechaNacimiento">
		<g:message code="usuario.fechaNacimiento.label" default="Fecha Nacimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="fechaNacimiento" id="fechaNacimiento" value="${usuarioInstance?.fechaNacimiento}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'mail', 'error')} ">
	<label for="mail">
		<g:message code="usuario.mail.label" default="Mail" />
		
	</label>
	<g:textField name="mail" value="${usuarioInstance?.mail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'telefonoCelular', 'error')} ">
	<label for="telefonoCelular">
		<g:message code="usuario.telefonoCelular.label" default="Telefono Celular" />
		
	</label>
	<g:textField name="telefonoCelular" maxlength="10" value="${usuarioInstance?.telefonoCelular}"/>

</div>

