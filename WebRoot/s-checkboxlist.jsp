<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>ʹ��s:checkboxlist���ɶ����ѡ��</title>
	<s:head/>
</head>
<body>
<h3>ʹ��s:checkboxlist���ɶ����ѡ��</h3>
<s:form action="check">
<!-- ʹ�ü򵥼��������ɶ����ѡ�� -->
<s:checkboxlist name="a" label="��ѡ����ϲ����ͼ��" 
	labelposition="top" list="{'Java EE��ҵӦ��ʵս'
	, 'Java EE��ҵӦ��'
	, 'Java'}"/>
<!-- ʹ�ü�Map���������ɶ����ѡ��
	ʹ��Map�����key����������Ϊ��ѡ���value��
	ʹ��Map�����value������ʱ�䣩��Ϊ��ѡ��ı�ǩ-->
<s:checkboxlist name="b" label="��ѡ������ѡ���������" 
	labelposition="top"	list="#{'���Java����':'2008��9��'
	,'������Java EE��ҵӦ��ʵս':'2008��12��'
	,'����Java EE��ҵӦ��ʵս':'2010��8��'}"
	listKey="key"
	listValue="value"/>
<s:bean name="com.inspur.BookService" var="bs"/>
<!-- ʹ�ü�����Ŷ��JavaBeanʵ�������ɶ����ѡ��
	ʹ�ü���Ԫ����name������Ϊ��ѡ��ı�ǩ
	ʹ�ü���Ԫ����author������Ϊ��ѡ���value-->
<s:checkboxlist name="b" label="��ѡ����ϲ����ͼ��" 
	labelposition="top"
	list="#bs.books"
	listKey="author"
	listValue="name"/>
<s:submit></s:submit>
</s:form>
</body>
</html>
