<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.text.SimpleDateFormat,java.time.*,java.util.Date" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>student record</title>
</head>
<body>
<%

String strname = request.getParameter("uname");

String strpwd = request.getParameter("pwd");

String strcpwd = request.getParameter("cpwd");

String strdob = request.getParameter("dob");

SimpleDateFormat objformat = new SimpleDateFormat("dd-MM-yyyy");

Date objdate = objformat.parse(strdob);

Instant objinst = objdate.toInstant();

ZonedDateTime objzone = objinst.atZone(ZoneId.systemDefault());

LocalDate objlocaldate = objzone.toLocalDate();

Period objdiff = Period.between(objlocaldate,LocalDate.now());

if (objdiff.getYears() >= 18 && strpwd.equals(strcpwd))
{
%>

<h1> Welcome = <%= strname.toUpperCase()%> your gmail account is created successfully!!  </h1>
<%
}
else if (objdiff.getYears() < 18 && strpwd.equals(strcpwd))
{
%>
<h1><%= strname.toUpperCase()%> ...your gmail account is not created...</h1>
<h1>Because Age is under 18</h1>
<%
}
else if ( objdiff.getYears() >= 18 && !strpwd.equals(strcpwd) )
{
%>
<h1><%= strname.toUpperCase()%> ...your gmail account is not created...</h1>
<h1>Because your password not match with confirm password!! </h1>
<%
}
else
{
%>
<h1><%= strname.toUpperCase()%> ...your gmail account is not created...</h1>
<h1>Because both your password mismatch and your age is under 18!! </h1>
<%
}
%>
</body>
</html>