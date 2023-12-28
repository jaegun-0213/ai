package javaApp5.ch18.sec02;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;

public class ObjectStreamEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		// 멤버클래스의 형태를 스트림으로 만들어서 외부로 보내기
		try {
			OutputStream os = new FileOutputStream("D:\\ai\\study\\java_study\\date\\member.dat");
			BufferedOutputStream bos= new BufferedOutputStream(os);
			ObjectOutputStream oos = new ObjectOutputStream(bos); // 객체를 스트림으로 만드는 보조스트림
			
			 
			Member m1 = new Member("fall", "단풍이", 10);
			
			oos.writeObject(m1);
			oos.flush();
			oos.close();
			
			// 외부 파일을 읽고
			InputStream is = new FileInputStream("D:\\ai\\study\\java_study\\date\\member.dat");
			// 성능(속도)를 향상 시키고
			BufferedInputStream bis= new BufferedInputStream(is);
			//스트림을 객체 만들고
			ObjectInputStream ois = new ObjectInputStream(bis); // 객체를 스트림으로 만드는 보조스트림
			// 읽어와서
			Member iM = (Member) ois.readObject();
			// 출력해보기
			System.out.println(iM);
			 
		} catch (IOException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}

class Member implements Serializable{
	
	String id;
	String name;
	int age;
	
	public Member(String id, String name, int age) {
		super();
		this.id = id;
		this.name = name;
		this.age = age;
		
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return id + " " + name + " " + age;
	}
}
