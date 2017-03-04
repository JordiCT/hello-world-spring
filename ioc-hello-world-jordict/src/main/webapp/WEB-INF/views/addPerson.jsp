<%@ page session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<title>Person add</title>
</head>
<body>
	<div class="container-fluid">
		<div class="page-header">
			<h2>Person add</h2>
		</div>
		<div class="row">
			<div class="col-md-3">
				<form:form modelAttribute="person">
					<div class="form-group">
						<form:label cssClass="control-label" path="nombre">
							<spring:message code="name" />
						</form:label>
						<form:input cssClass="form-control" path="nombre" />
						<form:errors cssClass="error" path="nombre" />
					</div>
					<div class="form-group">
						<form:label cssClass="control-label" path="apellidos">Apellidos:</form:label>
						<form:input cssClass="form-control" path="apellidos" />
						<form:errors cssClass="error" path="apellidos" />
					</div>
					<div class="form-group">
						<form:label cssClass="control-label" path="githubProfile">Github Profile:</form:label>
						<form:input cssClass="form-control" path="githubProfile" />
						<form:errors cssClass="error" path="githubProfile" />
					</div>
					<div class="form-group">
						<form:label cssClass="control-label" path="username">Username:</form:label>
						<form:input cssClass="form-control" path="username" />
						<form:errors cssClass="error" path="username" />

					</div>
					<div class="form-group">
						<form:label cssClass="control-label" path="fecha_nacimiento">fecha de nacimiento:</form:label>
						<form:input cssClass="form-control" path="fecha_nacimiento" placeholder="dd/mm/yyyy"/>
						<form:errors cssClass="error" path="fecha_nacimiento" />

					</div>

					<div class="form-group">
						<form:label cssClass="control-label" path="email">email:</form:label>
						<form:input cssClass="form-control" path="email" />
						<form:errors cssClass="error" path="email" />

					</div>

					<div class="form-group">
						<form:label cssClass="control-label" path="telefono">telefono:</form:label>
						<form:input cssClass="form-control" path="telefono" />
						<form:errors cssClass="error" path="telefono" />

					</div>
					<div class="form-group">
						<form:label cssClass="control-label" path="poblacion">poblacion:</form:label>
						<form:input cssClass="form-control" path="poblacion" />
						<form:errors cssClass="error" path="poblacion" />

					</div>
					<div class="form-group">
						<form:label cssClass="control-label" path="dni">dni:</form:label>
						<form:input cssClass="form-control" path="dni" />
						<form:errors cssClass="error" path="dni" />

					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-primary">Guardar</button>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</html>