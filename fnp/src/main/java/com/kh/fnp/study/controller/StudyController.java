package com.kh.fnp.study.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.fnp.study.model.service.StudyService;
import com.kh.fnp.study.model.vo.Study;

@Controller
public class StudyController {
	@Autowired
	private StudyService studyService;
	
	private static final Logger logger = LoggerFactory.getLogger(StudyController.class);
	
	   
	@RequestMapping("studyboard.do")
	public String moveStudyBoard() {
	   //게시판
	   return "study/studyboard";
	}
	   
	@RequestMapping("studyattend.do")
	public String moveStudyAttend() {
	   //출석현황
	   return "study/studyattend";
	}
	   
	@RequestMapping("studyadmin.do")
	public String moveStudyAdmin() {
	   //스터디원관리
	   return "study/studyadmin";
	}
	
	@RequestMapping("studyJoinDetail.do")
	   public String moveStudyJoinDetail() {
	      //가입 전 상세목록
	      return "study/studyJoinDetail";
	   }
	   
	@RequestMapping("studyJoin.do")
	public String moveStudyJoin() {
	   //참여하기
	   return "study/studyJoin";
	}
	   
	@RequestMapping("studyafter.do")
	public String moveStudy() {
	   //스터디 가입후
	   return "study/studyAfter";
	}
	
	@RequestMapping(value="categorySearch.do", method=RequestMethod.POST)
	public void category_search(HttpServletResponse response) throws IOException {
		//인기 카테고리 배열로 3개까지 가져옴
		logger.info("categorySearch.do test.....");
		List<String> list = studyService.category_search();
		JSONObject sendObj = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(String str : list) {
			JSONObject obj = new JSONObject();
			obj.put("category", str);
			
			jarr.add(obj);
		}
		sendObj.put("list", jarr);
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println(sendObj.toJSONString());
		out.flush();
		out.close();
	}
	
	@RequestMapping(value="newStudy.do", method=RequestMethod.POST)
	public void newStudy(HttpServletResponse response) throws IOException {
		//최근 생성 스터디 ajax 컨트롤러
		logger.info("newStudy.do test.....");
		List<Study> list = studyService.newStudy();
		
		JSONObject sendObj = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(Study study : list) {
			JSONObject obj = new JSONObject();
			obj.put("image_origin", study.getImage_origin());
			obj.put("study_name", study.getStudy_name());
			obj.put("study_no", study.getStudy_no());
			jarr.add(obj);
		}
		sendObj.put("list",jarr);
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println(sendObj.toJSONString());
		out.flush();
		out.close();
	}
	
	@RequestMapping("studymain.do")
	public String right_sidebar(Model model, HttpServletRequest request) {
		
		int currentPage = 1;
		String category = request.getParameter("category"); //검색 카테고리
		String searchName = request.getParameter("searchName"); //검색내용

		if(request.getParameter("page") != null) 
			currentPage = Integer.valueOf(request.getParameter("page"));
		
		int limit = 12; //한 페이지에 출력할 study갯수 지정
		int startRow = (currentPage - 1) * limit + 1;
		int endRow = startRow + limit - 1;
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		int listCount = 0; //총 스터디 갯수
		List<Study> list = null;
	
		if(searchName == null && category == null) {
			listCount = studyService.listCount();
			list = studyService.selectNewCreateStudyList(map);
		}else if(searchName != null) {
			if(category.equals("전체")) {
				listCount = studyService.selectNameListCount(searchName);
				map.put("searchName", searchName);
				list = studyService.selectSearchNewCreateStudyList1(map);
			}else {		
				map.put("category", category);
				map.put("searchName", searchName);
				listCount = studyService.selectCategoryNamelistCount(map);
				list = studyService.selectSearchNewCreateStudyList2(map);
			}
		}else {
			listCount = studyService.selectCategorylistCount(category);
			list = studyService.selectSearchNewCreateStudyList3(map);
		}
	
		int maxPage = (int)((double)listCount/limit + 0.9); //총 페이지 수 계산
		int startPage = (((int)((double)currentPage / limit + 0.92)) - 1) * limit + 1;  //현재 페이지가 포함된 페이지 그룹의 시작값
		int endPage = startPage + limit -1;
		
		if(maxPage < endPage)
			endPage = maxPage;

		model.addAttribute("list", list);
		model.addAttribute("limit", limit);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("maxPage", maxPage);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		return "study/studyMain";
	}
	
	@RequestMapping("studyCount.do")
	public String right_sidebar1(Model model, HttpServletRequest request) {
		
		int currentPage = 1;
		String category = request.getParameter("category"); //검색 카테고리
		String searchName = request.getParameter("searchName"); //검색내용

		if(request.getParameter("page") != null) 
			currentPage = Integer.valueOf(request.getParameter("page"));
		
		int limit = 12; //한 페이지에 출력할 study갯수 지정
		int startRow = (currentPage - 1) * limit + 1;
		int endRow = startRow + limit - 1;
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		int listCount = 0; //총 스터디 갯수
		List<Study> list = null;
	
		if(searchName == null && category == null) {
			listCount = studyService.listCount();
			list = studyService.selectCurrentCountStudyList(map);
		}else if(searchName != null) {
			if(category.equals("전체")) {
				listCount = studyService.selectNameListCount(searchName);
				map.put("searchName", searchName);
				list = studyService.selectSearchCurrnetCountStudyList1(map);
			}else {		
				map.put("category", category);
				map.put("searchName", searchName);
				listCount = studyService.selectCategoryNamelistCount(map);
				list = studyService.selectSearchCurrnetCountStudyList2(map);
			}
		}else {
			listCount = studyService.selectCategorylistCount(category);
			list = studyService.selectSearchCurrnetCountStudyList3(map);
		}
	
		int maxPage = (int)((double)listCount/limit + 0.9); //총 페이지 수 계산
		int startPage = (((int)((double)currentPage / limit + 0.92)) - 1) * limit + 1;  //현재 페이지가 포함된 페이지 그룹의 시작값
		int endPage = startPage + limit -1;
		
		if(maxPage < endPage)
			endPage = maxPage;

		model.addAttribute("list", list);
		model.addAttribute("limit", limit);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("maxPage", maxPage);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		return "study/studyCurrentCount";
	}
	
	@RequestMapping("studyName.do")
	public String right_sidebar2(Model model, HttpServletRequest request) {
		
		int currentPage = 1;
		String category = request.getParameter("category"); //검색 카테고리
		String searchName = request.getParameter("searchName"); //검색내용

		if(request.getParameter("page") != null) 
			currentPage = Integer.valueOf(request.getParameter("page"));
		
		int limit = 12; //한 페이지에 출력할 study갯수 지정
		int startRow = (currentPage - 1) * limit + 1;
		int endRow = startRow + limit - 1;
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		int listCount = 0; //총 스터디 갯수
		List<Study> list = null;
	
		if(searchName == null && category == null) {
			listCount = studyService.listCount();
			list = studyService.selectNameSortStudyList(map);
		}else if(searchName != null) {
			if(category.equals("전체")) {
				listCount = studyService.selectNameListCount(searchName);
				map.put("searchName", searchName);
				list = studyService.selectSearchNameSortStudyList1(map);
			}else {		
				map.put("category", category);
				map.put("searchName", searchName);
				listCount = studyService.selectCategoryNamelistCount(map);
				list = studyService.selectSearchNameSortStudyList2(map);
			}
		}else {
			listCount = studyService.selectCategorylistCount(category);
			list = studyService.selectSearchNameSortStudyList3(map);
		}
	
		int maxPage = (int)((double)listCount/limit + 0.9); //총 페이지 수 계산
		int startPage = (((int)((double)currentPage / limit + 0.92)) - 1) * limit + 1;  //현재 페이지가 포함된 페이지 그룹의 시작값
		int endPage = startPage + limit -1;
		
		if(maxPage < endPage)
			endPage = maxPage;

		model.addAttribute("list", list);
		model.addAttribute("limit", limit);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("maxPage", maxPage);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		return "study/studyNameSort";
	}
}

























