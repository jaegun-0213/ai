package javaBASIC7.ch11.sec01;

public class Exception3Ex {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
			try { 
			B b = new B();
			 b.b1();
			} catch (ArithmeticException e) {
				System.out.println(e.getMessage() + "오류");
			} finally {
				System.out.println("DB닫기");
				System.out.println("로그오프");
			}

	}

}

class B{
	void b1() throws ArithmeticException{
		b2();
	};
	void b2() throws ArithmeticException{
		int b = 10;
		b= b/5;
		System.out.println(b);
	};
}