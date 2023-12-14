package javabasic4.ch07.sec15;

public class PhonExample {

	public static void main(String[] args) {
	Play play = new Play();
	
	 SmartPhon s = new SmartPhon();
	 play.Playing(s);
	 play.Stop(s);
	 
	  Iphon i = new Iphon();
	  play.Playing(i);
	  play.Stop(i);
	  
	  // Phon phon = new Phon() {} //추상클래스를 객체화 할 수 없다

}
	}
