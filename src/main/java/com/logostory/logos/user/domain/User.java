package com.logostory.logos.user.domain;

import java.lang.StringBuffer;

public class User {

	// 고객용 백엔드
	private String clientMembership	= "";
	private String clientID = "";
	private String clientPW = "";
	private String clientName = "";
	private String clientLevel = "";
	private String clientTel = "";
	private String clientBooking = "";
	private String clientApproval = "";
	private String clientAgreement= "";
	private String clientEmail1 = "";
	private String clientEmail2 = "";
	
	// 사원용 백엔드
	private String managerMembership = "";
	private String managerID = "";
	private String managerPW = "";
	private String managerName = "";
	private String managerLevel = "";
	private String managerTel = "";
	private String managerAttendDate = "";
	private String managerApproval = "";
	private String managerAgreement = "";
	private String managerEmail1 = "";
	private String managerEmail2 = "";
	
	public String getClientMembership() {
		return clientMembership;
	}
	
	public void setClientMembership(String clientMembership) {
		this.clientMembership = clientMembership;
	}
	
	public String getClientID() {
		return clientID;
	}
	
	public void setClientID(String clientID) {
		this.clientID = clientID;
	}
	
	public String getClientPW() {
		return clientPW;
	}
	
	public void setClientPW(String clientPW) {
		this.clientPW = clientPW;
	}
	
	public String getClientName() {
		return clientName;
	}
	
	public void setClientName(String clientName) {
		this.clientName = clientName;
	}
	
	public String getClientLevel() {
		return clientLevel;
	}
	
	public void setClientLevel(String clientLevel) {
		this.clientLevel = clientLevel;
	}
	
	public String getClientTel() {
		return clientTel;
	}
	
	public void setClientTel(String clientTel) {
		if (clientTel.length() == 10) {
			StringBuffer sb = new StringBuffer(clientTel);
			sb.insert(6, "-");
			sb.insert(3, "-");
			
			String newClientTel = sb.toString();
			
			this.clientTel = newClientTel;
		}
		else if (clientTel.length() == 11) {
			StringBuffer sb2 = new StringBuffer(clientTel);
			sb2.insert(7, "-");
			sb2.insert(3, "-");
			
			String newClientTel2 = sb2.toString();
			
			this.clientTel = newClientTel2;
		}
		else {
			this.clientTel = clientTel;
		}
	}
	
	public String getClientBooking() {
		return clientBooking;
	}
	
	public void setClientBooking(String clientBooking) {
		this.clientBooking = clientBooking;
	}
	
	public String getClientApproval() {
		return clientApproval;
	}
	
	public void setClientApproval(String clientApproval) {
		this.clientApproval = clientApproval;
	}
	
	public String getClientAgreement() {
		return clientAgreement;
	}
	
	public void setClientAgreement(String clientAgreement) {
		this.clientAgreement = clientAgreement;
	}
	
	public String getClientEmail1() {
		return clientEmail1;
	}
	
	public void setClientEmail1(String clientEmail1) {
		this.clientEmail1 = clientEmail1;
	}
	
	public String getClientEmail2() {
		return clientEmail2;
	}
	
	public void setClientEmail2(String clientEmail2) {
		this.clientEmail2 = clientEmail2;
	}
	
	// manager*****************************************************************************************
	
	public String getManagerMembership() {
		return managerMembership;
	}
	
	public void setManagerMembership(String managerMembership) {
		this.managerMembership = managerMembership;
	}
	
	public String getManagerID() {
		return managerID;
	}
	
	public void setManagerID(String managerID) {
		this.managerID = managerID;
	}
	
	public String getManagerPW() {
		return managerPW;
	}
	
	public void setManagerPW(String managerPW) {
		this.managerPW = managerPW;
	}
	
	public String getManagerName() {
		return managerName;
	}
	
	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}
	
	public String getManagerLevel() {
		return managerLevel;
	}
	
	public void setManagerLevel(String managerLevel) {
		this.managerLevel = managerLevel;
	}
	
	public String getManagerTel() {
		return managerTel;
	}
	
	public void setManagerTel(String managerTel) {
		this.managerTel = managerTel;
	}
	
	public String getManagerAttendDate() {
		return managerAttendDate;
	}
	
	public void setManagerAttendDate(String managerAttendDate) {
		this.managerAttendDate = managerAttendDate;
	}
	
	public String getManagerApproval() {
		return managerApproval;
	}
	
	public void setManagerApproval(String managerApproval) {
		this.managerApproval = managerApproval;
	}
	
	public String getManagerAgreement() {
		return managerAgreement;
	}
	
	public void setManagerAgreement(String managerAgreement) {
		this.managerAgreement = managerAgreement;
	}
	
	public String getManagerEmail1() {
		return managerEmail1;
	}
	
	public void setManagerEmail1(String managerEmail1) {
		this.managerEmail1 = managerEmail1;
	}
	
	public String getManagerEmail2() {
		return managerEmail2;
	}
	
	public void setManagerEmail2(String managerEmail2) {
		this.managerEmail2 = managerEmail1;
	}
}
