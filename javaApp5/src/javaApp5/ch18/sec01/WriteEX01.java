package javaApp5.ch18.sec01;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class WriteEX01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		//출력 스트림
		try {
			OutputStream os= new FileOutputStream("D:\\ai\\study\\java_study\\date\\test2.txt");
			
			byte a = 10;
			byte b = 20;
			byte c = 30;
			
			byte[] bArr = {100,127, -127};
			os.write(a);
			os.write(b);
			os.write(c);
		
			os.write(bArr);
			
			os.flush(); // 버퍼메모리에 담긴 내용을 모두 출력하라
			os.close(); // 닫기 (파일 다용하는것)
			
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
