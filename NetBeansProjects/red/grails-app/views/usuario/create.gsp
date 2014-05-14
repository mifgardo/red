<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
		<gui:resources components="['autoComplete']"/>
		<title><g:message code="default.create.label" args="[entityName]" /></title>
		<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
  		<script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
  		<link rel="stylesheet" href="http://resources/demos/style.css">
  		<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
  		
  		<script>
  		$(function() {
    	var oaxaca =  [
      	"Oaxaca de Juarez",
      	"Santa Lucia del Camino",
      	"Xoxocotlan"
      	];
    	$( "#municipio" ).autocomplete({
      	source: oaxaca
      	});
  			})
  		</script>
  		<script>
  		/*$(function() {
    	var puebla =  [
      	"Puebla de los Angeles",
      	"Tehuacan",
      	"Mixcoac"
      	];
    	$( "#municipio2" ).autocomplete({
      	source: puebla
      	});
  			})*/
  		</script>

  		<script type="text/javascript">
        $(document).ready(function()
        {
          $("#fechaNacimiento").datepicker({dateFormat: 'dd/mm/yy',changeYear:true});
        })
    </script>
	</head>
	<body>
		<a href="#create-usuario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>

		

		

		<div id="create-usuario" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${usuarioInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${usuarioInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:usuarioInstance, action:'save']" >
			<div class="ui-widget">
  
</div>
				
  			
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
