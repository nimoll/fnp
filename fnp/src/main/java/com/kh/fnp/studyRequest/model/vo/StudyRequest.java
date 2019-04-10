package com.kh.fnp.studyRequest.model.vo;

import java.io.Serializable;

import org.springframework.stereotype.Component;

@Component
public class StudyRequest implements Serializable {
	private static final long serialVersionUID = 1223L;
	
	private int study_no;
	private String email;
	private String join_yn;
	private String introudce;
	
	public StudyRequest() {}

	public StudyRequest(int study_no, String email, String join_yn, String introudce) {
		super();
		this.study_no = study_no;
		this.email = email;
		this.join_yn = join_yn;
		this.introudce = introudce;
	}

	public int getStudy_no() {
		return study_no;
	}

	public void setStudy_no(int study_no) {
		this.study_no = study_no;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getJoin_yn() {
		return join_yn;
	}

	public void setJoin_yn(String join_yn) {
		this.join_yn = join_yn;
	}

	public String getIntroudce() {
		return introudce;
	}

	public void setIntroudce(String introudce) {
		this.introudce = introudce;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "StudyRequest [study_no : " + study_no + ", email : " + email + ", join_yn : " + join_yn + ", introudce : "
				+ introudce + "]";
	}
	
	

}
