<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <h1>Main Page after including data.jsp</h1>
 <jsp:include page="data.jsp"></jsp:include>
<form action="/jsp-servlet-jdbc/jsp/load.jsp" method="post">
user : <input type="text" name="user"><br>
email : <input type="email"  name="email"><br>
<input type="submit" name="submit">
</form>
</body>
</html>