package javaBAsic3.ch06.sec11;

public class CalculatorExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
		Calculator calculator = new Calculator();// 1단계 객체화를 한다 힙메모리에 몰리기.
		
		
		//메소드 호출
		calculator.poweron();
		calculator.poweroff();
		
		calculator.poweron();
		int result = calculator.plus(300, 500);
		System.out.println(result);
		
		//문제 -50 -20 더하기
		result = calculator.plus(-50, -100);
		System.out.println(result);
		//100,200,300, 더하기
		result = calculator.plus(100, 200);
		result = calculator.plus(result, 300);
		System.out.println(result);
		
		result = calculator.plus(100, 200, 300);
		System.out.println(result);
		
		
	}

}
