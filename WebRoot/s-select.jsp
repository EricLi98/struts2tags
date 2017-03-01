<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>使用s:select生成下拉选择框</title>
	<s:head/>
</head>
<body>
<h3>使用s:select生成下拉选择框</h3>
<s:form action="check">
<!-- 使用简单集合来生成下拉选择框 -->
<s:select name="a" label="请选择您喜欢的图书" labelposition="top" 
	multiple="true" list="{'Java讲义','Java EE',
	'JavaScript'}" value="{'Java讲义','Java EE'}"/>
<!-- 使用简单Map对象来生成下拉选择框 -->
<s:select name="b" label="请选择您想选择出版日期" labelposition="top" headerKey="-1" headerValue="-请选择-"
	list="#{'Java讲义':'2008年9月',
	'Java EE企业应用':'2008月12月', 
	'Java EE企业应用实战':'2010年7月'}"
	listKey="key"
	listValue="value"/>
<!-- 创建一个JavaBean实例 -->
<s:bean name="com.inspur.BookService" var="bs"/>
<!-- 使用集合里放多个JavaBean实例来生成下拉选择框 -->
<s:select name="c" label="请选择您喜欢的图书" labelposition="top"
	multiple="true"
	list="#bs.books"
	listKey="author"
	listValue="name"
	
	/>
<s:submit></s:submit>
</s:form>
</body>
</html>
