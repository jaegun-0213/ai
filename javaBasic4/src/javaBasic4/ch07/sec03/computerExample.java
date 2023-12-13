package javaBasic4.ch07.sec03;

public class computerExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
	
		
		//부모클래스 객체 생성하기
		Calculator ca1 = new Calculator();
		System.out.println(ca1.areaCircle(10));  // 부모메소드 호출
		
		//자식 클래스 생성하기
		Computer com = new Computer();
		System.out.println(com.areaCircle(10));
	}

}
