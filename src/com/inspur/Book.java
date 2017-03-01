package com.inspur;


public class Book
{
	private String name;
	private String author;
	//无参数的构造器
	public Book()
	{
	}
	//初始化全部属性的构造器
	public Book(String name , String author)
	{
		this.name = name;
		this.author = author;
	}

	//name属性的setter和getter方法
	public void setName(String name)
	{
		this.name = name;
	}
	public String getName()
	{
		return this.name;
	}

	//author属性的setter和getter方法
	public void setAuthor(String author)
	{
		this.author = author;
	}
	public String getAuthor()
	{
		return this.author;
	}
}