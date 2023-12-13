package javaBasic04.ch07.sec13;

public class CarEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//Car 梓端持失
		Car myCar = new Car();
		
		//Tire梓端持失
		myCar.tire = new Tire();
		myCar.run();
		
		myCar.tire = new HankookTire();
		myCar.run();
		
		myCar.tire = new KumhoTire();
		myCar.run();
		

	}

}
