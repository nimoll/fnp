package com.kh.fnp.userStudy.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("userStudyDao")
public class UserStudyDao {
	@Autowired
	private SqlSessionTemplate mybatisSession;
}
