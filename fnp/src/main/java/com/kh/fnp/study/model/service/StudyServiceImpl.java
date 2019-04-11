package com.kh.fnp.study.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fnp.study.model.dao.StudyDao;
import com.kh.fnp.study.model.vo.JoinStudy;
import com.kh.fnp.study.model.vo.Study;
import com.kh.fnp.study.model.vo.StudyGoal;

@Service("studyService")
public class StudyServiceImpl implements StudyService{
	@Autowired
	private StudyDao studyDao;

	@Override
	public List<String> category_search() {
		return studyDao.category_search();
	}

	@Override
	public List<Study> newStudy() {
		return studyDao.newStudy();
	}

	@Override
	public List<Study> selectStudyList() {
		return studyDao.selectStudyList();
	}

	@Override
	public int listCount() {
		return studyDao.listCount();
	}

	@Override
	public Study selectOneStudy(int study_no) {
		//study_no 로 한개의 스터디 조회
		return studyDao.selectOneStudy(study_no);
	}

	@Override
	public List<JoinStudy> selectOneJoinStudyList(int study_no) {
		//study_no 로 한개의 스터디 참여인원 조회
		return studyDao.selectOneJoinStudyList(study_no);
	}

	@Override
	public Map<String, StudyGoal> selectOneStudyGoalList(int study_no) {
		//study_no 로 한개의 스터디 목표 조회
		return studyDao.selectOneStudyGoalList(study_no);
	}
}
