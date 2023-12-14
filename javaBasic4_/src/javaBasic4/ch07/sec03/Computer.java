package javaBasic4.ch07.sec03;

// 자식 클래스
public class Computer extends Calculator {

	@Override
	public double areaCircle(double r) { //부모의 메소드를 자식이 고쳐쓴다
		System.out.println("Computer 객체의 areaCircle() 실행");
		return 2 * 3.14 * r; // 원둘레 구하기
	}
}
