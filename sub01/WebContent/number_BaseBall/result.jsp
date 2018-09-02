<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int st=0;
	int ball=0;
	int ou=0;
	
	int[] ch=new int[3];
	String set1=(String) request.getParameter("set1");
	ch[0] = Integer.parseInt(set1);
	String set2=(String) request.getParameter("set2");
	ch[1] = Integer.parseInt(set2);
	String set3=(String) request.getParameter("set3");
	ch[2] = Integer.parseInt(set3);
	
	System.out.println("number[0]"+ch[0]);
	System.out.println("number[1]"+ch[1]);
	System.out.println("number[2]"+ch[2]);
	System.out.println("===================");
	
	
	int[] number= new int[3];
	number[0]= (Integer) session.getAttribute("number1");
	number[1]= (Integer) session.getAttribute("number2");
	number[2]= (Integer) session.getAttribute("number3");
	
	System.out.println("number[0]"+number[0]);
	System.out.println("number[1]"+number[1]);
	System.out.println("number[2]"+number[2]);
	System.out.println("===================");
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>확인중</title>
</head>
<body>



</body>
</html>