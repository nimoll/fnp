package com.kh.fnp.userStudy.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.fnp.userStudy.model.service.UserStudyService;

@Controller
public class UserStudyController {
	@Autowired
	private UserStudyService userStudyService;
	
	private static final Logger logger = LoggerFactory.getLogger(UserStudyController.class);
}
