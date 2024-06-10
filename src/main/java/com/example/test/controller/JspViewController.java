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
    private ModelAndView javascriptTest(HttpServletRequest request, Model model) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("javascriptTest"); // 메인화면으로 이동
        return mv;
    }
	
	@RequestMapping(value={"/ajaxJavascript"})
    private ModelAndView ajaxJavascript(HttpServletRequest request, Model model) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("ajaxJavascript"); // 메인화면으로 이동
        return mv;
    }
	
	
}
