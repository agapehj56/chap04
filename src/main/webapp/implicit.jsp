
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>implicit.jsp</title>
</head>
<body>
<%
	// URL ==> http://localhost/implicit.jsp?xxx=seoul
%>
<ol>
	<li>Portocol = <%= request.getProtocol() %></li>
	<li>ServerName = <%= request.getServerName() %></li>
	<li>ServerPort = <%= request.getServerPort() %></li>
	<li>ContextPath = <%= request.getContextPath() %> </li>
	<li>RequestURI = <%= request.getRequestURI() %> </li>
	<li>QueryString = <%= request.getQueryString() %> </li>
	<li>ClientName = <%= request.getLocalName() %> </li>
	<li>ClientAddr = <%= request.getRemoteAddr() %> </li>
</ol>
<%
	Enumeration<String> headers = request.getHeaderNames();

	while(headers.hasMoreElements()) {
		String header = headers.nextElement();
		out.println(header + " : " + request.getHeader(header)+ "<br>");
	}
%>
</body>
</html>