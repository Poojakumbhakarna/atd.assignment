<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*,java.util.*,com.deepsoft.jerseyProject.*"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Anytime Developer Assignment</title>
</head>
<body>
<%
DeepDbLib dbconn = (DeepDbLib) request.getSession().getAttribute("dbconn");dbconn.closeConnection();
dbconn.closeConnection();
 session.invalidate(); 
HttpSession ses = request.getSession(false);
if(ses != null) {
   out.print(session.getAttribute("officer_id"));
}
else{
 response.setStatus(response.SC_MOVED_TEMPORARILY);
      response.setHeader("Location","index.jsp");
        
}
%>
</body>
</html>
