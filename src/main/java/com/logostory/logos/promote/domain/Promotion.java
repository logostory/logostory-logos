package com.logostory.logos.promote.domain;

import java.io.Serializable;

public class Promotion implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private String pmId 		= "";
	private String pmType		= "";
	private String pmTitle 		= "";
	private String pmContents 	= "";
	private String pmImageUrl 	= "";
	private String pmLinkurl 	= "";
	private String pmIsActive		= "";
	
	public String getPmId() {
		return pmId;
	}
	public void setPmId(String pmId) {
		this.pmId = pmId;	
	}
	public String getPmType() {
		return pmType;
	}
	public void setPmType(String pmType) {
		this.pmType = pmType;
	}
	public String getPmTitle() {
		return pmTitle;
	}
	public void setPmTitle(String pmTitle) {
		this.pmTitle = pmTitle;
	}
	public String getPmContents() {
		return pmContents;
	}
	public void setPmContents(String pmContents) {
		this.pmContents = pmContents;
	}
	public String getPmImageUrl() {
		return pmImageUrl;
	}
	public void setPmImageUrl(String pmImageUrl) {
		this.pmImageUrl = pmImageUrl;
	}
	public String getPmLinkurl() {
		return pmLinkurl;
	}
	public void setPmLinkurl(String pmLinkurl) {
		this.pmLinkurl = pmLinkurl;
	}
	public String getPmIsActive() {
		return pmIsActive;
	}
	public void setPmIsActive(String pmIsActive) {
		this.pmIsActive = pmIsActive;
	}
}
