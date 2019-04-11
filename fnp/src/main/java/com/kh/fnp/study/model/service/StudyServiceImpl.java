package com.kh.fnp.study.model.service;

import java.util.HashMap;
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
	public List<Study> selectNewCreateStudyList(HashMap<String,Object> map) {
		return studyDao.selectNewCreateStudyList(map);
	}
	@Override
	public List<Study> selectCurrentCountStudyList(HashMap<String,Object> map) {
		return studyDao.selectCurrentCountStudyList(map);
	}
	@Override
	public List<Study> selectNameSortStudyList(HashMap<String,Object> map) {
		return studyDao.selectNameSortStudyList(map);
	}

	@Override
	public int listCount() {
		return studyDao.listCount();
	}
	
	@Override
	public int selectNameListCount(String searchName) {
		return studyDao.selectNameListCount(searchName);
	}

	@Override
	public int selectCategoryNamelistCount(HashMap<String, Object> map) {
		return studyDao.selectCategoryNamelistCount(map);
	}
	
	@Override
	public int selectCategorylistCount(String category) {
		return studyDao.selectCategorylistCount(category);
	}

	@Override
	public List<Study> selectSearchNewCreateStudyList1(HashMap<String, Object> map) {
		return studyDao.selectSearchNewCreateStudyList1(map);
	}

	@Override
	public List<Study> selectSearchNewCreateStudyList2(HashMap<String, Object> map) {
		return studyDao.selectSearchNewCreateStudyList2(map);
	}

	@Override
	public List<Study> selectSearchNewCreateStudyList3(HashMap<String, Object> map) {
		return studyDao.selectSearchNewCreateStudyList3(map);
	}
	
	@Override
	public List<Study> selectSearchNameSortStudyList1(HashMap<String, Object> map) {
		return studyDao.selectSearchNameSortStudyList1(map);
	}
	
	@Override
	public List<Study> selectSearchNameSortStudyList2(HashMap<String, Object> map) {
		return studyDao.selectSearchNameSortStudyList2(map);
	}
	
	@Override
	public List<Study> selectSearchNameSortStudyList3(HashMap<String, Object> map) {
		return studyDao.selectSearchNameSortStudyList3(map);
	}

	@Override
	public List<Study> selectSearchCurrnetCountStudyList1(HashMap<String, Object> map) {
		return studyDao.selectSearchCurrnetCountStudyList1(map);
	}
	
	@Override
	public List<Study> selectSearchCurrnetCountStudyList2(HashMap<String, Object> map) {
		return studyDao.selectSearchCurrnetCountStudyList2(map);
	}
	
	@Override
	public List<Study> selectSearchCurrnetCountStudyList3(HashMap<String, Object> map) {
		return studyDao.selectSearchCurrnetCountStudyList3(map);
	}
	

	
}
