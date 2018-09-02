<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title># request.</title>
</head>
<body>

	<h1>HttpServletRequest request</h1>
	<p>
		request ��ü�� �뵵�� Servlet���� ���Ǵ� ServletReqeust �� ���� �뵵�̰� ,
		�� ��ü�� ������ �ִ� �޼��� �߿� �̹� ���캸������ �߿��ϴٰų� , �߰��� �͵鿡 ���ؼ�
		�˾ƺ���.		
	</p>
	
	<h3>������ ���캻�͵�</h3>
	<ul>
		<li>Ŭ���̾����� IP (String): <%=request.getRemoteAddr() %></li>
		<li>���޽�Ų �Ķ���Ͱ� (String): <%=request.getParameter("p") %></li>
		<li>���޽�Ų �Ķ���Ͱ��� (String[]): <%=request.getParameterValues("date") %></li>
	</ul>
	<h3>�߰��Ǿ��ų� ���� �ʾҴ� �͵�</h3>
	<%
		String method = request.getMethod();			//��û��� (GET,POST) ���̴� ���� �ڿ�
		StringBuffer url = request.getRequestURL();		//String �� ũ�� ���̰� ����.
		String protocol = request.getProtocol();		
		String path=request.getContextPath();			//������� ���氡��
		String uri=request.getRequestURI();
		String query=request.getQueryString();
	%>
	<ul>
		<li>��û��� :<%=method %></li>
		<li>��ü ��û ��� : <%=url %></li>
		<li>��ű�Ģ :<%=protocol %></li>
		<li>���α׷��� ������ ���:<%=path %></li>
		<li>�����ּҸ� ������ ��� : <%=uri %></li>
		<li>��η� ���޵� ?���޿� ����<%=query %></li>
	</ul>
	<p>
		## ��û��Ŀ� ���� ������ HTML �� UI ������ �ؾ����� �� ���캼�� �ִ�.
		
	</p>
	
	

</body>
</html>