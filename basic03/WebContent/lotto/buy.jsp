<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.text.*" %>
<%
	if(session.getAttribute("pass") == null) {
		// response.sendRedirect(request.getContextPath()+"/lotto/auth.jsp");
		response.sendRedirect("auth.jsp");
	}
	DecimalFormat df = new DecimalFormat("00");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Lotto</title>
</head>
<body style="text-align: center">
	<h2>�ζ� �ڵ� �߱Ǳ�</h2>
	<p>
		�����ϰ��� �ϴ¼�����, 
			���Խ��ѾߵǴ� ���ڰ� �ִٸ� üũ�Ͻ� �� <b>��û</b>�� ���ּ���.<br/>
	</p>
	<form action="result.jsp">
		<p>
			<%for(int n=1; n<=45; n++) { %>
				<input type="checkbox" value="<%=n %>" name="num"/> <%=df.format(n) %>
				<%if(n%5==0) { %>
					<br/>
				<%} %>
			<%} %>
		</p>
		<p>
			<b>���߱Ǽ���</b> : <input type="number" min="1" max="10" name="cnt"/> <button>�߱ǽ�û</button>
		</p> 
		
	</form>
	
</body>
</html>






