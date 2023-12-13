package javaBasic4.ch07.sec06;

public class snowTireExample {

	public static void main(String[] args) {
		SonwTire sonwTire = new SonwTire();
		Tire tire = sonwTire;
		
		
		sonwTire.run();
		tire.run(); // 다형성 문제  

	}

}
