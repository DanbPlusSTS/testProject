package com.example.test.sample;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;
import org.junit.jupiter.api.Test;


class EchoClientTest {

	@Test
	void echoClientSample() throws IOException {
		Socket socket = new Socket("localhost",8888); //소켓 연결
		PrintWriter out = new PrintWriter(socket.getOutputStream()); //소켓 출력 스트림 PrintWriter로 초기화
		BufferedReader networkIn = new BufferedReader(new InputStreamReader(socket.getInputStream())); //소켓 입력 스트림 BufferedReader로 초기화
		BufferedReader userIn = new BufferedReader(new InputStreamReader(System.in)); //사용자 입력 BufferedReader로 초기화
        System.out.println("클라이언트 입장");
        
        while(true) {
          System.out.print("입력하세요 : ");
          String theLine = userIn.readLine();
          out.println(theLine); //입력 내용 서버 전송
          out.flush(); //버퍼에 남아있는 데이터 출력
          if(theLine.equalsIgnoreCase("Quit"))
            break;
          System.out.println("서버에서 보냄 : [ " + networkIn.readLine() + " ]");
        }
        System.out.println("클라이언트 끝");
        networkIn.close(); //입력 스트림 종료
        out.close(); //출력 스트림 종료
        socket.close(); //소켓 종료
	  
	}
}
