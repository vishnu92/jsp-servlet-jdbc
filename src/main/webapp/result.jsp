<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.sql.*" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result page</title>
</head>
<body>

<jsp:useBean id="loggedUser" class="com.bellinfo.advance.modal.LoginDetails" scope="request">
 </jsp:useBean>
<jsp:getProperty property="username" name="loggedUser"/>
<jsp:getProperty property="password" name="loggedUser"/> 

<% 
String message = request.getAttribute("info").toString();
if(message.equals("oops...login failed")){
	response.sendError(404);
	out.println(message);
} else {
	response.setStatus(200);
}
out.println(message); %>


	
</body>
</html>
