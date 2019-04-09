package com.kh.fnp.study.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.fnp.study.model.vo.Study;

@Repository("studyDao")
public class StudyDao {
	@Autowired
	private SqlSessionTemplate mybatisSession;

	public List<String> category_search() {
		return mybatisSession.selectList("studyMapper.categoryS");
	}

	public List<Study> newStudy() {
		return mybatisSession.selectList("studyMapper.newStudy");
	}

	public List<Study> selectStudyList() {
		return mybatisSession.selectList("studyMapper.selectStudyList");
	}

	public int listCount() {
		return mybatisSession.selectOne("studyMapper.listCount");
	}
}
