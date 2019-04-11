package com.kh.fnp.study.model.service;

import java.util.List;
import java.util.Map;

import com.kh.fnp.study.model.vo.JoinStudy;
import com.kh.fnp.study.model.vo.Study;
import com.kh.fnp.study.model.vo.StudyGoal;

public interface StudyService {
	List<String> category_search();

	List<Study> newStudy();
	
	List<Study> selectStudyList();
	
	int listCount();
	
	Study selectOneStudy(int study_no);

	Map<String, StudyGoal> selectOneStudyGoalList(int study_no);
}
