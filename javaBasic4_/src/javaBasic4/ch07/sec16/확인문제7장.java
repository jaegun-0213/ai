package javabasic4.ch07.sec16;

public class 확인문제7장 {

	
	public static void action(A a) {
		a.methond1();
		if ( a instanceof C) {
			((C) a).methond2();
		}
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		// 10번 답 : 추상클래스를 상속받았으니까 추상 메소드를 재정의해야한다
		
		MainMainActvity m = new MainMainActvity();
		m.onCreate();
		
		// 11번
		action(new A());
		action(new B());
		action(new C());

	}

}
