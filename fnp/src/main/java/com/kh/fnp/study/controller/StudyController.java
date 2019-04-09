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
		
		if(request.getParameter("page") != null) 
			currentPage = Integer.valueOf(request.getParameter("page"));
		
		int limit = 9; //한 페이지에 출력할 study갯수 지정
		int listCount = studyService.listCount(); //총 스터디 갯수
		int maxPage = (int)((double)listCount/limit + 0.9); //총 페이지 수 계산
		int startPage = ((int)((double)currentPage/limit + 0.9)); //현재 페이지가 포함된 페이지 그룹의 시작값
		int endPage = startPage + limit -1;
		
		if(maxPage < endPage)
			endPage = maxPage;
		
		int startRow = (currentPage - 1) * limit + 1;
		int endRow = startRow + limit - 1;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		List<Study> list = studyService.selectStudyList();
		
		model.addAttribute("list", list);
		model.addAttribute("limit", limit);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("maxPage", maxPage);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		
		return "study/studyMain";
	}
	
	
}

























