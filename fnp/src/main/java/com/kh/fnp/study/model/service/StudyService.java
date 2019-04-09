package com.kh.fnp.study.model.service;

import java.util.List;

import com.kh.fnp.study.model.vo.Study;

public interface StudyService {
	List<String> category_search();

	List<Study> newStudy();
	
	List<Study> selectStudyList();
	
	int listCount();
}
