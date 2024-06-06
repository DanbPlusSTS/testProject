package com.example.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import jakarta.servlet.http.HttpServletRequest;

@Controller
public class JspViewController {
	@RequestMapping(value={"/" , "/index"})
    private ModelAndView main(HttpServletRequest request, Model model) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("test"); // 메인화면으로 이동
		return mv;
    }
	
}
