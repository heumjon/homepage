package com.test.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.elasticsearch.elasticsearch.ElasticSearchTest;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TestController {
	Logger log = Logger.getLogger(this.getClass());


	@RequestMapping(value="/test/test.do")
	public ModelAndView test(Map<String,Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/test/test");
		return mv;
	}

	@RequestMapping(value="/test/test1.do")
	public ModelAndView test1(Map<String,Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/test/test1");
		return mv;
	}

	@RequestMapping(value="/test/test2.do")
	public ModelAndView test2(Map<String,Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/test/test2");
		return mv;
	}

	@RequestMapping(value="/test/cnouns.do")
	public ModelAndView cnouns(Map<String,Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/test/cnouns");
		return mv;
	}
	@RequestMapping(value="/test/index.do")
	public ModelAndView index(Map<String,Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/test/index");
		return mv;
	}
	@RequestMapping(value="/test/keyword.do")
	public ModelAndView keyword(Map<String,Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/test/keyword");
		return mv;
	}
	@RequestMapping(value="/test/space.do")
	public ModelAndView space(Map<String,Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/test/space");
		return mv;
	}



	@RequestMapping(value="/test/test3.do")
	public ModelAndView test3(Map<String,Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/test/test3");
		return mv;
	}


	@RequestMapping(value = "/test/searchList.do", produces = "application/text; charset=utf8")
	public @ResponseBody String searchList(Map<String,Object> commandMap, HttpServletResponse res) throws Exception{
		
		ElasticSearchTest es = new ElasticSearchTest();
		res.setCharacterEncoding("UTF-8");
		
		String aa = es.search();
		System.out.println(">>>>>>>>>>>>>>>>  " + aa);
		
		return aa;
	}
}
