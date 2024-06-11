package com.example.test.controller;

import java.util.HashMap;
import java.util.Map;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
	
	@SuppressWarnings("unchecked")
	@GetMapping("/ajaxJavascriptAction")
	@ResponseBody
	public JSONObject getAjaxJavascript(@RequestParam(value="kwamok", required=false) String kwamok){
	    JSONObject resultObj = new JSONObject(); 
	    resultObj.put("국어", 85);
	    resultObj.put("수학", 70);
	    resultObj.put("영어", 86);
	    //System.out.println("1 : " + resultObj);

	    JSONObject returnObj = new JSONObject();
	    returnObj.put("subject", kwamok);
	    returnObj.put("entry", resultObj.get(kwamok));
	    //System.out.println("2 : " + returnObj);
	        
	    return returnObj;
	} 
	
	@SuppressWarnings("unchecked")
    @PostMapping("/ajaxJavascriptAction2")
	@ResponseBody
    public JSONObject postAjaxJavascript(@RequestParam(value="kwamok", required=false) String kwamok){
        JSONObject resultObj = new JSONObject();  
        resultObj.put("국어", 85);
        resultObj.put("수학", 70);
        resultObj.put("영어", 86);
        //System.out.println("1 : " + resultObj);

        JSONObject returnObj = new JSONObject();
        returnObj.put("subject", kwamok);
        returnObj.put("entry", resultObj.get(kwamok));
        System.out.println("2 : " + returnObj);
            
        return returnObj;
    }
	
	
    @RequestMapping(value={"/ajaxJqueryTest"})
    private ModelAndView ajaxJqueryTest(HttpServletRequest request, Model model) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("ajaxJqueryTest"); // 메인화면으로 이동
        return mv;
    }
	
	
	
	
	
	
}
