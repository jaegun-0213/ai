package javaBASIC6.ch09.sec04;

public class OutterExample2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}

class A{
	
	int ia = 10;
	void iM() {}
	static int aia = 20;
	static void siaM() {}
	
	static class B{
		// 외부 인스턴스 멤버 사용이 불가하다
		int ib = 20;
		void  ibM() {}
		static int sib = 20;
		static void siaM() {}
	}
}
