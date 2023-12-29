package javaApp5.ch18.sec03;

import java.io.*;

public class fileEx01 {

	public static void main(String[] args) throws Exception{
		// TODO Auto-generated method stub
		
		 File dir = new File("D:\\ai\\study\\java_study\\date\\abc\\def");
		 File file1 = new File("D:\\\\ai\\\\study\\\\java_study\\\\date\\\file1.txt");
		 File file2 = new File("D:\\\\ai\\\\study\\\\java_study\\\\date\\\file2.txt");
		 File file3 = new File("D:\\\\ai\\\\study\\\\java_study\\\\date\\\file3.txt");

		 if ( dir.exists() == false) { dir.mkdirs(); } // 해당 경로에 없는 폴더(디렉토리)를 모두 만들어준다.
		 if (file1.exists() == false) {file1.createNewFile();}
		 if (file2.exists() == false) {file2.createNewFile();}
		 if (file3.exists() == false) {file3.createNewFile();}
	
	}

}
