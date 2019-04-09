package com.kh.fnp.report.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.fnp.report.model.service.ReportService;

@Controller
public class ReportController {
	@Autowired
	private ReportService reportService;
	
	private static final Logger logger = LoggerFactory.getLogger(ReportController.class);
}
