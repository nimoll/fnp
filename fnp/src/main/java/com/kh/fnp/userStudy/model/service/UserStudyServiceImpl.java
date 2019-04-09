package com.kh.fnp.userStudy.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fnp.userStudy.model.dao.UserStudyDao;

@Service("userStudyService")
public class UserStudyServiceImpl implements UserStudyService {
	@Autowired
	private UserStudyDao userStudyDao;
}
