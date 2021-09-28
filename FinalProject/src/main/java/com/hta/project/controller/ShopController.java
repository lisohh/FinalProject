package com.hta.project.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

    @Controller
    public class ShopController {

    	private static final Logger logger
        = LoggerFactory.getLogger(MainController.class);
    	
    	@RequestMapping(value = "/shopdetail", method = RequestMethod.GET)
    	public ModelAndView main(ModelAndView mv) {
    		  mv.setViewName("hyun/shop/shop_detail");
    		  return mv;
    	}
}
