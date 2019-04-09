package com.kh.fnp.notice.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("noticeDao")
public class NoticeDao {
	@Autowired
	private SqlSessionTemplate mybatisSession; //Mybatis 연동객체 선언
	
	
}
