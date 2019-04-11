package com.kh.fnp.study.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.fnp.study.model.vo.JoinStudy;
import com.kh.fnp.study.model.vo.Study;
import com.kh.fnp.study.model.vo.StudyGoal;

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

	public Study selectOneStudy(int study_no) {
		//study_no 로 한개의 스터디 조회(유진)
		return mybatisSession.selectOne("studyMapper.selectOneStudy", study_no);
	}

	public Map<String, StudyGoal> selectOneStudyGoalList(int study_no) {
		//study_no로 한개의 스터디 목표 조회(유진)
		return mybatisSession.<String, StudyGoal>selectMap("studyMapper.selectOneStudyGoalList", study_no, "study_day");
	}

	
}
