<%--
��վ: <a href="http://www.crazyit.org">���Java����</a>
author  yeeku.H.lee kongyeeku@163.com
version  1.0
Copyright (C), 2001-2012, yeeku.H.Lee
This program is protected by copyright laws.
Program Name:
Date: 
--%>

<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>ʹ��s:radio���ɶ����ѡ��</title>
	<s:head/>
</head>
<body>
<h3>ʹ��s:radio���ɶ����ѡ��</h3>
<s:form>
<!-- ʹ�ü򵥼��������ɶ����ѡ�� -->
<s:radio name="a" label="��ѡ����ϲ����ͼ��" labelposition="top"
	list="{'���Java����','������Java EE��ҵӦ��ʵս',
		'����Java EE��ҵӦ��ʵս'}"/>
<!-- ʹ�ü�Map���������ɶ����ѡ�� -->
<s:radio name="b" label="��ѡ������ѡ���������" labelposition="top"
	list="#{'���Java����':'2008��9��'
	,'������Java EE��ҵӦ��ʵս':'2008��12��'
	,'����Java EE��ҵӦ��ʵս':'2010��8��'}"
	listKey="key"
	listValue="value"/>
<!-- ����һ��JavaBeanʵ�� -->
<s:bean name="com.inspur.BookService" var="bs"/>
<!-- ʹ�ü�����Ŷ��JavaBeanʵ�������ɶ����ѡ�� -->
<s:radio name="c" label="��ѡ����ϲ����ͼ��" labelposition="top"
	list="#bs.books"
	listKey="author"
	listValue="name"/>
</s:form>
</body>
</html>