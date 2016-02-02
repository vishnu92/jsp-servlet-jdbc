<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Presenting database content using tags</title>
<sql:setDataSource var="conn" driver="org.postgresql.Driver"
	url="jdbc:postgresql://127.0.0.1:5432/postgres" user="postgres"
	password="admin" />
</head>

<body>

	<h1>Register table</h1>
	<sql:query dataSource="${conn}" var="register">
    SELECT * FROM Register
</sql:query>
	<table width="90%" border="1">
		<tr>
			<!-- add the table column headings -->
			<c:forEach var="columnName" items="${register.columnNames}">
				<th><c:out value="${columnName}" /></th>
			</c:forEach>
		</tr>
		<!-- add the table rows from the result set -->
		<c:forEach var="row" items="${register.rowsByIndex}">
			<tr>
				<c:forEach var="column" items="${row}">
					<td><c:out value="${column}" /></td>
				</c:forEach>
			</tr>
		</c:forEach>
	</table>
</body>
</html>