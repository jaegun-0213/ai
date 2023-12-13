package javaBasic4.ch07.sec04;

public class AirplaneEX{

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		SupersonicAirplane sa = new SupersonicAirplane();
		sa.takeOff();
		sa.fly();
		sa.flyMode = SupersonicAirplane.SUPERSONIC;
		sa.fly();
		sa.flyMode = SupersonicAirplane.NORMAL;
		sa.fly();
		sa.flyMode = SupersonicAirplane.ROUND;
		sa.fly();
		sa.flyMode = SupersonicAirplane.SLOW;
		sa.land();
		
	}

}
