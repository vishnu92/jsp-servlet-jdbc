

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% out.println("Hello again in java scriptlet");
String a2 = new String();
a2 = "hello world String";
int a = 12;
a +=a;
out.println(" print a "+(++a));%>

<%out.println("/nhere print a2 "+a2 ); %>
<div class="login.do">
<%= "hello world" %>
  <h2>Login to your account</h2>
  <form action="login.do" method="POST">
    <input type="text" title="username" placeholder="username" name="userName"/>
    <input type="password" title="username" placeholder="password" name="password" />
    <button type="submit" class="btn">Login</button>
  </form>
</div>

</body>
</html>