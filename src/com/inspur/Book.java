package com.inspur;


public class Book
{
	private String name;
	private String author;
	//�޲����Ĺ�����
	public Book()
	{
	}
	//��ʼ��ȫ�����ԵĹ�����
	public Book(String name , String author)
	{
		this.name = name;
		this.author = author;
	}

	//name���Ե�setter��getter����
	public void setName(String name)
	{
		this.name = name;
	}
	public String getName()
	{
		return this.name;
	}

	//author���Ե�setter��getter����
	public void setAuthor(String author)
	{
		this.author = author;
	}
	public String getAuthor()
	{
		return this.author;
	}
}