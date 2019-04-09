package com.kh.fnp.report.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("reportDao")
public class ReportDao {
	@Autowired
	private SqlSessionTemplate mybatisSession;
}
