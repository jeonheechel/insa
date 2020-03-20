package com.inter.data.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.inter.data.service.AccountService;
import com.inter.vo.AccountVO;

@Controller
@RequestMapping("/account/*")
public class AccountController {
	private static final Logger logger = LoggerFactory.getLogger(AccountController.class);

	@Inject
	AccountService service;
	
	//거래처 글 작성화면
	@RequestMapping(value = "/account/writeView", method = RequestMethod.GET)
	public void writeView() throws Exception{
		logger.info("writeView");
	}
	
	
	//거래처 글 작성
	@RequestMapping(value = "/account/write", method = RequestMethod.POST)
	public String write(AccountVO accountVO) throws Exception{
		logger.info("write");
		
		service.write(accountVO);
		return "redirect:/";
	}
	
	// 거래처 목록 조회
		@RequestMapping(value = "/list", method = RequestMethod.GET)
		public String list(Model model) throws Exception{
			logger.info("list");
			
			model.addAttribute("list",service.list());
			
			
			return "account/list";
			
		}
	
		// 게시판 조회
		@RequestMapping(value = "/readView", method = RequestMethod.GET)
		public String read(AccountVO accountVO, Model model) throws Exception{
			logger.info("read");
			
			model.addAttribute("read", service.read(accountVO.getB_num()));
			
			return "account/readView";
		}
	
}
