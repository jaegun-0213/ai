package javaApp1.ch12.sec04;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.xml.crypto.Data;

public class DataExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Date now = new Date();
		String strNow1 = now.toString();
		System.out.println(strNow1);
		
		SimpleDateFormat sdf = new SimpleDateFormat("YYYY.MM.dd.HH:mm:ss");
		String strnow2 = sdf.format(now);
		System.out.println(strnow2);
	}

}
