package com.kh.fnp.studyGoal.model.vo;

import java.io.Serializable;

import org.springframework.stereotype.Component;

@Component
public class StudyGoal implements Serializable{

	private static final long serialVersionUID = 1224L;
	
	private int study_no;
	private String study_date;
	private String start_time;
	private String end_time;
	
	public StudyGoal() {}

	public StudyGoal(int study_no, String study_date, String start_time, String end_time) {
		super();
		this.study_no = study_no;
		this.study_date = study_date;
		this.start_time = start_time;
		this.end_time = end_time;
	}

	public int getStudy_no() {
		return study_no;
	}

	public void setStudy_no(int study_no) {
		this.study_no = study_no;
	}

	public String getstudy_date() {
		return study_date;
	}

	public void setstudy_date(String study_date) {
		this.study_date = study_date;
	}

	public String getStart_time() {
		return start_time;
	}

	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}

	public String getEnd_time() {
		return end_time;
	}

	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "StudyGoal [study_no : " + study_no + ", study_date : " + study_date + ", start_time : " + start_time
				+ ", end_time : " + end_time + "]";
	}
	
	
	

}
