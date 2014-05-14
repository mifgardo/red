
<%@ page import="red.Usuario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main2">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-usuario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-usuario" class="content scaffold-list" role="main2">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'usuario.nombre.label', default: 'Nombre')}" />
					
						<th><g:message code="usuario.estado.label" default="Estado" /></th>
					
						<g:sortableColumn property="municipio" title="${message(code: 'usuario.municipio.label', default: 'Municipio')}" />
					
						<g:sortableColumn property="fechaNacimiento" title="${message(code: 'usuario.fechaNacimiento.label', default: 'Fecha Nacimiento')}" />
					
						<g:sortableColumn property="mail" title="${message(code: 'usuario.mail.label', default: 'Mail')}" />
					
						<g:sortableColumn property="telefonoCelular" title="${message(code: 'usuario.telefonoCelular.label', default: 'Telefono Celular')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${usuarioInstanceList}" status="i" var="usuarioInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${usuarioInstance.id}">${fieldValue(bean: usuarioInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: usuarioInstance, field: "estado")}</td>
					
						<td>${fieldValue(bean: usuarioInstance, field: "municipio")}</td>
					
						<td>${fieldValue(bean: usuarioInstance, field: "fechaNacimiento")}</td>
					
						<td>${fieldValue(bean: usuarioInstance, field: "mail")}</td>
					
						<td>${fieldValue(bean: usuarioInstance, field: "telefonoCelular")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${usuarioInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
