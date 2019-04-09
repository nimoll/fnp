package com.kh.fnp.faq.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fnp.faq.model.dao.FaqDao;

@Service("faqService")
public class FaqServiceImpl implements FaqService{
	@Autowired
	private FaqDao faqDao;
}
