package javaBasic04.ch07.sec13;

public class CarEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//Car ��ü����
		Car myCar = new Car();
		
		//Tire��ü����
		myCar.tire = new Tire();
		myCar.run();
		
		myCar.tire = new HankookTire();
		myCar.run();
		
		myCar.tire = new KumhoTire();
		myCar.run();
		

	}

}
