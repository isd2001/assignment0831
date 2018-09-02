<%@page import="java.nio.channels.SeekableByteChannel"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page errorPage="/error.jsp" %>
<%
	if(Math.random()>0.5){
		throw new RuntimeException("invalid request!");
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title><%= application.getInitParameter("title") %></title>
</head>
<body>
	<h2>6. HttpSession session</h2>
	<p>
		session ��ü�� http ���������� �����ϸ鼭 �߰������� ������� ��ü�ν�,
		<%
		HttpSession s = request.getSession();
	%>
		request��ü�� ���ؼ� Ȯ���Ͽ� ����Ҽ� �ְ� �� ��ü�̴�. �̰� �ٷ� ����Ҽ� �ְ� �̸� ���尴ü�� ��Ƶξ���.
		<%=s == session%>

	</p>
	<p>
		session �� �� ���α׷��� ����ϴ� Ŭ���̾�Ʈ���� ���������� ������ �� ������ ����� ��ü�ν�,
		<%=session.getId()%>
		, ����� ���¸� ����ϴ� �뵵�� �̴�.
	</p>
	<h2>7. ServletContext application</h2>
	<p>
		application ��ü�� ���α׷��� �����ɶ� �����Ǵ� ��ü��, servlet ���� ó���ߴٸ� , config ��
		request ��ü�� ���ؼ� ���� ����ؾߵǴ� ��ü�̴�.
		<%
		ServletContext ctx = config.getServletContext();
		ServletContext ctxx = request.getServletContext();
	%>
		<%=ctx == ctxx%>
		,
		<%=ctxx == application%>
		,
		<%=application == ctx%>

	</p>
	<p>ServletContxt ��ü�� ���ؼ� �ϴ� �۾��� , ���α׷� ������ param�� �����Ѵٰų� , log��
		����ٰų� , ���α׷��� ������ Ȯ���ϴ� �۾����̴�.</p>
	<%
		application.log("B.A.A.M !!");
	%>
	<h2>8. PageContext pageContext</h2>
	<p>
		������������� ���� ���� ��ü�� , container�� ���尴ü�� �������� �Ѳ����� ���������ؼ� �����ص� ��ü�̴�.
		<%=pageContext.getServletConfig()==config %>
		<%=pageContext.getServletContext()==application %>
		<%=pageContext.getOut()==out %>
	</p>
		<h2>+1. Exception exception</h2>
	<p>
		Exception ��ü�� �Ϲ������δ� �ȸ��������. / isErrorPage = true �� ������
		JSP���Ͽ��� ��������� ���尴ü�̴�.
		<%
		
		
		%>		
	
	</p>


</body>
</html>