package com.kh.fnp.study.model.service;

import java.util.HashMap;
import java.util.List;

import com.kh.fnp.study.model.vo.Study;

public interface StudyService {
	List<String> category_search();

	List<Study> newStudy();
	
	List<Study> selectSearchNewCreateStudyList1(HashMap<String, Object> map);
	
	List<Study> selectSearchNewCreateStudyList2(HashMap<String, Object> map);
	
	List<Study> selectSearchNewCreateStudyList3(HashMap<String, Object> map);
	
	List<Study> selectNewCreateStudyList(HashMap<String, Object> map);
	
	List<Study> selectCurrentCountStudyList(HashMap<String, Object> map);
	
	List<Study> selectSearchCurrnetCountStudyList1(HashMap<String, Object> map);
	
	List<Study> selectSearchCurrnetCountStudyList2(HashMap<String, Object> map);
	
	List<Study> selectSearchCurrnetCountStudyList3(HashMap<String, Object> map);
	
	List<Study> selectNameSortStudyList(HashMap<String, Object> map);
	
	List<Study> selectSearchNameSortStudyList1(HashMap<String, Object> map);
	
	List<Study> selectSearchNameSortStudyList2(HashMap<String, Object> map);
	
	List<Study> selectSearchNameSortStudyList3(HashMap<String, Object> map);
	
	int listCount();
	
	int selectNameListCount(String searchName);
	
	int selectCategoryNamelistCount(HashMap<String, Object> map);
	
	int selectCategorylistCount(String category);
}
