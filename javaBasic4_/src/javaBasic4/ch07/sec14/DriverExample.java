package javabasic4.ch07.sec14;

public class DriverExample {

	public static void main(String[] args) {
		 Driver driver = new Driver();
		 
		 Bus bus = new Bus();
		 driver.driver(bus);
		 
		 Taxi taxi = new Taxi();
		 driver.driver(taxi);
		 
		 System.out.println(bus instanceof Bus);
		 System.out.println(taxi instanceof Taxi); // 택시라는 참조변수로 택시라는 객체를 참조(연결) 가능
		 System.out.println(taxi instanceof Vehicle);

	}

}
