package com.example.test.sample;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.junit.jupiter.api.Test;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

class DataConvertTest {

	@Test
	void dataConvertSample() {
		/* 
		 Map 데이터를 JSON으로 변환하는 샘플
		 JSON데이터를 Map 데이터로 변환하는 샘플
		 JSONArray 데이터 샘플
		 Map 데이터 2개를 JSONArray로 변환하는 샘플
		*/
	    
	    //Map -> JSON
	    Map<String, Object> dataMap1 = new HashMap<>();
	    dataMap1.put("name", "DanB");
	    dataMap1.put("age", 16);
	    dataMap1.put("city", "Seoul");
	    
	    ObjectMapper objectMapper1 = new ObjectMapper();
	    
	    try {
	      String json1 = objectMapper1.writeValueAsString(dataMap1);
	      System.out.println(json1);
	    } catch(IOException e) {
	      e.printStackTrace();
	    }
	    
	    
	    
	    
	    
	    System.out.println("------------------------------------------------------------------------------------------------------");
	    
	    
	    
	    
	    
	    
	    
	    //JSON -> Map
	    String json2 = "{\"name\":\"Plus\",\"age\":10,\"city\":\"Gyeonggi\"}";
	    
	    ObjectMapper objectMapper2 = new ObjectMapper();
	    
	    try {
	      Map<String, Object> dataMap2 = objectMapper2.readValue(json2, new TypeReference<Map<String,Object>>(){});
	      System.out.println("name: " + dataMap2.get("name"));
          System.out.println("age: " + dataMap2.get("age"));
          System.out.println("city: " + dataMap2.get("city"));
	    } catch(IOException e) {
	      e.printStackTrace();
	    }
	    
	    
	    
	    
	    
	    System.out.println("------------------------------------------------------------------------------------------------------");
        
	    
	    
	    
	    
	    //JSONArray
	    
	    
	    
	  
	}
}
