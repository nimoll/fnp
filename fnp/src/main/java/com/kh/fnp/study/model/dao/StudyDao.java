package com.kh.fnp.study.model.dao;

import java.util.HashMap;
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
		return mybatisSession.selectList("studyMapper.selectcategoryS");
	}

	public List<Study> newStudy() {
		return mybatisSession.selectList("studyMapper.selectnewStudy");
	}

	public List<Study> selectNewCreateStudyList(HashMap<String, Object> map) {
		return mybatisSession.selectList("studyMapper.selectNewCreateStudyList", map);
	}
	
	public List<Study> selectCurrentCountStudyList(HashMap<String, Object> map) {
		return mybatisSession.selectList("studyMapper.selectCurrnetCountStudyList", map);
	}
	
	public List<Study> selectNameSortStudyList(HashMap<String, Object> map) {
		return mybatisSession.selectList("studyMapper.selectNameSortStudyList", map);
	}

	public int listCount() {
		return mybatisSession.selectOne("studyMapper.selectlistCount");
	}
	
	public int selectNameListCount(String searchName) {
		return mybatisSession.selectOne("studyMapper.selectNamelistCount", searchName);
	}
	
	public int selectCategoryNamelistCount(HashMap<String, Object> map) {
		return mybatisSession.selectOne("studyMapper.selectCategoryNamelistCount", map);
	}

	public List<Study> selectSearchNewCreateStudyList1(HashMap<String, Object> map) {
		return mybatisSession.selectList("studyMapper.selectSearchNewCreateStudyList1", map);
	}

	public List<Study> selectSearchNewCreateStudyList2(HashMap<String, Object> map) {
		return mybatisSession.selectList("studyMapper.selectSearchNewCreateStudyList2", map);
	}

	public int selectCategorylistCount(String category) {
		return mybatisSession.selectOne("studyMapper.selectCategorylistCount", category);
	}

	public List<Study> selectSearchNewCreateStudyList3(HashMap<String, Object> map) {
		return mybatisSession.selectList("studyMapper.selectSearchNewCreateStudyList3", map);
	}

	public List<Study> selectSearchNameSortStudyList1(HashMap<String, Object> map) {
		return mybatisSession.selectList("studyMapper.selectSearchNameSortStudyList1", map);
	}
	
	public List<Study> selectSearchNameSortStudyList2(HashMap<String, Object> map) {
		return mybatisSession.selectList("studyMapper.selectSearchNameSortStudyList2", map);
	}
	
	public List<Study> selectSearchNameSortStudyList3(HashMap<String, Object> map) {
		return mybatisSession.selectList("studyMapper.selectSearchNameSortStudyList3", map);
	}

	public List<Study> selectSearchCurrnetCountStudyList1(HashMap<String, Object> map) {
		return mybatisSession.selectList("studyMapper.selectSearchCurrnetCountStudyList1", map);
	}
	
	public List<Study> selectSearchCurrnetCountStudyList2(HashMap<String, Object> map) {
		return mybatisSession.selectList("studyMapper.selectSearchCurrnetCountStudyList2", map);
	}
	
	public List<Study> selectSearchCurrnetCountStudyList3(HashMap<String, Object> map) {
		return mybatisSession.selectList("studyMapper.selectSearchCurrnetCountStudyList3", map);
	}
	
}
