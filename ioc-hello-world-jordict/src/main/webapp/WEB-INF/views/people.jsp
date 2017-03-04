<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<title>People</title>
</head>
<body>
	<div class="container-fluid">
		<div class="page-header">
			<h2>People</h2>
		</div>
		<div class="row">
			<div class="col-md-9">
				<table class="table table-striped table-hover">
					<tr>
						<th>NAME</th>
						<th>SURNAME</th>
						<th>GITHUB PROFILE</th>
						<th>USERNAME</th>
					</tr>
					<c:forEach items="${people}" var="person">
						<tr>
							<td><c:out value="${person.nombre}" /></td>
							<td><c:out value="${person.apellidos}" /></td>
							<td><a href="${person.githubProfile}"><i class="fa fa-github-alt" aria-hidden="true">&emsp;</i>${person.username}</a></td>
							<spring:url value="/people/${person.username}" var="personURL" />
							<td><a href="${personURL}"><span class="glyphicon glyphicon-user">&emsp;</span>${person.username}</a></td>
							<td><a href="delete/${person.username}"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a></td>
						</tr>
					</c:forEach>
				</table>
				<spring:url value="/people/add" var="addPersonURL" />
				<a href="${addPersonURL}" class="btn btn-primary" role="button">Alta
					Persona</a>
			</div>
		</div>
	</div>
</body>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</html>
