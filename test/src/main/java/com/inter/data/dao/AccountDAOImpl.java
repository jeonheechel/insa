package com.inter.data.dao;


import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.inter.vo.AccountVO;

@Repository
public class AccountDAOImpl implements AccountDAO{
	
	@Inject
	private SqlSession sqlSession;
	
	// 거래처 작성
		@Override
		public void write(AccountVO accountVO) throws Exception {
			sqlSession.insert("accountMapper.insert", accountVO);
			
		}
		
		// 거래처 목록 조회
		@Override
		public List<AccountVO> list() throws Exception {
		
			return sqlSession.selectList("accountMapper.list");

		}
		
		// 거래처 조회
		@Override
		public AccountVO read(int b_num) throws Exception {
				
			return sqlSession.selectOne("accountMapper.read", b_num);
		}
	
	
}
