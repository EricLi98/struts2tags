package com.inspur;



public class BookService
{
	public Book[] getBooks()
	{
		return new Book[]
		{
			new Book("Java讲义","aa"),
			new Book("Java EE企业应用","aa"),
			new Book("经典Java EE","aa"),
			new Book("Ajax讲义","aa")
		};
	}
}
