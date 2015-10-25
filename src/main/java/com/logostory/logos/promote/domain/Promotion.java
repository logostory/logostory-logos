package com.logostory.logos.promote.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "LOGOS_JPA_PROMOTION")
public class Promotion implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	@Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private long id;
	
	@Column(name = "PM_TYPE")
	private String pmType		= "";
	
	@Column(name = "PM_TITLE")
	private String pmTitle 		= "";
	
	@Column(name = "PM_DESC")
	private String pmDesc		=  "";
	
	@Column(name = "PM_CONTENTS")
	private String pmContents 	= "";
	
	@Column(name = "PM_IMG_URL")
	private String pmImageUrl 	= "";
	
	@Column(name = "PM_LINK_URL")
	private String pmLinkurl 	= "";
	
	@Column(name = "PM_IS_ACTIVE")
	boolean  pmIsActive		= false;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
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

	public boolean isPmIsActive() {
		return pmIsActive;
	}

	public void setPmIsActive(boolean pmIsActive) {
		this.pmIsActive = pmIsActive;
	}

	public String getPmDesc() {
		return pmDesc;
	}

	public void setPmDesc(String pmDesc) {
		this.pmDesc = pmDesc;
	}

	@Override
	public String toString() {
		return "Promotion [id=" + id + ", pmType=" + pmType + ", pmTitle=" + pmTitle + ", pmContents=" + pmContents
				+ ", pmImageUrl=" + pmImageUrl + ", pmLinkurl=" + pmLinkurl + ", pmIsActive=" + pmIsActive + "]";
	}
}
