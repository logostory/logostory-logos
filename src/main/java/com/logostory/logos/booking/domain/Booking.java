package com.logostory.logos.booking.domain;

import java.io.Serializable;

/*
  
테이블 구조
bkId 		int not null auto_increment comment 'promotion id',
bkName		varchar(10) comment 'booking of name if user it is id(user)',
bkEmail		varchar(20) comment 'booking of email',
bkPhone		varchar(40) comment 'booking of phone',
bkPerson	varchar(10) comment 'booking of person',
bkMessage	varchar(255)comment 'booking of message',
--primary key (bkId)

*/

public class Booking implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	//구상중
	//private String bkId 		= ""; //예약자 ID
	
	private int bkNum			= 1;  //예약 번호
	private String bkName		= ""; //예약자 이름 * 'if user exist, it is id(user)'
	private String bkEmail 		= ""; //예약자 이메일
	private String bkPhone 		= ""; //예약자 핸드폰번호
	private String bkPerson 	= ""; //예약자 명수
	private String bkMessage 	= ""; //예약자 메세지
	
	/*
	구상중
	public String getBkId() {
		return bkId;
	}
	public void setBkId(String bkId) {
		this.bkId = bkId;
	}*/
	
	
	public int getBkNum() {
		return bkNum;
	}
	public void setBkNum(int bkNum) {
		this.bkNum = bkNum;
	}
	public String getBkName() {
		return bkName;
	}
	public void setBkName(String bkName) {
		this.bkName = bkName;
	}
	public String getBkEmail() {
		return bkEmail;
	}
	public void setBkEmail(String bkEmail) {
		this.bkEmail = bkEmail;
	}
	public String getBkPhone() {
		return bkPhone;
	}
	public void setBkPhone(String bkPhone) {
		this.bkPhone = bkPhone;
	}
	public String getBkPerson() {
		return bkPerson;
	}
	public void setBkPerson(String bkPerson) {
		this.bkPerson = bkPerson;
	}
	public String getBkMessage() {
		return bkMessage;
	}
	public void setBkMessage(String bkMessage) {
		this.bkMessage = bkMessage;
	}
	
	}
