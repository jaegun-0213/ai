package javaApp5.ch18.sec01;

import java.io.*;

public class DataInputSrteamEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		// 기본타입으로 입출력하도록 도와주는 보조스트림
		
		try {
			OutputStream os = new FileOutputStream("D:\\ai\\study\\java_study\\date\\p.db");
			DataOutputStream dos= new DataOutputStream(os);
			
			dos.writeUTF("홍길동"); // 한글을 저장하려고
			dos.writeDouble(95.5);
			dos.write(1);
			
			dos.writeUTF("김자바");
			dos.writeDouble(90.3);
			dos.write(2);
			
			dos.flush();
			dos.close();
			
			InputStream is = new FileInputStream("D:\\ai\\study\\java_study\\date\\p.db");
			BufferedInputStream bis = new BufferedInputStream(is);
			DataInputStream dis= new DataInputStream(bis);
			
			String name = dis.readUTF(); // 한글로 저장된거를 읽어오세요
			double score = dis.readDouble();
			int no = dis.read();
			System.out.println(name + "  " + score + "  " + no);
			
			name = dis.readUTF(); // 한글로 저장된거를 읽어오세요
			score = dis.readDouble();
			no = dis.read();
			System.out.println(name + "  " + score + "  " + no);
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
