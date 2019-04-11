package com.kh.fnp.study.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Study implements Serializable{
	private static final long serialVersionUID = 9994L;
	
	private int study_no;
	private String email;
	private String category;
	private String study_name;
	private int limit_count;
	private int limit_age;
	private String LIMIT_GENDER;
	private int current_m_count;
	private Date start_date;
	private Date end_date;
	private String study_info;
	private String image_origin;
	private String image_rename;
	
	public Study() {
		super();
	}

	public Study(int study_no, String email, String category, String study_name, int limit_count, int limit_age,
			String LIMIT_GENDER, int current_m_count, Date start_date, Date end_date, String study_info,
			String image_origin, String image_rename) {
		super();
		this.study_no = study_no;
		this.email = email;
		this.category = category;
		this.study_name = study_name;
		this.limit_count = limit_count;
		this.limit_age = limit_age;
		this.LIMIT_GENDER = LIMIT_GENDER;
		this.current_m_count = current_m_count;
		this.start_date = start_date;
		this.end_date = end_date;
		this.study_info = study_info;
		this.image_origin = image_origin;
		this.image_rename = image_rename;
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

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getStudy_name() {
		return study_name;
	}

	public void setStudy_name(String study_name) {
		this.study_name = study_name;
	}

	public int getLimit_count() {
		return limit_count;
	}

	public void setLimit_count(int limit_count) {
		this.limit_count = limit_count;
	}

	public int getLimit_age() {
		return limit_age;
	}

	public void setLimit_age(int limit_age) {
		this.limit_age = limit_age;
	}

	public String getLIMIT_GENDER() {
		return LIMIT_GENDER;
	}

	public void setLIMIT_GENDER(String LIMIT_GENDER) {
		this.LIMIT_GENDER = LIMIT_GENDER;
	}

	public int getCurrent_m_count() {
		return current_m_count;
	}

	public void setCurrent_m_count(int current_m_count) {
		this.current_m_count = current_m_count;
	}

	public Date getStart_date() {
		return start_date;
	}

	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}

	public Date getEnd_date() {
		return end_date;
	}

	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}

	public String getStudy_info() {
		return study_info;
	}

	public void setStudy_info(String study_info) {
		this.study_info = study_info;
	}

	public String getImage_origin() {
		return image_origin;
	}

	public void setImage_origin(String image_origin) {
		this.image_origin = image_origin;
	}

	public String getImage_rename() {
		return image_rename;
	}

	public void setImage_rename(String image_rename) {
		this.image_rename = image_rename;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Study [study_no=" + study_no + ", email=" + email + ", category=" + category + ", study_name="
				+ study_name + ", limit_count=" + limit_count + ", limit_age=" + limit_age + ", LIMIT_GENDER="
				+ LIMIT_GENDER + ", current_m_count=" + current_m_count + ", start_date=" + start_date + ", end_date="
				+ end_date + ", study_info=" + study_info + ", image_origin=" + image_origin + ", image_rename="
				+ image_rename + "]";
	}
	
	
	
}
