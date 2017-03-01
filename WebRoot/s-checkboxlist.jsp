<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>使用s:checkboxlist生成多个复选框</title>
	<s:head/>
</head>
<body>
<h3>使用s:checkboxlist生成多个复选框</h3>
<s:form action="check">
<!-- 使用简单集合来生成多个复选框 -->
<s:checkboxlist name="a" label="请选择您喜欢的图书" 
	labelposition="top" list="{'Java EE企业应用实战'
	, 'Java EE企业应用'
	, 'Java'}"/>
<!-- 使用简单Map对象来生成多个复选框
	使用Map对象的key（书名）作为复选框的value，
	使用Map对象的value（出版时间）作为复选框的标签-->
<s:checkboxlist name="b" label="请选择您想选择出版日期" 
	labelposition="top"	list="#{'疯狂Java讲义':'2008年9月'
	,'轻量级Java EE企业应用实战':'2008月12月'
	,'经典Java EE企业应用实战':'2010年8月'}"
	listKey="key"
	listValue="value"/>
<s:bean name="com.inspur.BookService" var="bs"/>
<!-- 使用集合里放多个JavaBean实例来生成多个复选框
	使用集合元素里name属性作为复选框的标签
	使用集合元素里author属性作为复选框的value-->
<s:checkboxlist name="b" label="请选择您喜欢的图书" 
	labelposition="top"
	list="#bs.books"
	listKey="author"
	listValue="name"/>
<s:submit></s:submit>
</s:form>
</body>
</html>
