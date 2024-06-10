package com.example.test.controller;

import java.util.HashMap;
import java.util.Map;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import jakarta.servlet.http.HttpServletRequest;

@Controller
public class JspViewController {
	@RequestMapping(value={"/jqueryTest"})
    private ModelAndView jqueryTest(HttpServletRequest request, Model model) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("jqueryTest"); // 메인화면으로 이동
		return mv;
    }
	
	@RequestMapping(value={"/javascriptTest"})
    private ModelAndView main(HttpServletRequest request, Model model) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("javascriptTest"); // 메인화면으로 이동
        return mv;
    }
	
	@RequestMapping(value={"/ajaxJavascriptTest"})
    private ModelAndView ajaxJavascriptTest(HttpServletRequest request, Model model) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("ajaxJavascriptTest"); // 메인화면으로 이동
        return mv;
    }
	
	@GetMapping("/ajaxJavascriptTest")
	  public Map<String,Object> ajaxJavascript(@RequestParam(value="kwamok", required=false) String kwamok){
	    Map<String, Integer> test = new HashMap<>();
	    test.put("국어", 85);
	    test.put("수학", 70);
	    test.put("영어", 86);
	        
	    Map<String, Object> returnMap = new HashMap<>();
	    returnMap.put("subject", kwamok);
	    returnMap.put("entry", test.get(kwamok));
	        
	    return returnMap;
	}
	    
	
}
