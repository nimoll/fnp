package com.kh.fnp.studyGoal.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.fnp.studyGoal.model.service.StudyGoalService;

@Controller
public class StudyGoalController {
	@Autowired
	private StudyGoalService studyGoalService;
	
	private static final Logger logger = LoggerFactory.getLogger(StudyGoalController.class);

}
