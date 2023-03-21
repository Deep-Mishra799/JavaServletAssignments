<%@page import="java.io.PrintWriter"%>
<%@page import="javax.servlet.http.HttpSession" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    if(session.getAttribute("username")==null){
    	response.sendRedirect("button.jsp");
    }else{
    	
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h1>Welcome to our home page</h1><br><br><br>
<%
  HttpSession Deep = request.getSession(false);
  if(Deep != null && Deep.getAttribute("username") != null) {
%>
    <p>Welcome, <%= Deep.getAttribute("username") %>!</p>
    <form action="logoutServlet" method="post">
      <input type="submit" value="Logout">
    </form>
<%
  }
%>

</div>
</body>
</html>