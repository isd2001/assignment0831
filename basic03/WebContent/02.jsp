<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Implicit Object</title>
</head>
<body>
	<h2>1. HttpServletRequset request / 2. HttpServletResponse response </h2>
	<P>
		�� �� ��ü�� Servlet�� ���� ���鶧 ����� ���Ҵ� 
		ServletRequest , ServletResponse �� Ȯ�尴ü�̴�.<br/>
		��� �غô� ��� �޼������ ������ �ְ� , �߰� ������ ��ɵ��� �����Ѵ�.
	
	</P>
	<p>
		���� ��� request ��ü���� ��쿡�� ��û ��� (<%= request.getMethod() %>)
		�̶���� , security �� ���õ� �޼��� (<%= request.isSecure() %>) ���� �߰����ִ�.	
	</p>
	<p>
		response ��ü�� ��������� �� ���� �ǰ����� , ��Űó���� ���õ� �߰��� ��ɵ��� �����Ѵ�.
		<%
			response.addCookie(new Cookie("LGU+","test"));
		%>
	</p>
	
	<h2>3. JSPWriter out</h2>
	<p>
		�� ��ü�� response�� ���ؼ� Ȯ���ߴ� PrintWriter �� ������ �ϴ� ��ü�̴�.
		<% 
			// scriptlet���� 
			out.print("���� <b>out</b>��ü�� �̿��ؼ� ����� �����ص� �ȴ�.");
			// out.clear();
		%>
	
	</p>
	<h2>4. ServletConfig config</h2>
	<p>
		�������� ��ûó���Ҷ� init�� �Ű������� �����ִ� , config ��ü�� ���尴ü�� �ϳ��̴�.
		JSP������ Ȱ���� �浵�� ���⿡ �߿����� �ʴ�.
		<%
			config.getInitParameter("");		//?
			// int config;
		%>
	</p>
	<h2>5. Object page</h2>
	<p>
		page ��ü�� this ���� ��Ƶ� ��ü�̴�. <%= page== this %>
		<%
			
		%>
	</p>
	
</body>
</html>