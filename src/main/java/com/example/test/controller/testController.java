package com.example.test.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.json.simple.JSONObject;



public class testController {
	
  public static void main(String[] args) {
    
    //Array
    String[] arr = {"사과","귤","포도","복숭아","참외"};
  
    System.out.print("arr : " + arr);
    
    
    //List
    List<String> list = new ArrayList<>();
    list.add("나신영");
    list.add("단비플러스");
    
    System.out.println("list : " + list);
    
    
    //Map
    Map<String, String> map = new HashMap<>();
    map.put("name", "나신영");
    map.put("age", "27");
    map.put("address", "부천");
    
    System.out.println("map : " + map);
    
    
    //vector
    Vector<Integer> vec = new Vector<>();
    vec.add(1);
    vec.add(2);
    vec.add(3);
    
    System.out.println("vec : " + vec);
    
    
    //json
    JSONObject obj = new JSONObject();
    obj.put("name", "나신영");
    obj.put("company", "단비플러스");
    obj.put("age", "27");
    
    System.out.println("obj : " + obj);
    
    
    //xml

    
    
    
    
    
    
    
    
    
  }
  
  
	
	
}
