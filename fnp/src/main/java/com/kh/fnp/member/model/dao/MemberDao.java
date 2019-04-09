package com.kh.fnp.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;

@Repository("memberDao")
public class MemberDao {
	
	@Autowired
	private SqlSessionTemplate mybatisSession; //Mybatis 연동객체 선언
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
}
