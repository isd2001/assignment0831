<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>#request</title>
</head>
<body>
	<h2>HTML �� UI �����ϱ�</h2>
	<p>���ݱ����� �ּ�â�� ���� ��û��θ� ���� ������ ��츸 ó���ߴµ�, ���� �����α׷��� Ŭ���̾�Ʈ������ ��û�� ����
		�߻���ų �� �ְ� HTML�� ��ġ�� �����صξ�� �Ѵ�. ũ�� 2������ �̿��ؼ� �����صѼ��� �ִ�.</p>
	<h3>anchor tag</h3>
	<p>a �±״� �۾��� �̹����� Ŭ�������� , ��û�� �Ͼ�� �ְ� ��ũ ������ �ϴ� �±��̴�. a �±׷� ���ؼ�
		Ŭ���̾�Ʈ������ �߻��� ��û�� GET ���� ��û�� �Ͼ�� �ȴ�.</p>
	<a href="01.jsp">��ũ</a> |
	<a href="01.jsp?p=sports">������ </a> |
	<a href="<%=request.getContextPath()%>/request/01.jsp?p=sports">������(����)
	</a> |
	<a href="01.jsp?p=movie"><img
		src="https://post.naver.com/viewer/postView.nhn?volumeNo=15565985&memberNo=26715199#" /></a>
	<p>��δ� �����,������, ��ü��� �� ���������ϴ�.</p>
	<h3>form tag</h3>
	<p>form tag�� ����ڿ��� �����͸� �Է��Ҽ� �ְ� �صΰ�, �ۼ��̳� , ���õ� ������ ������ ��û�� �߻���Ű����
		�Ҷ� ����ϴ� �±��̴�. input ��ҵ鿡 �Ķ���͸��� �����ؼ� �����ؾ� �ϰ�, ���� ��ҿ��� �׼��� �߻��Ѵٰų�, ��Ƽ
		input ��ҿ��� submit�� �Ͼ��.</p>
	<form action="01.jsp">
		input(default) : <input name="p" /> <br /> 
		input(text) : <input name="t" type="text" /> <br /> 
		input(password) : <input name="d" type="text" /> <br />
		input(date) : <input name="b" type="date" /><br />
		input(number) : <input name="n" type="number" /> <br />
		<button>����</button>
		<button type="submit">����</button>
		<button type="reset">���</button>
		<button type="button" onclick="window.alery('okay?')">�Ϲݹ�ư	</lbutton>
	</form>


	

</body>
</html>