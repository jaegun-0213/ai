package javaBASIC6.ch09.sec01;

public class AExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		A a = new A();
		a.aM();
		A.sa = 2000;
		A.saM();
		
		 A.B ab = a.new B(); // A.B AŬ������ �Ӿȿ� �ִ� BŬ����
		 ab.b = 300;
		 ab.bM();
	}

}

class A {
	int a=10;
	void  aM() {
		System.out.println(a);
		// b=b+100; ����Ŭ������ ������ ����� �� ����
	}
	static int sa = 200; //�������
	static void saM() {
		System.out.println( sa);
	}
	
	class B {
		// a = a + 100; ���� �޼ҵ� �ȿ� �޼ҽ�ȣ�� ����� �ؾ��� Ŭ������ �ٷ� ����� �־�� �ȵ�
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
