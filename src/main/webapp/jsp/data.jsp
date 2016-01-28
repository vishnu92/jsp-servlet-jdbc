<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% Enumeration e = request.getHeaderNames();
   while(e.hasMoreElements()){
	   String key = e.nextElement().toString();
       out.println(key +" : "+ request.getHeader(key)); %>
    <br>  
   <%}%>   
User Agent is : <%out.println(request.getHeader("User-Agent"));%><br>
Today Date is : <%=new Date().toLocaleString()%>

</body>
</html>