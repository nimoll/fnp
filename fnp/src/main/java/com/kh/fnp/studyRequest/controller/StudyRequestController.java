package com.kh.fnp.studyRequest.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.fnp.studyRequest.model.service.StudyRequestService;

@Controller
public class StudyRequestController {
	@Autowired
	private StudyRequestService studRequestService;
	
	private static final Logger logger = LoggerFactory.getLogger(StudyRequestController.class);

}
