package com.kh.fnp.studyRequest.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("studyRequestDao")
public class StudyRequestDao {
	@Autowired
	private SqlSessionTemplate mybatisSEssion;

}
