<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register page</title>
</head>
<body>
<c:set var="name" value="vishnu's web pages" scope="page"></c:set>
<a href="login.jsp">Login page</a>
<div class="register.do" >
  <h2>Register your account</h2>
  <form method="post" action="register.do">
    <input type="text" title="fullname" placeholder="fullname" name="fullname"/>
    <input type="email" title="email" placeholder="email" name="email"/>
    <input type="text" title="username" placeholder="username"  name ="username"/>
    <input type="password" title="password" placeholder="password" name ="password" />
    <input type="password" title="password" placeholder="reenter-password" name ="password1" />
    <button type="submit" class="btn">Register</button>
  </form>
</div>

</body>
</html>