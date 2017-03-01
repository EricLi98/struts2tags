package com.inspur;

import com.opensymphony.xwork2.ActionSupport;

public class CheckAction extends ActionSupport {
	String [] a;
	String message;
	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String[] getA() {
		return a;
	}

	public void setA(String[] a) {
		this.a = a;
	}

	@Override
	public String execute() throws Exception {
		message="I have selected "+a.length+"checkboxs. they are:";
		for(int i=0;i<this.a.length;i++){
			message+=a[i];
		}
			
		return SUCCESS;
	}
	
	

}
