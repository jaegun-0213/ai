package javaApp2.ch15.sec05;

import java.io.IOException;
import java.util.Properties;

public class PropertiesEx {

	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub
		
		Properties properties = new Properties();
		
		properties.load(Properties.class.getResourceAsStream("database.properties"));
		
		System.out.println(properties.getProperty("driver"));
	}

}
