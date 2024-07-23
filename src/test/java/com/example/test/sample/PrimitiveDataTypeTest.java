package com.example.test.sample;

import java.util.Arrays;
import org.junit.jupiter.api.Test;

class PrimitiveDataTypeTest {

	@Test
	void primitiveDataType() {
		//기본 자료형 변수 샘플 작성후 로그로 출력해보기.
		//로그는 System.out.println 로그로 출력하세요.
	  
	  //byte
	  byte a = 1;
	  System.out.println("byte : " + a);
	  System.out.println("byte 크기 : " + Byte.SIZE);
	  
	  //short
	  short b = 22222;
	  System.out.println("short : " + b);
	  System.out.println("short 크기 : " + Short.SIZE);
	  
	  //int
	  int c = 333333333;
	  System.out.println("int : " + c);
	  System.out.println("int 크기 : " + Integer.SIZE);
	  
	  //long
	  long d = 4444444444444444444L;
	  System.out.println("long : " + d);
	  System.out.println("long 크기 : " + Long.SIZE);
	  
	  //float
	  float e = 5.555555f;
	  System.out.println("float : " + e);
	  System.out.println("float 크기 : " + Float.SIZE);
	  
	  //double
	  double f = 6.666666666666666;
	  System.out.println("double : " + f);
	  System.out.println("double 크기 : " + Double.SIZE);
	  
	  //char
	  char g = 'A';
	  System.out.println("char : " + g);
	  System.out.println("char 크기 : " + Character.SIZE);
	  
	  //boolean
	  boolean h = true;
	  System.out.println("boolean : " + h);
	  System.out.println("boolean 크기는 따로 구할 수 없음 ");
	  
	}
}
