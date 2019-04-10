package com.kh.fnp.studyRequest.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fnp.studyRequest.model.dao.StudyRequestDao;

@Service("studyRequestService")
public class StudyRequestServiceImpl implements StudyRequestService {
	@Autowired
	private StudyRequestDao studyRequestDao;
}
