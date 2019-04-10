package com.kh.fnp.studyGoal.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("studyGoalDao")
public class StudyGoalDao {
	@Autowired
	private SqlSessionTemplate mybatisSession;
}
