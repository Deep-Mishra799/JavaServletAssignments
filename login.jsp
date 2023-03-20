<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
</head>
<body>

<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

<div align = "center">
<h1>Login Page</h1>
<h4>To access the home page you've to login first</h4><br>
<form method = "post" action="loginServlet">
<tr>
					<td>UserName</td>
					<td><input type="text" name="username" /></td>
				</tr><br><br>
					<tr>
					<td>Password</td>
					<td><input type="password" name="password" /></td>
				</tr><br><br> 
<input type="submit" name="submit">
<input type="reset" name="reset">
</form>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type ="text/javascript">
	var status = document.getElementById("status").value;
	if(status=="failed"){
		swal("sorry","Wrong username or password","failed");
	}
</script>

</body>
</html>