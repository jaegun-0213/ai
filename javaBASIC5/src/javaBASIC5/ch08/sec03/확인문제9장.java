package javaBASIC5.ch08.sec03;

public class 확인문제9장 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		//A a = new  A(); 객체화 할 수 없다
		// 인터페이스를 구현하려면 클래스를 구현해서 이용해야한다.
		AImpl a = new AImpl();
		Driver d = new Driver();
		d.a = new AImpl();
		d.driver(a);
		BB bb = new BB();
		B b = new BB(); //자동형변환
		BB bb2 = (BB) new B(); //강제형변환
		b.aM();
		//b.bM(); 사용불가
		bb2.aM();
		bb2.bM();
	}

}
class Driver{
	A a;
	void driver (A a) {
		a.aM();
	}
}
class B{
	int a = 10;
	void aM () {
		System.out.println(a);
	}
 }

class BB extends B{
	int b=20;
	void bM() {
		System.out.println(b);
	}
}






interface A{ //인터페이스
	//상수
	static final int a =10;
	abstract void aM(); //추상메소드
	default void dM() {} //디폴트 메소드 오버라이드 할 수 있다
	static void sM() {} //정적 메소드
}

class AImpl implements A{ //구현클래스

	@Override
	public void aM() {
		System.out.println(a);
		
	
		
	}
	
}