package com.example.test.sample;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;
import org.junit.jupiter.api.Test;


class EchoServerTest {

	@Test
	void echoServerSample() {
		try(ServerSocket serverSocket = new ServerSocket(8888); //포트 8888에서 연결을 수락하는 서버 소켓을 생성
		    Socket socket = serverSocket.accept(); //클라이언트 연결 요청, 연결이 수락되면 클라이언트와의 소켓 연결을 생성
		    PrintWriter out = new PrintWriter(socket.getOutputStream()); //소켓의 출력 스트림을 PrintWriter로 초기화
		    BufferedReader br = new BufferedReader(new InputStreamReader(socket.getInputStream()))) { // 소켓의 입력 스트림을 BufferedReader로 초기화
  		      
    		    System.out.println("서버 대기중");
    		    while(true) {
    		      String msg = br.readLine(); //클라이언트로부터 메시지 읽어오기
    		      if(msg.equalsIgnoreCase("Quite"))
    		        break;
    		      System.out.println("클라이언트에서 보냄 : [ " + msg + " ]");
    		      out.println(msg); //클라이언트에게 받은 메시지 그대로 보내기
    		      out.flush(); //출력 버퍼를 비워 실제 데이터 전송
    		    }
    		    System.out.println("서버종료");
		    
		} catch (IOException e){
		      e.printStackTrace();
		    }
	}
}
