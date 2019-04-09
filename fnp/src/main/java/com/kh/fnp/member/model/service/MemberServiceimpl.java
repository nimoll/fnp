package com.kh.fnp.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fnp.member.model.dao.MemberDao;

@Service("memberService")
public class MemberServiceimpl implements MemberService{
	@Autowired
	private MemberDao memberDao;
}
