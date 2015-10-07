package com.logostory.logos.product.domain;

import java.io.Serializable;

public class Product implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private String f_type 		= "";
	private String f_name		= "";
	private String f_desc 		= "";
	private String image_addr 	= "";
	
	public String getF_type() {
		return f_type;
	}
	public void setF_type(String f_type) {
		this.f_type = f_type;
	}
	public String getF_name() {
		return f_name;
	}
	public void setF_name(String f_name) {
		this.f_name = f_name;
	}
	public String getF_desc() {
		return f_desc;
	}
	public void setF_desc(String f_desc) {
		this.f_desc = f_desc;
	}
	public String getImage_addr() {
		return image_addr;
	}
	public void setImage_addr(String image_addr) {
		this.image_addr = image_addr;
	}
	
}
