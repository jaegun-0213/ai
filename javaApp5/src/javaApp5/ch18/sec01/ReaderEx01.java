package javaApp5.ch18.sec01;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class ReaderEx01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//입력스트림
		try {
			InputStream is = new FileInputStream("D:\\ai\\study\\java_study\\date\\셰퍼드.jpeg");
			OutputStream os = new FileOutputStream("D:\\ai\\study\\java_study\\date\\셰퍼드_copy.jpeg");
			
			byte[] bArr = new byte[100]; // 100바이트의 배열이 만들어짐
			byte[] wArr = new byte[100];
			while(true) {
				int date = is.read(); // 1byte씩 읽는다
				if (date == -1)	break;		// -1은 데이터 끝이라는 의미
					os.write(date);
			}
			os.flush();
			os.close();
			is.close();
			
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
