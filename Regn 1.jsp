<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
</head>
<body>
<form action="Verification.jsp" method="post">

<table border="3" align="center">
<tr>
<td> FirstName: </td>
<td><input type="text" id="fname" name="fname" maxlength="10"></td>
</tr>
<tr>
<td> LastName: </td>
<td><input type="text" id="lname" name="lname" maxlength="10"></td>
</tr>
<tr>
<td> UserName: </td>
<td><input type="text" id="uname" name="uname" maxlength="10"></td>
</tr>
<tr>
<td> DOB: </td>
<td><input type="text" id="dob" name="dob" maxlength="10">(dd-MM-yyyy)</td>
</tr>
<tr>
<td> PassWord: </td>
<td><input type="password" id="pwd" name="pwd"></td>
</tr>
<tr>
<td> Confirm PassWord: </td>
<td><input type="password" id="cpwd" name="cpwd"></td>
</tr>
<tr>
<td colspan="2" align="center"><input type="submit" id="sub" name="submit" value="Submit"></td>
</tr>

</table>

</form>  

</body>
</html>