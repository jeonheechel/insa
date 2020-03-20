package com.inter.data.service;

import java.util.List;

import com.inter.vo.AccountVO;

public interface AccountService {
	
	//거래처 작성
	public void write (AccountVO accountVO) throws Exception;

	// 거래처 목록 조회
	public List<AccountVO> list() throws Exception;
	
	// 거래처 목록 조회
	public AccountVO read(int b_num) throws Exception;
}
