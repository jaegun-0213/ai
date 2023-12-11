package javaBAsic3.ch06.sec11;

public class Calculator {

	
	// 메소드 동작 ~한다, ~하기 웃기, 잠자기, 놀기, 계산하기
	// 형식 [접근제한다] 리턴타임 메소드명 ( [ 매개변수 ...] ) {}
	// 형식에서 {} 생략가능 ... 여러개
	
	void poweron() {
		System.out.println("전원을 켭니다.");
	}
	
	void poweroff () {
		System.out.println("전원을 끕니다");
	}
	
	int plus(int x, int y) {
		int resuilt = x+y;
		return resuilt; // 리턴은 메소드를 호출한 곳으로 변수 값을 되돌려주어라
	}
	int plus(int x, int y, int c) {
		int result = x+y+c;
		return result; 
	}
	
	double divide (int x, int y) {
		double resuilt = (double) x / (double) y;
		return resuilt;
	}
}
