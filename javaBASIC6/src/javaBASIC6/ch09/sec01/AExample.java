package javaBASIC6.ch09.sec01;

public class AExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		A a = new A();
		a.aM();
		A.sa = 2000;
		A.saM();
		
		 A.B ab = a.new B(); // A.B A클래스에 속안에 있는 B클래스
		 ab.b = 300;
		 ab.bM();
	}

}

class A {
	int a=10;
	void  aM() {
		System.out.println(a);
		// b=b+100; 내부클래스의 변수를 사용할 수 없다
	}
	static int sa = 200; //정적멤버
	static void saM() {
		System.out.println( sa);
	}
	
	class B {
		// a = a + 100; 에러 메소드 안에 메소스호출 명령을 해야함 클래스에 바로 명령을 주어서는 안됨
		//aM();
		int b=20;
		void bM() {
			a = a +100;
			aM();
			System.out.println(b);
		}
		//static int sb = 200;
		//static void sbM() {}
	}
}
