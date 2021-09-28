package com.hta.project.controller;


import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hta.project.service.MemberService;


@Controller
public class MainController {

	private static final Logger logger
    = LoggerFactory.getLogger(MainController.class);
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public ModelAndView main(ModelAndView mv) {
		  mv.setViewName("main/main");
		  return mv;
	}
	
	//굿즈 장터 메인 이동 - 상품 목록 
	@RequestMapping("/shopmain")
	public String shop_main() {		
		return "hyun/shop/shop_main";
	}
	
	//상품 목록 
	@RequestMapping(value = "products/list", method = RequestMethod.GET)
	public void getProductsList() throws Exception {
		logger.info("get products list");
	}
	
	
	//굿즈 장터 퍼스나콘 페이지 이동 
	@RequestMapping("/personacon")
	public String shop_personacon() {		
		return "hyun/shop/shop_personacon";
	}
		
	//굿즈 장터 주말굿즈 이동 
	@RequestMapping("/goods")
	public String shop_goods() {		
		return "hyun/shop/shop_goods";
	}

	//굿즈 장터 농기구 이동 
	@RequestMapping("/tools")
	public String shop_tools() {		
		return "hyun/shop/shop_tools";
	}
	
	//굿즈 장터 씨앗/모종 이동 
		@RequestMapping("/seed")
		public String shop_seed() {		
			return "hyun/shop/shop_seed";
		}
		
	//굿즈 장터 비료/상토 이동 
		@RequestMapping("/soil")
		public String shop_soil() {		
			return "hyun/shop/shop_soils";
		}
		
	//굿즈 장터 살충제 이동 
		@RequestMapping("/pesticide")
		public String shop_pesticide() {		
			return "hyun/shop/shop_pesticide";
	}
					
	//회원가입 바로가기 이동 
	@RequestMapping("/join")
	public String join() {		
		return "woo/join";
	}
	
	//로그인 바로가기 이동 
	@RequestMapping("/login")
	public String login() {		
		return "woo/login";
	}
	
	//임시 로그인 바로가기(우영님이 로그인 다 만들면 삭제)
	@RequestMapping("/loginimsi")
	public String loginimsi() {		
		return "jjs/login";
	}
	
	// 임시 로그인 처리(우영님이 로그인 다 만들면 삭제)
	@RequestMapping(value="/loginProcessimsi", method=RequestMethod.POST)
	public String loginProcess(@RequestParam(value="id") String id, 
							   @RequestParam(value="pass") String password,
							   HttpSession session){
		Map<String, Object> member = memberService.isIdimsi(id, password);
		
		int result = (int) member.get("result");
		
		if(result == 1) {
			// 로그인 성공
			session.setAttribute("id", member.get("id"));
			session.setAttribute("nick", member.get("nick"));
			return "redirect:main";
		}else {
			return "redirect:loginimsi";
		}
	}
	
	// 임시 로그아웃 처리(우영님이 로그인 다 만들면 삭제)
	@RequestMapping(value = "/logoutimsi", method = RequestMethod.GET)
	public String loginout(HttpSession session) {
		session.invalidate();
		return "redirect:loginimsi";
	}
}
