<%@page import="java.util.Date"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login page</title>
</head>
<body>

<c:out value="${name}"/>
<jsp:useBean id="DateTime" class="java.util.Date" scope="page" ></jsp:useBean>
<br>
<f:formatDate value="<%= DateTime %>" pattern="dd-MM-yyyy hh:mm:ss"/>
<div class="login.do">
  <h2>Login to your account</h2>
  <form action="login.do" method="POST">
    <input type="text" title="username" placeholder="username" name="userName"/>
    <input type="password" title="username" placeholder="password" name="password" />
    <button type="submit" class="btn">Login</button>
  </form>
</div>
</body>
</html>