package com.kh.fnp.report.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fnp.report.model.dao.ReportDao;

@Service("reportService")
public class ReportServiceImpl implements ReportService{
	@Autowired
	private ReportDao reportDao;
}
