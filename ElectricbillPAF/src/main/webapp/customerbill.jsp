<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 <table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Address</th>
						<th>Unitsconsumed</th>
						<th>Billamount</th>
						<th>Date</th>
					</tr>
				</thead>
				<tbody>
					<!--   for (Todo todo: todos) {  -->
					<c:forEach var="cus" items="${cusDetails}">

						<tr>
							<td><c:out value="${cus.id}" /></td>
							<td><c:out value="${cus.name}" /></td>
							<td><c:out value="${cus.address}" /></td>
							<td><c:out value="${cus.unitsconsumed}" /></td>
							<td><c:out value="${cus.billamount}" /></td>
							<td><c:out value="${cus.date}" /></td>
							
						</tr>
					</c:forEach>
					<!-- } -->
				</tbody>

			</table>


</body>
</html>