<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<title>Perfil de ${persona.nombre}</title>
</head>
<body>
	<div class="container-fluid">
		<div class="page-header">
			<h2>Perfil de ${persona.nombre}</h2>
		</div>
		<div class="row">
			<div class="col-md-9">
				<table class="table table-striped table-hover">
					<tr>
						<th>ATRIBUTO</th>
						<th>VALOR</th>
					</tr>
					<tr>
						<td>Nombre</td>
						<td><c:out value="${persona.nombre}" /></td>
					</tr>
					<tr>
						<td>Apellidos</td>
						<td><c:out value="${persona.apellidos}" /></td>
					</tr>
					<tr>
						<td>Perfil GITHub</td>
						<td><a href="${persona.githubProfile}"><i class="fa fa-github-alt" aria-hidden="true">&emsp;</i>${persona.username}</a></td>
					</tr>

				</table>
				<spring:url value="/people/add" var="addPersonURL" />
				<a href="${addPersonURL}" class="btn btn-primary" role="button">AltaPersona</a>

			</div>
		</div>
	</div>


</body>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</html>