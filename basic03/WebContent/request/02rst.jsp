<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.io.*"%>
<%
	int len=request.getContentLength();
	System.out.println("len=="+len);
	InputStream is = request.getInputStream();
	BufferedReader br = new BufferedReader(new InputStreamReader(is));
	String got=br.readLine();
	System.out.println("readLine =="+got);
	System.out.println("queryString =="+request.getQueryString());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>��û�м�</h2>
	<ul>
		<li>��û��� : <%=request.getMethod() %></li>
		<li>��û�Ķ� : <%=request.getParameter("data") %></li>
	</ul>


</body>
</html>