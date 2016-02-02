<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Success page</title>
</head>
<body>
<jsp:useBean id="regDetails" class="com.bellinfo.advance.modal.RegistrationDetails" scope="request"> </jsp:useBean>
<jsp:getProperty property="fullname" name="regDetails"/>

<%
 String validationData = null;
 if(request.getAttribute("validationInfo")!=null){
    validationData = request.getAttribute("validationInfo").toString();
 }
 out.println(validationData);
%>
 <a href="/servlet-jdbc-program/login.jsp">Login</a><br/>
</body>
</html>