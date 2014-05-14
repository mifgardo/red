<%@ page import="red.Ciudad" %>



<div class="fieldcontain ${hasErrors(bean: ciudadInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="ciudad.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="nombre" from="${ciudadInstance.constraints.nombre.inList}" required="" value="${ciudadInstance?.nombre}" valueMessagePrefix="ciudad.nombre"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ciudadInstance, field: 'municipios', 'error')} ">
	<label for="municipios">
		<g:message code="ciudad.municipios.label" default="Municipios" />
		
	</label>
	<g:select name="municipios" from="${red.Municipio.list()}" multiple="multiple" optionKey="id" size="5" value="${ciudadInstance?.municipios*.id}" class="many-to-many"/>

</div>

