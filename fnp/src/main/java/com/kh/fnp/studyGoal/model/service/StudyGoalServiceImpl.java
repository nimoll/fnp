package com.kh.fnp.studyGoal.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fnp.studyGoal.model.dao.StudyGoalDao;

@Service("studyGoalSevice")
public class StudyGoalServiceImpl implements StudyGoalService {
	@Autowired
	private StudyGoalDao studyGoalDao;

}
