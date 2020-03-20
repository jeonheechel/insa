package com.inter.data.service;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.inter.data.dao.AccountDAO;
import com.inter.vo.AccountVO;

@Service
public class AccountServiceImpl implements AccountService{
	
	@Inject
	private AccountDAO dao;
	
		@Override
		public void write(AccountVO accountVO) throws Exception{
			
			dao.write(accountVO);
		}
		
		// 거래처 목록 조회
		@Override
		public List<AccountVO> list() throws Exception {

			return dao.list();
		}
		
		// 게시물 목록 조회
		@Override
		public AccountVO read(int b_num) throws Exception {

			return dao.read(b_num);
		}
		
}
