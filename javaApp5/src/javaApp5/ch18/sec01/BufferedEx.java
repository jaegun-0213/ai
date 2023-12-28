package javaApp5.ch18.sec01;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class BufferedEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		// ������� ������ �����ְ���� ��� ���۵� ���� ��Ʈ�� Ŭ������ ����Ѵ�
		
		try {
			// ��) ��Ʈ��
			InputStream is = new FileInputStream("D:\\ai\\study\\java_study\\date\\test3.txt");
			BufferedInputStream bis = new BufferedInputStream(is); // ������Ʈ��
			
			OutputStream os = new FileOutputStream("D:\\ai\\study\\java_study\\date\\test3.txt");
			BufferedOutputStream  bos = new BufferedOutputStream(os);
			
			 long starTime = System.nanoTime();
			 
			while(true) {
				int data = bis.read();
				if (data == -1) break;
				bos.write(data);
				
				bos.flush();
				
				long stopTime = System.nanoTime();
				
				bos.close();
				os.close();
				bis.close();
				is.close();
				
				System.out.println("���� �а� ���µ� �ɸ� �ð��� ? (������)" + ( stopTime - starTime) );
			}
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
