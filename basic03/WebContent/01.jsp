<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%!
	public void spec(){
		
}
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Implicit Objects</title>
</head>
<body>
	<h2>JSP ����� Web Application</h2>
	<p>
		Java�� �� ���ø����̼�(���α׷�)�� ������� ��ûó���� Servlet�� �̿��ؼ� �ؾߵǴµ�,
		���� ���� ����� ���ؼ� JSP��� ���(=���)�� ��������� �Ǿ���. <br/>
		���� JSP�� servlet���� ��ȯ�Ǿ� �۵��ǰ� ���ְ� ���� servlet���� �����°� �ƴϱ⿡,
		JSP ���Ͽ� �����̳� �ڹ��ڵ带 ������� �����ؾߵǴ��� �˾ƺ��Ҵ�.
	</p>
	<p>
		�����ۼ��� �ϴ� ����� �˾����� ���� ��ûó���� �غ����ϴµ�, 
		(Servlet���� ���������� �Ű������� �����ִ� ServletRequest, ServletResponse ��ü �̿��ϵ�) <br/>
		JSP ���Ͽ����� ���������� ��ȯ�� �ǰ���, service �޼���� ó���� �Ǳ� ������, 
		���� �����̳� Ȯ�� ���� �ִٰ� �����ϰ� ����ϸ� �ȴ�.
	</p>
	<hr/>
	<%
		String addr = request.getLocalAddr();
		//response.reset();
		String data=request.getParameter("data");
		//System.out.println("data=="+data);		null ���..
	%>
	<h3>Server SPEC</h3>
	<p>
		<b>ADDRESS</b> : <%=addr %>:<%=request.getLocalPort() %> 
	</p>
	<hr/>
	<p>
		�� request , response ���� ��ûó���߿� ����Ҽ� �ִ� ��ü���� �����ϴµ� , �̰�ü����
		���� ��ü or ������ü (Implicit Objects) ��� �Ѵ�.<br/>
		�̷��� ������� ����ϼ� �ִ� ��ü���� , request�� �����Ͽ� �� <b>8</b>(+1) ���� ��ü�� �����Ѵ�.
	</p>
	
	
	
</body>
</html>