package com.search.controller;

import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.search.service.SearchService;

@Controller
public class SearchController {
	
	@Resource(name="SearchService")
    private SearchService searchService;
	
	
	@RequestMapping(value="search.do")
	public ModelAndView test3(Map<String,Object> commandMap) throws Exception {
		
		ModelAndView mv = new ModelAndView("/search/search");
		mv.addAllObjects(commandMap);
		
		return mv;
	}
	
}
