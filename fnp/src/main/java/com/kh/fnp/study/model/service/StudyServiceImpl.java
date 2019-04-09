package com.kh.fnp.study.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fnp.study.model.dao.StudyDao;
import com.kh.fnp.study.model.vo.Study;

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
}
