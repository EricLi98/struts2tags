<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>ʹ��s:select��������ѡ���</title>
	<s:head/>
</head>
<body>
<h3>ʹ��s:select��������ѡ���</h3>
<s:form action="check">
<!-- ʹ�ü򵥼�������������ѡ��� -->
<s:select name="a" label="��ѡ����ϲ����ͼ��" labelposition="top" 
	multiple="true" list="{'Java����','Java EE',
	'JavaScript'}" value="{'Java����','Java EE'}"/>
<!-- ʹ�ü�Map��������������ѡ��� -->
<s:select name="b" label="��ѡ������ѡ���������" labelposition="top" headerKey="-1" headerValue="-��ѡ��-"
	list="#{'Java����':'2008��9��',
	'Java EE��ҵӦ��':'2008��12��', 
	'Java EE��ҵӦ��ʵս':'2010��7��'}"
	listKey="key"
	listValue="value"/>
<!-- ����һ��JavaBeanʵ�� -->
<s:bean name="com.inspur.BookService" var="bs"/>
<!-- ʹ�ü�����Ŷ��JavaBeanʵ������������ѡ��� -->
<s:select name="c" label="��ѡ����ϲ����ͼ��" labelposition="top"
	multiple="true"
	list="#bs.books"
	listKey="author"
	listValue="name"
	
	/>
<s:submit></s:submit>
</s:form>
</body>
</html>
