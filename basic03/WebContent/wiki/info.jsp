<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page errorPage="/wiki/error.jsp" %>
<%!
	Map<String,String> datas;
	public void jspInit(){
		datas=new HashMap<>();
		datas.put("luffy","������");
		datas.put("zoro","Į����");
		datas.put("nami","���ػ�");
		datas.put("usop","���ݼ�");
		
	}
%>
<%
	String key=request.getParameter("key");
	if(!datas.containsKey(key)){
		throw new IllegalAccessException("invalid key");
	}
	String value=datas.get(key);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title><%=key %></title>
</head>
<body>
	��ǥ : <%=value %>
	

</body>
</html>