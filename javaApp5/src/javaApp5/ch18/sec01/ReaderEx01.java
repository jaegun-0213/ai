package javaApp5.ch18.sec01;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class ReaderEx01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//�Է½�Ʈ��
		try {
			InputStream is = new FileInputStream("D:\\ai\\study\\java_study\\date\\���۵�.jpeg");
			OutputStream os = new FileOutputStream("D:\\ai\\study\\java_study\\date\\���۵�_copy.jpeg");
			
			byte[] bArr = new byte[100]; // 100����Ʈ�� �迭�� �������
			byte[] wArr = new byte[100];
			while(true) {
				int date = is.read(); // 1byte�� �д´�
				if (date == -1)	break;		// -1�� ������ ���̶�� �ǹ�
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
